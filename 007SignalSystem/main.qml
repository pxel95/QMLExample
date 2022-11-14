import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Rectangle {
        anchors.fill: parent
        color: "red"

        MouseArea {
            id: clickArea
            anchors.fill: parent
        }

        Connections {
            target: clickArea

            function onClicked(){
                console.log("click Rectange...")
            }
        }
    }

    Connections {
        //target: clickArea
        function onClicked(){
            console.log("click Window")
        }
    }


}
