import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.12
import QtQuick.Controls.Universal 2.2


// Tested with qmlscene from Qt 5.13.0 x86_64 on Ubuntu
Rectangle {
  id: root
  color: "white"
  width: 400
  height: 400

  Image {
    id: logo
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top
    height: 140
    width: height

    source: blacknwhite.checked ? "blacknwhite.png" : "219Design.png"
    fillMode: Image.PreserveAspectFit
  }

  Rectangle {
    anchors.fill: logo
    color: 'transparent'
    border.width: logo.activeFocus ? 2 : 0
    border.color: Universal.accent
  }

  Row {
    id: row
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: logo.bottom
    spacing: 40

    CheckBox {
      id: blacknwhite
      text: 'Black & White'
    }

    Button {
      text: 'Reset'

      onClicked: {
        blacknwhite.checked = false
      }
    }
  }

  Column {
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: row.bottom
    topPadding: 40
    spacing: 10

    Label {
      text: 'Keyboard Controls:'
      font.bold: true
    }
    Label {
      text: 'TAB: iterates focus over each item'
    }
    Label {
      text: 'SPACEBAR (on checkbox): toggles checkbox'
    }
    Label {
      text: 'SPACEBAR (on button): presses button'
    }
    Label {
      text: 'SPACEBAR (on logo): rotates logo'
    }
  }
}
