import QtQuick 2.4
import QtQuick.Controls 2.3
import QtQuick.Controls.Private 1.0
import QtQuick.Dialogs 1.3

Item {
    id: approvetx
    width: 400
    height: 680

    function setUnit(field, unitIndex) {
        switch(field) {
        case "VALUE":
            ctxObjectApproveTx.changeValueUnit(unitIndex)
            return;
        case "GAS_PRICE":
            ctxObjectApproveTx.changeGasPriceUnit(unitIndex)
            return;
        }
    }

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 400
        height: 680
        color: "#ffffff"

        Headerfield {
            id: rect_header
            x: 0
            y: 0
        }

        Rectangle {
            id: rectangle11
            x: 0
            y: 70
            width: 400
            height: 46
            color: "#00000000"

            Text {
                id: text6
                x: 12
                y: 4
                height: 10
                text: qsTr("From")
                font.capitalization: Font.AllUppercase
                font.bold: false
                font.family: "Verdana"
                font.pixelSize: 10
                color: "#747474"
            }

            Rectangle {
                id: rectangle5
                x: 8
                y: 18
                width: 342
                height: 24
                color: ctxObjectApproveTx.fromVisible ? "#fff1b7" : "#efefef"
                radius: 2
                border.width: 1
                border.color: ctxObjectApproveTx.fromVisible ? "#ffda3f" : "#efefef"
                TextInput {
                    id: textInput
                    x: 4
                    y: 7
                    width: parent.width - 8
                    height: parent.height - 12
                    text: ctxObjectApproveTx.from
                    font.family: "Courier"
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignHCenter
                    font.pixelSize: 12
                    onTextChanged: ctxObjectApproveTx.edited("from", text)
                }
            }

            Image {
                id: image
                x: 356
                y: 6
                width: 36
                height: 36
                fillMode: Image.Stretch
                source: ctxObjectApproveTx.fromSrc
                //                source: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAaQAAAGkCAMAAABJkqEHAAAABlBMVEXw8PAt1X4FwF7+AAAFW0lEQVR4nOzcsZUgKRBEwTv/nV59Xyvs8Cg+E+FAVpIt938AAAAAAAAAAAAAAAAAAPzU/wdMd/wWah46dbNQ89Cpm4Wah07dLNQ8dOpmoeahUzcLNQ+dulmoeejUzULNQ6duFmoeOnWzUPPQqZuFmodO3SzUPHTqZqHmoVM3CzUPnbpZqHno1M1CzUOnbhZqHjp1s1Dz0KmbhZqHTt0s1Dx06mah5qFTNws1D526Wah56NTNQs1Dp24Wah46dbNQ89Cpm4Wah07dLNQ8dOpmoeahUzcLNQ+dulmoeejUzULNQ6duFmoeOnWzUPPQqZuFmodO3SzUPHTqZqHmoVM3CzUPnbpZqHno1M1CzUOnbhZqHjp1s1Dz0KmbhZqHTt0s1Dx06mah5qFTNws1D526Wah56NTNQs1Dp24Wah46dbNQ8xOn/l5GCjBSgJECjBRgpAAjBRgpwEgBRgowUoCRAowUYKQAIwUYKcBIAUYKMFKAkQKMFGCkACMFGCnASAFGCjBSgJECjBRgpAAjBRgpwEgBRgowUoCRAowUYKQAIwUYKcBIAUYKMFKAkQKMFGCkACMFGCnASAFGChgb6ZUP4c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcCAAAAAAAAAAAAAAAAAAAAAAAAAIC/+PVmgJECjBRgpAAjBRgpwEgBRgowUoCRAowUYKQAIwUYKcBIAUYKMFKAkQKMFGCkACMFGCnASAFGCjBSgJECjBRgpAAjBRgpwEgBRgowUoCRAowUYKQAIwUYKcBIAUYKMFKAkQKMFGCkACMFGCnASAFGCjBSgJF+aL3cCb+3x9Plpi/+ZqQnezxdbvrib0Z6ssfT5aYv/makJ3s8XW764m9GerLH0+WmL/5mpCd7PF1u+uJvRnqyx9Plpi/+ZqQnezxdbvrib0Z6ssfT5aYv/makJ3s8XW764m9GerLH0+WmL/5mpCd7PF1u+uJvRnqyx9Plpi/+ZqQnezxdbvrib0Z6ssfT5aYv/makJ3s8XW764m9GerLH0+WmL/5mpCd7PF1u+uJvRnqyx9Plpi/+ZqQnezxdbvrib0Z6ssfT5aYv/makJ3s8XW764m9GerLH0+WmL/5mpCd7PF1u+uJvRnqyx9Plpi/+tmmkE06Ue/oBTzBSgJECjBRgpAAjBRgpwEgBRgowUoCRAowUYKQAIwUYKcBIAUYKMFKAkQKMFGCkACMFGCnASAFGCjBSgJECjBRgpAAjBRgpwEgBRgowUoCRAowUYKQAIwUYKcBIAUYKMFKAkQKMFGCkACMFGCnASAFGCjASAAAAAAAAAAAAAAAAAAD/6k8AAAD//6Wc/enO7LAAAAAAAElFTkSuQmCC"
            }

            Image {
                id: image1
                x: 356
                y: 58
                width: 36
                height: 36
                source: ctxObjectApproveTx.toSrc
                //                source: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAaQAAAGkCAMAAABJkqEHAAAABlBMVEXw8PAt1X4FwF7+AAAFW0lEQVR4nOzcsZUgKRBEwTv/nV59Xyvs8Cg+E+FAVpIt938AAAAAAAAAAAAAAAAAAPzU/wdMd/wWah46dbNQ89Cpm4Wah07dLNQ8dOpmoeahUzcLNQ+dulmoeejUzULNQ6duFmoeOnWzUPPQqZuFmodO3SzUPHTqZqHmoVM3CzUPnbpZqHno1M1CzUOnbhZqHjp1s1Dz0KmbhZqHTt0s1Dx06mah5qFTNws1D526Wah56NTNQs1Dp24Wah46dbNQ89Cpm4Wah07dLNQ8dOpmoeahUzcLNQ+dulmoeejUzULNQ6duFmoeOnWzUPPQqZuFmodO3SzUPHTqZqHmoVM3CzUPnbpZqHno1M1CzUOnbhZqHjp1s1Dz0KmbhZqHTt0s1Dx06mah5qFTNws1D526Wah56NTNQs1Dp24Wah46dbNQ8xOn/l5GCjBSgJECjBRgpAAjBRgpwEgBRgowUoCRAowUYKQAIwUYKcBIAUYKMFKAkQKMFGCkACMFGCnASAFGCjBSgJECjBRgpAAjBRgpwEgBRgowUoCRAowUYKQAIwUYKcBIAUYKMFKAkQKMFGCkACMFGCnASAFGChgb6ZUP4c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcaC17POOHOtxoLXs844c63GgtezzjhzrcCAAAAAAAAAAAAAAAAAAAAAAAAAIC/+PVmgJECjBRgpAAjBRgpwEgBRgowUoCRAowUYKQAIwUYKcBIAUYKMFKAkQKMFGCkACMFGCnASAFGCjBSgJECjBRgpAAjBRgpwEgBRgowUoCRAowUYKQAIwUYKcBIAUYKMFKAkQKMFGCkACMFGCnASAFGCjBSgJF+aL3cCb+3x9Plpi/+ZqQnezxdbvrib0Z6ssfT5aYv/makJ3s8XW764m9GerLH0+WmL/5mpCd7PF1u+uJvRnqyx9Plpi/+ZqQnezxdbvrib0Z6ssfT5aYv/makJ3s8XW764m9GerLH0+WmL/5mpCd7PF1u+uJvRnqyx9Plpi/+ZqQnezxdbvrib0Z6ssfT5aYv/makJ3s8XW764m9GerLH0+WmL/5mpCd7PF1u+uJvRnqyx9Plpi/+ZqQnezxdbvrib0Z6ssfT5aYv/makJ3s8XW764m9GerLH0+WmL/5mpCd7PF1u+uJvRnqyx9Plpi/+tmmkE06Ue/oBTzBSgJECjBRgpAAjBRgpwEgBRgowUoCRAowUYKQAIwUYKcBIAUYKMFKAkQKMFGCkACMFGCnASAFGCjBSgJECjBRgpAAjBRgpwEgBRgowUoCRAowUYKQAIwUYKcBIAUYKMFKAkQKMFGCkACMFGCnASAFGCjASAAAAAAAAAAAAAAAAAAD/6k8AAAD//6Wc/enO7LAAAAAAAElFTkSuQmCC"
                fillMode: Image.Stretch
            }

            Text {
                id: text4
                x: 47
                y: 6
                width: 303
                height: 10
                color: "#e4b409"
                text: ctxObjectApproveTx.fromWarning
                horizontalAlignment: Text.AlignRight
                font.capitalization: Font.AllUppercase
                font.family: "Verdana"
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 10
            }

            Text {
                id: text5
                x: 47
                y: 58
                width: 303
                height: 10
                text: ctxObjectApproveTx.toWarning
                color: "#e4b409"
                font.family: "Verdana"
                verticalAlignment: Text.AlignVCenter
                font.capitalization: Font.AllUppercase
                font.pixelSize: 10
                horizontalAlignment: Text.AlignRight
            }
        }

        Footer {
            id: row_footer
            x: 0
            y: 625
            onApprove: {
                ctxObjectApproveTx.approve()
            }
            onReject: {
                ctxObjectApproveTx.reject()
            }
        }

        Rectangle {
            id: rectangle12
            x: 0
            y: 122
            width: 400
            height: 46
            color: "#00000000"
            Text {
                id: text7
                x: 12
                y: 4
                height: 10
                color: "#747474"
                text: qsTr("To")
                font.pixelSize: 10
                font.bold: false
                font.family: "Verdana"
                font.capitalization: Font.AllUppercase
            }

            Rectangle {
                id: rectangle6
                x: 8
                y: 18
                width: 342
                height: 24
                //                color: ctxObject.toInputBgColor
                color: ctxObjectApproveTx.toVisible ? "#fff1b7" : "#efefef"
                radius: 2
                border.width: 1
                //                border.color: ctxObject.toInputBorderColor
                border.color: ctxObjectApproveTx.toVisible ? "#ffda3f" : "#efefef"
                TextInput {
                    id: textInput1
                    x: 4
                    y: 7
                    width: parent.width - 8
                    height: parent.height - 12
                    text: ctxObjectApproveTx.to
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignLeft
                    font.family: "Courier"
                    verticalAlignment: Text.AlignHCenter
                    onTextChanged: ctxObjectApproveTx.edited("to", text)
                }
            }
        }

        Rectangle {
            id: rectangle13
            x: 0
            y: 174
            width: 400
            height: 46
            color: "#00000000"
            Text {
                id: text8
                x: 12
                y: 4
                height: 10
                color: "#747474"
                text: qsTr("Value")
                font.bold: false
                font.pixelSize: 10
                font.family: "Verdana"
                font.capitalization: Font.AllUppercase
            }

            Rectangle {
                id: rectangle7
                x: 8
                y: 18
                width: 384
                height: 24
                color: "#efefef"
                radius: 2
                TextInput {
                    id: textInput2
                    x: 4
                    y: 7
                    width: parent.width - 8
                    height: parent.height - 12
                    text: ctxObjectApproveTx.value
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignLeft
                    font.family: "Courier"
                    verticalAlignment: Text.AlignHCenter
                    onTextChanged: ctxObjectApproveTx.edited("value", text)
                }

                ComboBox {
                    id: comboBox
                    x: 271
                    y: 0
                    width: 112
                    height: 24
                    spacing: -3
                    rightPadding: 0
                    font.pointSize: 13
                    font.bold: true
                    font.family: "Verdana"
                    currentIndex: 2

                    model: ListModel {
                        ListElement { text: "WEI" }
                        ListElement { text: "GWEI" }
                        ListElement { text: "ETH" }
                    }

                    onCurrentIndexChanged: approvetx.setUnit("VALUE", currentIndex)

                    background: Rectangle {
                        x:0
                        y:0
                        width: parent.width
                        height:parent.height
                        color: "#efefef"
                        radius: 0
                        border.color: "#393939"
                        border.width: 0
                    }
                }

                Rectangle {
                    id: rectangle24
                    x: 271
                    y: 0
                    width: 1
                    height: 24
                    color: "#d9d9d9"
                }
            }
        }

        Rectangle {
            id: rectangle14
            x: 0
            y: 278
            width: 400
            height: 46
            color: "#00000000"
            Text {
                id: text9
                x: 12
                y: 4
                height: 10
                color: "#747474"
                text: qsTr("Gas")
                font.pixelSize: 10
                font.bold: false
                font.family: "Verdana"
                font.capitalization: Font.AllUppercase
            }

            Rectangle {
                id: rectangle9
                x: 8
                y: 18
                width: 384
                height: 24
                color: "#efefef"
                radius: 2
                TextInput {
                    id: textInput3
                    x: 4
                    y: 7
                    width: parent.width - 8
                    height: parent.height - 12
                    text: ctxObjectApproveTx.gas
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignLeft
                    font.family: "Courier"
                    verticalAlignment: Text.AlignHCenter
                    onTextChanged: ctxObjectApproveTx.edited("gas", text)
                }
            }
        }

        Rectangle {
            id: rectangle15
            x: 0
            y: 226
            width: 400
            height: 46
            color: "#00000000"
            Text {
                id: text10
                x: 12
                y: 4
                height: 10
                color: "#747474"
                text: qsTr("Gas Price")
                font.bold: false
                font.pixelSize: 10
                font.family: "Verdana"
                font.capitalization: Font.AllUppercase
            }

            Rectangle {
                id: rectangle18
                x: 8
                y: 18
                width: 384
                height: 24
                color: "#efefef"
                radius: 2
                TextInput {
                    id: textInput4
                    x: 4
                    y: 7
                    width: parent.width - 8
                    height: parent.height - 12
                    text: ctxObjectApproveTx.gasPrice
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignLeft
                    font.family: "Courier"
                    verticalAlignment: Text.AlignHCenter
                    onTextChanged: ctxObjectApproveTx.edited("gasPrice", text)
                }
                ComboBox {
                    x: 271
                    y: 0
                    width: 112
                    height: 24
                    spacing: -3
                    rightPadding: 0
                    font.pointSize: 13
                    font.bold: true
                    font.family: "Verdana"
                    currentIndex: 1

                    model: ListModel {
                        ListElement { text: "WEI" }
                        ListElement { text: "GWEI" }
                        ListElement { text: "ETH" }
                    }

                    onCurrentIndexChanged: approvetx.setUnit("GAS_PRICE", currentIndex)

                    background: Rectangle {
                        x:0
                        y:0
                        width: parent.width
                        height:parent.height
                        color: "#efefef"
                        radius: 0
                        border.color: "#393939"
                        border.width: 0
                    }
                }

                Rectangle {
                    x: 271
                    y: 0
                    width: 1
                    height: 24
                    color: "#d9d9d9"
                }
            }
        }

        Rectangle {
            id: rectangle19
            x: 0
            y: 330
            width: 400
            height: 46
            color: "#00000000"
            Text {
                id: text11
                x: 12
                y: 4
                height: 10
                color: "#747474"
                text: qsTr("Nonce")
                font.pixelSize: 10
                font.bold: false
                font.family: "Verdana"
                font.capitalization: Font.AllUppercase
            }

            Rectangle {
                id: rectangle20
                x: 8
                y: 18
                width: 384
                height: 24
                color: "#efefef"
                radius: 2
                TextInput {
                    id: textInput5
                    x: 4
                    y: 7
                    width: parent.width - 8
                    height: parent.height - 12
                    text: ctxObjectApproveTx.nonce
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignLeft
                    font.family: "Courier"
                    verticalAlignment: Text.AlignHCenter
                    onTextChanged: ctxObjectApproveTx.edited("nonce", text)
                }
            }
        }

        Rectangle {
            id: rectangle21
            x: 0
            y: 382
            width: 400
            height: 207
            color: "#00000000"
            Text {
                id: text14
                x: 12
                y: 4
                height: 10
                color: "#747474"
                text: qsTr("Data")
                font.bold: false
                font.pixelSize: 10
                font.family: "Verdana"
                font.capitalization: Font.AllUppercase
            }

            Rectangle {
                id: rectangle22
                x: 8
                y: 20
                width: 384
                height: 181
                color: "#efefef"
                radius: 2

                TextArea {
                    id: textArea
                    x: -4
                    y: 0
                    width: parent.width + 4
                    height: parent.height
                    text: ctxObjectApproveTx.data
                    font.pointSize: 12
                    font.family: "Courier"
                    onTextChanged: ctxObjectApproveTx.edited("data", text)
                }
            }
        }


    }

    Rectangle {
        id: diffModal
        x: 0
        y: 0
        width: 400
        height: 680
        color: "#00000000"
        opacity: 0.5
        visible: false

        states: [
            State {
                name: "show"
                PropertyChanges { target: diffModal; opacity: 1; visible: true}
            },
            State {
                name: "hide"
                PropertyChanges { target: diffModal; opacity: 0.5; visible: false}
            }
        ]

        transitions: Transition {
            NumberAnimation {
                duration: 150
                properties: "opacity"
            }
        }


        Rectangle {
            id: diffModalBg
            x: 0
            y: 0
            width: 400
            height: 680
            color: "#000000"
            opacity: 0.8
        }



        Rectangle {
            x: 33
            y: 90
            width: 334
            height: 500
            color: "#ffffff"
            radius: 6

            Text {
                x: 22
                y: 32
                width: 291
                height: 35
                color: "#646464"
                text: qsTr("The transaction has been modified by the UI. Do you wish to proceed? ")
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
                font.family: "Verdana"
                font.capitalization: Font.MixedCase
            }

            Button {
                id: diffConfirmBtn
                x: 187
                y: 437
                width: 100
                height: 36
                function onClick() {
                    diffModal.state = "hide"
                    pwInput.state = "show"
                }

                background: Rectangle {
                    x: 0
                    y: 0
                    width: parent.width
                    height: parent.height
                    color: "#b4b4b4"
                    radius: 18

                    MouseArea {
                        x: 0
                        y: 0
                        width: parent.width
                        height: parent.height
                        cursorShape: Qt.PointingHandCursor
                        onClicked: diffConfirmBtn.onClick()
                    }
                }

                contentItem: Text {
                    color: "#ffffff"
                    text: "Confirm"
                    font.capitalization: Font.AllUppercase
                    font.bold: true
                    font.family: "Verdana"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
            }

            Button {
                id: diffCancelBtn
                x: 53
                y: 437
                width: 100
                height: 36

                function onClick() {
                    diffModal.state = "hide"
                }

                contentItem: Text {
                    color: "#b4b4b4"
                    text: "Cancel"
                    font.family: "Verdana"
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    font.capitalization: Font.AllUppercase
                    verticalAlignment: Text.AlignVCenter
                }
                background: Rectangle {
                    x: 0
                    y: 0
                    width: parent.width
                    height: parent.height
                    color: "#ffffff"
                    radius: 18
                    border.color: "#b4b4b4"
                    border.width: 2
                    MouseArea {
                        x: 0
                        y: 0
                        width: parent.width
                        height: parent.height
                        onClicked: diffCancelBtn.onClick()
                        cursorShape: Qt.PointingHandCursor
                    }
                }
            }

            Rectangle {
                id: rectangle25
                x: 22
                y: 92
                width: 291
                height: 319
                color: "#efefef"
                radius: 2


            }

            Text {
                id: text12
                x: 127
                y: 78
                color: "#646464"
                text: qsTr("Change Log")
                font.bold: true
                font.capitalization: Font.AllUppercase
                font.letterSpacing: 0
                font.family: "Arial"
                font.pixelSize: 12
            }

            TextArea {
                id: text13
                x: 30
                y: 100
                width: 275
                height: 303
                text: ctxObjectApproveTx.diff
                font.letterSpacing: -0.2
                font.family: "Courier"
                padding: 0
                rightPadding: 0
                leftPadding: 0
                bottomPadding: 0
                topPadding: 0
                wrapMode: Text.WrapAnywhere
                font.pixelSize: 10
            }
        }
    }

    Rectangle {
        id: pwInput
        x: 0
        y: 0
        width: 400
        height: 680
        color: "#00000000"
        opacity: 0.5
        visible: false

        states: [
            State {
                name: "show"
                PropertyChanges { target: pwInput; opacity: 1; visible: true}
            },
            State {
                name: "hide"
                PropertyChanges { target: pwInput; opacity: 0.5; visible: false}
            }
        ]

        transitions: Transition {
            NumberAnimation {
                duration: 150
                properties: "opacity"
            }
        }


        Rectangle {
            id: pwInputBg
            x: 0
            y: 0
            width: 400
            height: 680
            color: "#000000"
            opacity: 0.8
        }



        Rectangle {
            id: rectangle17
            x: 33
            y: 215
            width: 334
            height: 250
            color: "#ffffff"
            radius: 6

            Text {
                id: text3
                x: 105
                y: 89
                color: "#646464"
                text: qsTr("Enter Password")
                font.family: "Verdana"
                font.capitalization: Font.AllUppercase
            }

            Rectangle {
                id: rectangle23
                x: 31
                y: 111
                width: 274
                height: 29
                color: "#efefef"
                radius: 2

                TextInput {
                    id: textInput6
                    x: 0
                    y: 8
                    width: 274
                    height: 16
                    color: "#000000"
                    text: ctxObjectApproveTx.password
                    horizontalAlignment: Text.AlignHCenter
                    echoMode: TextInput.Password
                    font.pixelSize: 16
                    onTextChanged: ctxObjectApproveTx.edited("password", text)
                }
            }

            Button {
                id: button1
                x: 185
                y: 184
                width: 100
                height: 36
                function onClick() {
                    ctxObjectApproveTx.clicked(2)
                    pwInput.state = "hide"
                }

                background: Rectangle {
                    x: 0
                    y: 0
                    width: parent.width
                    height: parent.height
                    color: "#b4b4b4"
                    radius: 18

                    MouseArea {
                        x: 0
                        y: 0
                        width: parent.width
                        height: parent.height
                        cursorShape: Qt.PointingHandCursor
                        onClicked: button1.onClick()
                    }
                }

                contentItem: Text {
                    color: "#ffffff"
                    text: "Confirm"
                    font.capitalization: Font.AllUppercase
                    font.bold: true
                    font.family: "Verdana"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
            }

            Button {
                id: button2
                x: 50
                y: 184
                width: 100
                height: 36

                function onClick() {
                    pwInput.state = "hide"
                    ctxObjectApproveTx.edited("password", "")
                }

                contentItem: Text {
                    color: "#b4b4b4"
                    text: "Cancel"
                    font.family: "Verdana"
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    font.capitalization: Font.AllUppercase
                    verticalAlignment: Text.AlignVCenter
                }
                background: Rectangle {
                    x: 0
                    y: 0
                    width: parent.width
                    height: parent.height
                    color: "#ffffff"
                    radius: 18
                    border.color: "#b4b4b4"
                    border.width: 2
                    MouseArea {
                        x: 0
                        y: 0
                        width: parent.width
                        height: parent.height
                        onClicked: button2.onClick()
                        cursorShape: Qt.PointingHandCursor
                    }
                }
            }
        }
    }
    
    Connections {
        target: ctxObjectApproveTx
        onShowDialog: {
            console.log("Showing " + ctxObjectApproveTx.dialogTitle);
            if (inputDialog.visible) {
                console.log("Error: dialog already visible!");
            } else {
                inputDialog.title = ctxObjectApproveTx.dialogTitle;
                inputDialog.text = ctxObjectApproveTx.dialogMessage;
                inputDialog.isPassword = ctxObjectApproveTx.dialogIsPassword
                inputDialog.input = '';
                inputDialog.open();
            }
        }
    }

    Dialog {
        id: inputDialog
        
        property alias text : inputDialogText.text
        property alias input : inputDialogTextField.text
        property alias isPassword : inputDialogTextField.isPassword
        
        standardButtons: StandardButton.Ok | StandardButton.Cancel
        
        Column {
            anchors.fill: parent

            Text {
                id: inputDialogText
                height: 40
            }
            
            TextField {
                id: inputDialogTextField
                
                property bool isPassword: false
                echoMode: isPassword ? TextInput.Password : TextInput.Normal
                
                width: parent.width*0.8
                height: 40
            }
        }
        
        onVisibleChanged: {
            if (visible)
                inputDialogTextField.focus = true;
        }
        onAccepted: ctxObjectApproveTx.dialogResult(true, inputDialog.input)
        onRejected: ctxObjectApproveTx.dialogResult(false, '')
    }
}
