import QtQuick 2.0
import QtQuick.Controls 2.0

ApplicationWindow {
    id : mainWindow
    width: 400
    height: 600
    visible: true
    Column {
        spacing: 10
        width: parent.width
        height: 250
        Text {
            id: idAssignHW
            width: parent.width
            text: qsTr("Homework Details")
            font.pointSize: 20
        }

        ListView {
            width: parent.width
            height: parent.height
            orientation: ListView.Vertical;
            focus: true
            delegate: Text {
                anchors.centerIn: parent.Horizontal
                font.pointSize: 20
                text: subject
            }

            model: ListModel {
                ListElement {
                    subject : "ABC"
                }
                ListElement {
                    subject : "DEF"
                }
                ListElement {
                    subject : "GHI"
                }
                ListElement {
                    subject : "GHI"
                }
            }
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
                    loader.source = "HS_Student.qml"
                }
            }
        }
    }
}
