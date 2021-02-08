import QtQuick 2.0
import QtQuick.Controls 2.0
import "LoginData.js" as HW

ApplicationWindow {
    id : mainWindow
    width: 400
    height: 600
    visible: true



    function addElement() {
        for(var i = 0; i < HW.assignHW.length; i++){
            idAssignHW.append({"subject" : HW.assignHW[i]})
            console.log(HW.assignHW[i])
            console.log(idAssignHW.get(1).subject);
            idTimer.start()
        }
    }

    Column {
        spacing: 10
        width: parent.width
        height: 250
        Text {
            width: parent.width
            text: qsTr("Assign Homework")
            font.pointSize: 20
        }

        ListView {
            id : idListView
            width: parent.width
            height: parent.height
            orientation: ListView.Vertical;
            highlight: Rectangle {
                width: parent.width
                color: "lightsteelblue"; radius: 5 }
            focus: true
            model: idAssignHW
            delegate: Text {
                anchors.centerIn: parent.Horizontal
                font.pointSize: 20
                text: subject
            }

            ListModel {
                id: idAssignHW
                ListElement {
                    subject : "Chemistry"
                }

                ListElement {
                    subject : "Physics"
                }
            }
            Timer {
                id : idTimer
                interval: 1000
                running: true
                onTriggered: idListView.forceLayout()
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
