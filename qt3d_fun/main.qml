import QtQuick 2.11
import QtQuick.Window 2.11
import QtQuick.Scene3D 2.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Rectangle {

        Scene3D {
            id: scene
            anchors.fill: parent
            focus: true

            World { }
        }
    }
}
