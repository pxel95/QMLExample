import QtQuick
import "./Enumeration"

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    enum MyEnumeration{
        //error value
        //k1, //error: Enum names must begin with an upper case letter
        //Ok = 2,
        //Error = 1

        Normal
    }

    Enumeration{

    }

    MouseArea{
        anchors.fill: parent
        onClicked: console.log("enum is : ", main.MyEnumeration.Error)
    }

    Component.onCompleted: ()=>{
                               console.log("load finish...")
                               console.log("enum is : ", MyEnumeration.Normal)
                           }
}
