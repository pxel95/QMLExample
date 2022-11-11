import QtQuick

Window {
    id: window
    width: 640
    height: 480
    visible: true
    //title: qsTr("Hello World")

    color: "#222"

    Rectangle {
        id: rect
        width: parent.width
        height: parent.height
        color: "#777"
        focus: true

        Keys.onSpacePressed: {
            //remove binding
            width = parent.width;
            console.log("binging is removed...")
            console.log("parent height is : " + parent.height);
        }

        Keys.onLeftPressed: {
            console.log("rebinding...")
            width = Qt.binding(function(){
                //width = parent.width; //error: Binding loop detected for property "width"
                console.log("update binding...");
                return parent.width;
            })
        }
    }
}
