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
    title: qsTr("Hello World")

    GridLayout {
        anchors.fill: parent
        rows: 2
        columns: 3

        GridLayout {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.columnSpan: 3
            rows: 1
            columns: 3

            CircularProgressBar{
                textColor: "#55aaff"
                strokeBgWidth: 5
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                textShowValue: true
                value: slider.value

            }

            CircularProgressBar {
                text: "% loaded..."
                progressColor: "#ff007f"
                progressWidth: 6
                strokeBgWidth: 2
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                roundCap: true
                enableDropShadow: true
                value: slider.value
            }

            CircularProgressBar {
                text: "Only Text"
                maxValue: 200
                textColor: "#00a34f"
                bgColor: "#00ff7f"
                bgStrokeColor: "#00c660"
                progressColor: "#00a34f"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                roundCap: false
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
