import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        //define signal
        signal changeColor(info : string, num : real)
        //signal changeColor(int k) //error same name

        id: parentItem
        width: 300
        height: 200
        x: 0
        y: 0

        color: "red"

        onChangeColor: function(info){
            //color = "#777777";
            color = Qt.rgba(Math.random(),Math.random(), Math.random(), 1);
            console.log(info)
        }

        function test(){
            console.log('test...');
        }

        function test1(){
        }

        MouseArea {
            anchors.fill: parent

            onClicked: function(){
                //emit signal changeColor
                parentItem.changeColor('info', 2);
                //parentItem.onChangeColor();   //TypeError: Property 'onChangeColor' of object QQuickRectangle_QML_0(0x20a51e8ca60) is not a function
                //parentItem.test();

                //parentItem.test = null;       //TypeError: Cannot assign to read-only property "test"
                //parentItem.test();
            }

            signal changeColor
            onChangeColor: ()=>{
                               console.log("change color in mouse area");
                           }
        }
    }
}



