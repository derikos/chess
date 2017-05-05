import QtQuick 2.5
import QtQuick.Window 2.2


Window {
    id: mainWindow

    visible: true
    width: 1024
    height: 768

    //one way to make the window fixed size
    //TODO Find a more elegant solution
    maximumHeight: 650
    minimumHeight: 650
    maximumWidth: 600
    minimumWidth: 600
    title: qsTr("Hello World")


    //home source image
    //swap with current dependent on work environment
    //        source: "file://home/paul/workspace/Chess/chessboardimage.jpg"
    Item {
        id: testees
        anchors.fill: parent
        anchors.bottomMargin: 50

        Image {
            anchors.fill: parent
            source: "file://home/uidq6356/workspace/practice/home/chess/chessboard.png"
        }

        Grid {
            id: anchorGrid

            anchors.fill:testees
            columns: 8
            rows: 8

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
    Rectangle {
        id: closeButton

        anchors.top:testees.bottom
        width: parent.width
        height: 50
        color: "yellow"

        Text {
            anchors.centerIn: parent
            text: "Close Application"
            font.pointSize: 30
            color: "black"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: mainWindow.close()
        }
    }
}
