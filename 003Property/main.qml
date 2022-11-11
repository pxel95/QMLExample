import QtQuick

Window {
    id: myWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    default property list<Item> myData

    Rectangle {
        width: 51
        height: 50
        color: "red"
    }

    Rectangle {
        x: 100
        width: 50
        height: 50
        color: "blue"
    }

    //component
    Component.onCompleted:{
        console.log("load finish...");
        console.log(myWindow.myData.length);    //0 ?
        //console.log(myWindow.myData[0].width);

        console.log(myWindow.children.length);  //undefine ?
    }
}
