import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true
    width: 1024
    height: 768
    title: qsTr("Hello World")


    Image {
        anchors.fill: parent
        source: "file://home/paul/workspace/Chess/chessboardimage.jpg"
    }
    GridView {
        anchors.fill: parent
        model: 8
        delegate: Column {
            Repeater {
                model: 8
                delegate: Square{}
            }
        }
    }

//    Grid {
//        columns: 8
//        rows: 8
//        Repeater {
//            model: 8
//            delegate: columnSquares
//        }

//        Repeater {
//            id: columnSquares
//            model: 8
//            delegate: Square{}
//        }
//    }
 }
