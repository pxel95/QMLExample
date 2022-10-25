import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        //define signal
        signal changeColor
        id: parentItem
        width: 300
        height: 200
        x: 0
        y: 0

        color: "red"

        onChangeColor: function(){
            //color = "#777777";
            color = Qt.rgba(Math.random(),Math.random(), Math.random(), 1);
        }

        MouseArea {
            anchors.fill: parent

            onClicked: function(){
                //emit signal changeColor
                parentItem.changeColor();
            }
        }
    }
}
