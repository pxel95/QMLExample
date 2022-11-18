import QtQuick
import "./testJs.js" as MyTestJs

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        //color: tapHandler.pressed ? "red" : "black"
        color: "black"
        width: 200
        height: 200

        TapHandler {
            id: tapHandler
            onTapped: {
                console.log("mouse click...")
            }
        }

        TapHandler {
            onTapped: console.log('second taphandler...');
        }

        //js expression in signal handler
        Component.onCompleted: {
            color = Qt.binding(function() { return tapHandler.pressed ? "red" : "black";});

            //connect js function
            tapHandler.tapped.connect(MyTestJs.OnConnectSignal);
        }
    }

    //js expressioin in js file
    Component.onCompleted: {
        MyTestJs.Message();
    }

}
