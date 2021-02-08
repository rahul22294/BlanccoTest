import QtQuick 2.0
import QtQuick.Controls 2.0

ApplicationWindow {
    id : mainWindow
    width: 400
    height: 600
    visible: true
    Loader {
        anchors.fill: parent
        id: loader
    }
    Column {
        width: parent.width
        height: 200
        spacing: 10
        ListView {
            width: parent.width
            height: parent.height
            orientation: ListView.Vertical;
            highlight: Rectangle {
                width: parent.width
                color: "lightsteelblue"; radius: 5 }
            focus: true
            delegate: Text {
                anchors.centerIn: parent.Horizontal
                font.pointSize: 20
                text: date + ": " + name
            }

            model: ListModel {
                ListElement {
                    date : "22/10/2021"
                    name : "Diwali"
                }
                ListElement {
                    date : "22/02/2021"
                    name : "Birthday"
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
                    loader.source = "HomeScreen.qml"
                }
            }
        }
    }
}
