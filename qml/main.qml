import QtQuick 2.15
import QtQuick.Window 2.15
import "components"
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.15

Window {
    id: window
    width: 800
    height: 480
    visible: true
    color: "#191919"
    title: qsTr("Circular Progress Component")

    GridLayout {
        anchors.fill: parent
        rows: 2
        columns: 3

        GridLayout {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.columnSpan: 3
            rows: 1
            columns: 3

            CircularProgresBar{
                strokeBgWidth: 5
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                textShowValue: true
                roundcap: true
                value: slider.value

            }

            CircularProgresBar {
                text: "% Loaded...."
                progressColor: "#ff007f"
                progressWidth: 6
                strokeBgWidth: 2
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                value: slider.value
            }

            CircularProgresBar {
                text: "Only Text"
                bgStrokeColor: "#4e9a06"
                progressColor: "#73d216"
                bgColor: "#8ae234"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                textShowValue: false
                value: slider.value
            }
        }

        Item {
            id: spacer
            Layout.preferredHeight: 14
            Layout.preferredWidth: 14
        }

        Slider {
            id: slider
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            to: 100
            value: 30
        }

        Item {
            id: spacer1
            Layout.preferredHeight: 14
            Layout.preferredWidth: 14
        }
    }
}
