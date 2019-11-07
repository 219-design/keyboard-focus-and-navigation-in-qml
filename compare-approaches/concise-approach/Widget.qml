import QtQuick 2.12
import QtQuick.Controls 2.12

Pane {
  id: root
  property color color

  width: 175
  height: 25

  focusPolicy: Qt.StrongFocus

  background: Rectangle {
    color: root.color
    radius: 10
    antialiasing: true
  }

  Label {
    id: label
    anchors.fill: parent
    horizontalAlignment: Text.AlignHCenter
    verticalAlignment: Text.AlignVCenter
  }

  onActiveFocusChanged: {
    if (activeFocus) {
      label.text = 'I have focus'
    } else {
      label.text = ''
    }
  }
}
