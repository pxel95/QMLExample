import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("001 Anchors")

    Rectangle{
        id: rect1
        width: 100
        height: 100
        anchors.centerIn: parent
        color: "red"
    }

    Rectangle{
        id: rect2
        width: 50
        height: 50
        anchors.top: rect1.bottom
        anchors.horizontalCenter: rect1.horizontalCenter
        color: "green"
    }

    Rectangle{
        id: rect3
        x: 0
        y: 0
        width: 100
        height: 50
        color: "red"
    }

    Rectangle{
        id: rect4
        x: parent.width - width
        y: 0
        width: 100
        height: 50
        color: "green"
    }

    //auto stretch
    Rectangle{
        id: rect5
        height: 100 //must be set, because the height value default is 0
        anchors{
            left: rect3.right
            right: rect4.left
        }

        color: "blue"
    }
}
