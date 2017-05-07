import QtQuick 2.5
import QtQuick.Window 2.2


Window {
    id: mainWindow

    visible: true
    width: 1024
    height: 768

    //one way to make the window fixed size
    //TODO Find a more elegant solution
    maximumHeight: 600
    minimumHeight: 600
    maximumWidth: 600
    minimumWidth: 600
    title: qsTr("Hello World")


    //home source image
    //swap with current dependent on work environment
    //        source: "file://home/paul/workspace/Chess/chessboardimage.jpg"
    //          "file://home/uidq6356/workspace/practice/home/chess/chessboard.png"
    Item {
        id: testees
           anchors.top:parent.top
           anchors.left:parent.left
           anchors.right:parent.right

           width: 560
           height:560

        Image {
//            anchors.fill: testees  **For some reason anchors.fill doesn't work as intended **
            width: 560
            height: 560
            source: "file://home/paul/workspace/Chess/resources/chessboard.png"
        }

        Grid {
            id: anchorGrid

            anchors.fill:testees
            anchors.leftMargin: 1
            anchors.topMargin: 1
            columns: 8
            rows: 8

            Repeater {
                model: 8
                delegate: Square{}
                Repeater {
                    model: 8
                    delegate: Square{
                    Pawn{}
                    }
                }
            }

        }

    }
    Rectangle {
        id: closeButton

        anchors.top:testees.bottom
        width: parent.width
        height: 30
        color: "yellow"

        Text {
            anchors.centerIn: parent
            text: "Close Application"
            font.pointSize: 24
            color: "black"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: mainWindow.close()
        }
    }
}
