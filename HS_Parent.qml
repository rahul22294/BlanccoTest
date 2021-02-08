import QtQuick 2.0
import QtQuick.Controls 2.0
import "LoginData.js" as Data

ApplicationWindow {
    visible: true
    id :mainWindow
    width: 400
    height: 600

    Column {
        spacing: 5
        width: 400
        height: 600
        Rectangle {
            width: 100
            height: 100
            border.color: "black"
            Image {
                width: 100
                height: 100
                id: stImage
                source: "file"
            }
        }

        Row {
            width: parent.width
            spacing: 5
            Text {
                font.pointSize: 12
                id: nameStudent
                text: qsTr("Name :")
            }
            Text {
                font.pointSize: 12
                id: nameStudent1
                text: qsTr(Data.login.name)
            }
        }

        Row {
            width: parent.width
            spacing: 5
            Text {
                font.pointSize: 12
                id: idClass
                text: qsTr("Class :")
            }
            Text {
                font.pointSize: 12
                id: idClass1
                text: qsTr(Data.login.class)
            }
        }

        Row {
            width: parent.width
            spacing: 5
            Text {
                font.pointSize: 12
                id: idRollNo
                text: qsTr("Roll No :")
            }
            Text {
                font.pointSize: 12
                id: idRollNo1
                text: qsTr(Data.login.rollNo)
            }
        }
        Text {
            id: idMessage
            font.pointSize: 12
            text: qsTr("Direct Message Send :")
        }
        TextField {
            id : isMessageFrom
            width: parent.width
            height: 30
            placeholderText: "Message From"
        }

        TextField {
            id : isMessageTitle
            width: parent.width
            height: 30
            placeholderText: "Message Title"
        }

        TextField {
            id : isMessageIn
            width: parent.width
            height: parent.height / 10
        }
        Row {
            width: parent.width
            spacing: 10
            Button {
                width: (parent.width / 2) - 5
                text: "Send"
            }
            Button {
                text: "Clear"
                width: (parent.width / 2) - 5
            }
        }
        Text {
            id: idNotice
            text: qsTr("Notice Board : ")
            font.pointSize: 12
        }
        Text {
            id: idTitle
            text: qsTr("Title : "+ Data.login.notice)
            font.pointSize: 12
        }
        Text {
            id: idDate
            text: qsTr("Date : " + Data.login.date)
            font.pointSize: 12
        }
        Button {
            width: parent.width
            text: "Description"
            onClicked: {
                idDescription.open()
            }
        }

        Button {
            width: parent.width
            text: "Fee Details"
            onClicked: {
                idFee.open()
            }
        }

        Popup {
            id : idDescription
            width: parent.width
            height: parent.height / 3
            contentItem: Text {
                font.pointSize: 10
                text: Data.login.description
            }
            onOpened: popupClose.start()
        }
        Timer {
            id : popupClose
            interval: 30000
            onTriggered: {
                idFee.close()
                idDescription.close()
            }
        }

        Popup {
            id : idFee
            width: parent.width
            height: parent.height / 3
            contentItem: Text {
                font.pointSize: 10
                text: "Fee Amount: " + Data.login.fee +"\nStatus : " + Data.login.feeStatus
            }
            onOpened: popupClose.start()
        }
        Row {
            spacing: 5
            width: parent.width
            height: parent.height / 10
            Button {
                width: parent.width / 2
                text: "Log Out"
                onClicked: {
                    mainWindow.close()
                    loader.source = "main.qml"
                }
            }
            Button {
                width: parent.width / 2
                text: "Back"
                onClicked: {
                    mainWindow.close()
                    loader.source = "HomeScreen.qml"
                }
            }
        }
    }
}
