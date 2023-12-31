import QtQuick
import QtQuick.Controls
import QtQuick.Window

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Touch Screen Test")

    Rectangle {
        anchors.fill: parent
        color: "lightblue"

        MultiPointTouchArea {
            anchors.fill: parent
            minimumTouchPoints: 1
            maximumTouchPoints: 3

            touchPoints: [
                TouchPoint {
                    id: touch1
                },
                TouchPoint {
                    id: touch2
                },
                TouchPoint {
                    id: touch3
                }
            ]
        }

        Rectangle {
            x: touch1.x - width / 2
            y: touch1.y - height / 2
            width: 200
            height: 200
            visible: touch1.pressed
            color: "cyan"
        }
        Rectangle {
            x: touch2.x - width / 2
            y: touch2.y - height / 2
            width: 200
            height: 200
            visible: touch2.pressed
            color: "blue"
        }
        Rectangle {
            x: touch3.x - width / 2
            y: touch3.y - height / 2
            width: 200
            height: 200
            visible: touch3.pressed
            color: "red"
        }
    }

    onActiveChanged: {
        visibility = activeFocusItem ? Window.FullScreen : Window.Minimized
    }
}
