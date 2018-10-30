import QtQuick 2.11
import QtQuick.Window 2.11
import QtQuick.Layouts 1.10

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    MyToolbar {
            id: myToolbar
            width: parent.width
            title: "Dominate Qt Quick"
            iconColor: "yellow"
        }
    RowLayout {
            anchors.top: myToolbar.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom

            Rectangle { width: 200; height: 200; color: "red" }
            Rectangle { width: 200; height: 200; color: "green" }
            Rectangle { width: 50; height: 50; color: "blue" }
        }
}
