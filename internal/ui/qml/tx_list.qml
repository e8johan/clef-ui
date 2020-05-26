import QtQuick 2.4
import QtQuick.Controls 2.3

Item {
    id: item1
    width: 400
    height: 680

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 400
        height: 680
        color: "#ffffff"

        Rectangle {
            id: rectangle1
            x: 0
            y: 0
            width: 400
            height: 64
            color: "#ffffff"
            border.width: 0

            Rectangle {
                id: rectangle10
                x: 0
                y: 64
                width: 400
                height: 1
                color: "#efefef"
            }

            Image {
                id: image1
                x: 2
                y: 2
                width: 60
                height: 60
                z: 1
                source: ctxObjectTxList.selectedSrc
                //                source: "./identicon.png"
            }

            Text {
                id: text6
                x: 8
                y: 8
                width: 384
                height: 50
                color: "#000000"
                text: qsTr("Pending Requests")
                fontSizeMode: Text.Fit
                font.bold: false
                font.family: "Courier"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 24
            }
        }

        ListView {
            id: listView
            x: 8
            y: 70
            width: 384
            height: 602
            model: transactions
//            function shouldShow(address) {
//                if (transactions.selectedAddress === '') {
//                    return true;
//                }
//                return transactions.selectedAddress.toLowerCase() === address.toLowerCase()
//            }
//            model: ListModel {
//                ListElement {
//                    from: "0xe2381fa3cb12f054a0d237f6d34b2cbf39400de4"
//                    method: "ApproveSignData"
//                    isUnknown: 1
//                }

//                ListElement {
//                    from: "0xe2381fa3cb12f054a0d237f6d34b2cbf39400de4"
//                    method: "ApproveTx"
//                    isUnknown: 0
//                }

//                ListElement {
//                    from: "0xe2381fa3cb12f054a0d237f6d34b2cbf39400de4"
//                    method: "ApproveNewAccount"
//                }

//                ListElement {
//                    from: "0xe2381fa3cb12f054a0d237f6d34b2cbf39400de4"
//                    method: "ApproveSignData"
//                }
//            }
            delegate: Item {
                x: 0
                y: 0
                width: parent.width
                height: 90
//                visible: listView.shouldShow(from)

                Rectangle {
                    id: rectangle2
                    x: 0
                    y: 0
                    width: 384
                    height: 86
                    color: "#ffffff"
                    border.color: "#efefef"
                    border.width: 1

                    states: [
                        State {
                            name: "hover"
                            PropertyChanges {
                                target: rectangle2
                                color: "#f9f9f9"
                                border.color: "#dedede"
                                border.width: 2
                            }
                        },
                        State {
                            name: "active"
                            PropertyChanges {
                                target: rectangle2
                                color: "#f9f9f9"
                                border.color: "#c9c9c9"
                                border.width: 2
                            }
                        },
                        State {
                            name: "normal"
                            PropertyChanges {
                                target: rectangle2
                                color: "#ffffff"
                                border.color: "#efefef"
                                border.width: 1
                            }
                        }
                    ]

                    transitions: [
                        Transition {
                            PropertyAnimation {
                                properties:"color,border.color,corder.width"
                                duration: 200
//                                easing: Easing.OutElastic
                            }
                        }
                    ]

                    MouseArea {
                        id: itemma
                        x: 0
                        y: 0
                        width: parent.width
                        height: parent.height
                        hoverEnabled: true
                        cursorShape: Qt.PointingHandCursor
                        onClicked: ctxObjectTxList.clicked(index)
                        onHoveredChanged: containsMouse ? rectangle2.state = "hover" : rectangle2.state = "normal"
                        onPressed: rectangle2.state = "active"
                        onReleased: containsMouse ? rectangle2.state = "hover" : rectangle2.state = "normal"
                    }

                    Image {
                        id: image
                        x: 8
                        y: 8
                        width: 70
                        height: 70
                        source: fromSrc
                    }

                    Rectangle {
                        id: rectangle4
                        x: 84
                        y: 8
                        width: 293
                        height: 33
                        color: "#ffffff"
                        Text {
                            id: text1
                            x: 4
                            y: 0
                            width: parent.width - 8
                            height: 14
                            color: "#747474"
                            text: qsTr("From")
                            font.capitalization: Font.AllUppercase
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignLeft
                            font.pixelSize: 10
                        }

                        Text {
                            id: unknownAccount
                            x: 184
                            y: 0
                            width: parent.width - 8
                            height: 14
                            color: "#ff5252"
                            text: "unknown account"
                            visible: isUnknown
                            font.capitalization: Font.AllUppercase
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignLeft
                            font.pixelSize: 10
                        }

                        Rectangle {
                            id: rectangle3
                            x: 0
                            y: 14
                            width: parent.width
                            height: 18
                            color: "#efefef"
                            radius: 2

                            Text {
                                id: text2
                                x: 4
                                y: 1
                                width: parent.width
                                height: 18
                                color: "#646464"
                                text: from
                                font.letterSpacing: 0.1
                                horizontalAlignment: Text.AlignLeft
                                font.family: "Courier"
                                verticalAlignment: Text.AlignVCenter
                                font.pixelSize: 11
                            }
                        }
                    }

                    Rectangle {
                        id: rectangle5
                        x: 84
                        y: 47
                        width: 293
                        height: 33
                        color: "#ffffff"
                        Text {
                            id: text3
                            x: 4
                            y: 0
                            width: parent.width - 8
                            height: 14
                            color: "#747474"
                            text: qsTr("Method")
                            font.capitalization: Font.AllUppercase
                            horizontalAlignment: Text.AlignLeft
                            font.pixelSize: 10
                            verticalAlignment: Text.AlignVCenter
                        }

                        Rectangle {
                            id: rectangle6
                            x: 0
                            y: 14
                            width: parent.width
                            height: 18
                            color: "#efefef"
                            radius: 2
                            Text {
                                id: text4
                                x: 4
                                y: 1
                                width: parent.width
                                height: 18
                                color: "#646464"
                                text: method
                                font.pointSize: 11
                                font.capitalization: Font.MixedCase
                                font.family: "Courier"
                                horizontalAlignment: Text.AlignLeft
                                verticalAlignment: Text.AlignVCenter
                                font.letterSpacing: 0.4
                            }
                        }
                    }
                }
            }

            Text {
                id: text5
                x: 117
                y: 293
                color: "#c9c9c9"
                text: qsTr("No More Reuqests")
                font.bold: false
                font.capitalization: Font.AllUppercase
                font.family: "Verdana"
                font.pixelSize: 14
                visible: transactions.isEmpty
            }

        }




    }
}
