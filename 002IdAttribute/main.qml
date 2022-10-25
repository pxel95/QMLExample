import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column{
        width: 200
        height: 200

        TextInput{
            //id: _text //ok, start with _
            //id: 2txt  //error, start with number
            id: _text2
            text: "hello qml"
        }

        Text{
            text: _text2.text
        }
    }

    Rectangle{
        property var kar
        width: 100
        height: 100
        x : 300

        color: "blue"
    }
}
