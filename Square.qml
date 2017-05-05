import QtQuick 2.0

Rectangle {
    id: square

    height: 70
    width: 70
    border.color: "red"
    color: "transparent"
    MouseArea{
        anchors.fill: parent
        onClicked: {
            console.log("Clicked")
           }
    }
}
