package ui

import (
	"crypto/sha256"
	"fmt"
	"github.com/therecipe/qt/core"
	"github.com/therecipe/qt/quick"
	"io"
	"log"
	"os"
)

type LoginUI struct {
	UI            *quick.QQuickWidget
	ContextObject *LoginCtx
}

type LoginCtx struct {
	core.QObject

	_ string `property:"remote"`
	_ string `property:"transport"`
	_ string `property:"endpoint"`
	_ string `property:"gopath"`
	_ string `property:"binaryHash"`
	_ bool   `property:"isValid"`

	_ func()         `signal:"clicked,auto"`
	_ func(b string) `signal:"edited,auto"`

	answer       int
	ClefUI       *ClefUI
	ReadyToStart chan string
}

func (t *LoginCtx) clicked() {
	if !t.IsValid() {
		return
	}
	gopath := t.Gopath()
	t.ReadyToStart <- gopath
}

func (t *LoginCtx) edited(clefbin string) {
	// TODO!
	// Remember where the binary was 'last' time, and reuse that location
	t.SetGopath(clefbin)

	f, err := os.Open(clefbin)
	if err != nil {
		t.SetBinaryHash(err.Error())
		t.SetIsValid(false)
		log.Println(err)
		return
	}
	defer f.Close()

	h := sha256.New()
	if _, err := io.Copy(h, f); err != nil {
		t.SetBinaryHash(err.Error())
		t.SetIsValid(false)
		log.Println(err)
		return
	}

	binaryHash := fmt.Sprintf("%x", h.Sum(nil))
	t.SetBinaryHash(binaryHash)
	t.SetIsValid(len(binaryHash) > 0)
}

func (t *LoginCtx) Reset() {
	t.answer = 0
	t.SetRemote("")
	t.SetTransport("")
	t.SetEndpoint("")
	t.SetGopath("")
	t.SetBinaryHash("")
	t.SetIsValid(false)
	t.ClefUI.BackToMain <- true
}

func NewLoginUI(clefUi *ClefUI, readyToStart chan string) *LoginUI {

	c := NewLoginCtx(nil)
	c.ReadyToStart = readyToStart

	widget := quick.NewQQuickWidget(nil)
	widget.RootContext().SetContextProperty("ctxObject", c)
	widget.SetSource(core.NewQUrl3("qrc:/qml/login.qml", 0))
	c.ClefUI = clefUi
	v := &LoginUI{
		UI:            widget,
		ContextObject: c,
	}
	widget.SetResizeMode(quick.QQuickWidget__SizeRootObjectToView)
	widget.Show()
	return v
}
