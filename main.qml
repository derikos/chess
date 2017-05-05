import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true
    width: 1024
    height: 768

    //one way to make the window fixed size
    //TODO Find a more elegant solution
    maximumHeight: 1024
    minimumHeight: 1024
    maximumWidth: 1024
    minimumWidth: 1024
    title: qsTr("Hello World")


    Image {
        anchors.fill: parent
        source: "file://home/paul/workspace/Chess/chessboardimage.jpg"
    }
    Grid {
        columns: 8
        rows: 8
        anchors.fill: parent
        anchors.leftMargin: 50
        anchors.topMargin: 50
        anchors.bottomMargin: 50
        anchors.rightMargin: 50

            Repeater {
                model: 8
                delegate: Square{}
                Repeater {
                    model: 8
                    delegate: Square{}
                }
            }
        }
    }

