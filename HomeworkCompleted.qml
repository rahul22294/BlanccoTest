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
        height: parent.height
        CheckBox {
            text: "Chemistry"
        }
        CheckBox {
            text: "Maths"
        }
        CheckBox {
            text: "Physics"
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
