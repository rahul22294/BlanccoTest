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
        x: 0
        y: 0
        spacing: 10
        width: 400
        height: 600
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.alignWhenCentered: true
        Button {
            id: studentSection
            text: "Home Screen - Students"
            width: parent.width
            height: (parent.height / 3) - 50
            onClicked: {
                mainWindow.close()
                loader.source = "HS_Student.qml"
            }
        }
        Button {
            id: parentSection
            text: "Home Screen - Parents"
            onClicked: {
                mainWindow.close()
                loader.source = "HS_Parent.qml"
            }
            width: parent.width
            height: (parent.height / 3) - 50
        }
        Button {
            id: eventSection
            text: "Events"
            onClicked: {
                mainWindow.close()
                loader.source = "Event.qml"
            }
            width: parent.width
            height: (parent.height / 3) - 50
        }
        Button {
            id: backButton
            anchors.right: parent.right
            text: "Log Out"
            onClicked: {
                mainWindow.close()
                loader.source = "main.qml"
            }
            width: parent.width / 2
            height: 40
        }
    }
}
