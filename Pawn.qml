import QtQuick 2.0

Image {
    source: "file://home/paul/workspace/Chess/resources/blackPawn.jpg"
    width: 69
    height: 69
    MouseArea {
        anchors.fill: parent
        onClicked: {
            console.log("Pawn Clicked")
        }
    }
}

