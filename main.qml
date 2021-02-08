import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0
import "LoginData.js" as Login

ApplicationWindow {
    id : mainWindow
    Loader {
        id: loader
        //anchors.fill: parent
    }

    width: 400
    height: 600
    visible: true
    title: qsTr("School Management System")
    color: "Red"

    Column {
        anchors.centerIn: parent
        anchors.alignWhenCentered: true
        width: 400
        height: 600
        spacing: 10

        Text {
            id: name
            width: 400
            text: qsTr("Students & Parents Login")
            font.pointSize : 20
            font.bold: true

        }

        TextField {
            id: nameInput
            width: parent.width
            onAccepted: passwordInput.forceActiveFocus()
            placeholderText: "Username"
            KeyNavigation.tab: passwordInput
        }

        TextField {
            id: passwordInput
            width: parent.width
            onAccepted: passwordInput.text
            placeholderText: "Password"
            echoMode: TextInput.Password
            KeyNavigation.tab: loginButton
        }

        Row {
            spacing: 15
            width: 400
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.alignWhenCentered: true
            Button {
                id: loginButton
                text: "Login"
                width: (parent.width - parent.spacing)/2
                onClicked: {
//                    if(Login.login.userID === nameInput.text && Login.login.password === passwordInput.text )
//                    {
                        mainWindow.close()
                        loader.source = "HomeScreen.qml"
//                    }
//                    else
//                    {
//                        idPopupLogin.open()
//                    }
                }
                KeyNavigation.tab: registerButton
            }
            Button {
                id: registerButton
                text: "Register"
                onClicked: registerAndLogin()
                width: (parent.width - parent.spacing)/2
                KeyNavigation.tab: nameInput
            }
        }
    }
    Timer {
        id : popupClose
        interval: 2000
        onTriggered: {
            idPopupLogin.close()
        }
    }
    Popup {
        id : idPopupLogin
        width: parent.width
        height: parent.height / 3
        contentItem: Text {
            font.pointSize: 10
            text: "Login Failed..."
        }
        onOpened: popupClose.start()
    }
}

