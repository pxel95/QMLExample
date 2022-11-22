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
        target: clickArea
        function onClicked(){
            console.log("click Window")
        }
    }


    //connect siangls
    Component.onCompleted: {
        clickArea.clicked.connect(onMouseClicked1);
        clickArea.clicked.connect(onMouseClicked2);
    }


    function onMouseClicked1()
    {
        console.log("onMouseClicked1.");
    }

    function onMouseClicked2()
    {
        console.log("onMouseClicked2.");
        //accumulate connect times
        clickArea.clicked.connect(onFinalClicked);
    }

    function onFinalClicked()
    {
        console.log("final clicked: " + Math.random() * 10);
    }
}
