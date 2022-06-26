import QtQuick
import QtQuick.Controls.Basic



ApplicationWindow {
    visible: true
    width : 325
    height: 300
    x: screen.desktopAvailableWidth - width - 12
    y: screen.desktopAvailableHeight - height - 48
    title: "Pyqt6-app"
    flags: Qt.FramelessWindowHint | Qt.Window
    property string currTime: "00:00:00"
    property QtObject backend
    
    Rectangle{
        anchors.fill : parent

        Image{
            sourceSize.width : parent.width
            sourceSize.height : parent.height
            source : "./images/pexels-photo-590493-325x300.png"
            fillMode : Image.PreserveAspectCrop
            


        }

        Text{
        anchors {
            bottom: parent.bottom
            bottomMargin: 12
            left: parent.left
            leftMargin: 12
        }
        text: currTime
        font.pixelSize : 60
        color: "white"
        }
    }

    Connections{
        target : backend
        function onUpdated(msg) {
            currTime = msg;
            }
    }
    
    }
