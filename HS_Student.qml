import QtQuick 2.0
import QtQuick.Controls 2.0

ApplicationWindow {
    visible: true
    id :mainWindow
    width: 400
    height: 600

    Loader {
        anchors.fill: parent
        id: loader
    }

    AssignHomework {
        id : funcAHW
        visible: false
    }

    Column {
        spacing: 10
        width: parent.width
        height: parent.height
        Rectangle {
            width: parent.width
            height: 30

            Text {
                id: homeWorkSec
                text: qsTr("Home Work Section")
                font.pointSize: 15
                font.bold: true

            }
        }
        Row {
            width: parent.width
            height: parent.height / 10
            spacing: 7.5
            Button{
                height: parent.height
                width: (parent.width / 3) - 5
                text: "HomeWork \nAssigned"
                onClicked: {

                    mainWindow.close()
                    loader.source = "AssignHomework.qml"
                    funcAHW.addElement()
                }

            }
            Button{
                height: parent.height
                width: (parent.width / 3) - 5
                text: "HomeWork \nDetails"
                onClicked: {
                    mainWindow.close()
                    loader.source = "HomeworkDetails.qml"
                }
            }
            Button{
                height: parent.height
                width: (parent.width / 3) - 5
                text: "HomeWork \nCompleted"
                onClicked: {
                    mainWindow.close()
                    loader.source = "HomeworkCompleted.qml"
                }
            }
        }
        Rectangle {
            width: parent.width
            height: 30
            Text {
                id: idHoliday
                text: qsTr("Holiday Section")
                font.pointSize: 15
                font.bold: true
            }
        }
        Button{
            width: parent.width - 5
            text: "Display All Holidays"
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
