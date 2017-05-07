import QtQuick 2.0

Image {
    source: "file://home/paul/workspace/Chess/resources/blackPawn.jpg"
    width: 40
    height: 40
    anchors.centerIn: parent
    MouseArea {
        anchors.fill: parent
        onClicked: {
            console.log("Pawn Clicked")
        }
    }
}

