import QtQuick 2.12
import QtQuick.Controls 2.12


// Tested with qmlscene from Qt 5.13.0 x86_64 on Ubuntu
Rectangle {
  color: "white"
  width: 240
  height: 240

  Label {
    id: heading
    width: parent.width
    wrapMode: Text.Wrap
    padding: 10
    text: 'Use TAB and SHIFT+TAB to move focus'
  }

  Column {
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: heading.bottom
    spacing: 15

    Widget {
      id: one
      color: "yellow"
      focus: true

      KeyNavigation.backtab: four
      KeyNavigation.tab: two
    }
    Widget {
      id: two
      color: "orange"

      KeyNavigation.backtab: one
      KeyNavigation.tab: three
    }
    Widget {
      id: three
      color: "green"

      KeyNavigation.backtab: two
      KeyNavigation.tab: four
    }
    Widget {
      id: four
      color: "red"

      KeyNavigation.backtab: three
      KeyNavigation.tab: one
    }
  }
}
