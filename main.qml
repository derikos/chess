import QtQuick 2.5
import QtQuick.Window 2.2


Window {
    id: mainWindow

    visible: true
    width: 1024
    height: 768

    //one way to make the window fixed size
    //TODO Find a more elegant solution
    maximumHeight: 800
    minimumHeight: 800
    maximumWidth: 1024
    minimumWidth: 1024
    title: qsTr("Hello World")


    Image {
        anchors.fill: parent
        source: "file://home/paul/workspace/Chess/chessboardimage.jpg"
    }
    Item {
        id: testees
        anchors.fill: parent

        Grid {
            id: anchorGrid

            columns: 8
            rows: 8
            anchors.fill: parent
            anchors.leftMargin: 10
            anchors.topMargin: 10
            anchors.bottomMargin: 10
            anchors.rightMargin: 10

            Repeater {
                model: 8
                delegate: Square{}
                Repeater {
                    model: 8
                    delegate: Square{}
                }
            }
        }

        Rectangle {
            id: closeButton

            anchors.bottom: testees.bottom
            anchors.bottomMargin: 50
            width: parent.width
            height: 50
            color: "yellow"
            Text {

                anchors.centerIn: parent
                text: "Close"
                font.pointSize: 30
                color: "black"
            }
            MouseArea {
                anchors.fill: parent
                onClicked: mainWindow.close()
            }
        }
    }
}
