import QtQuick 2.12
import QtQuick.Controls 2.12

FocusScope {

  //FocusScope needs to bind to visual properties of the Rectangle
  property alias color: rectangle.color
  x: rectangle.x
  y: rectangle.y
  width: rectangle.width
  height: rectangle.height

  Rectangle {
    id: rectangle
    color: "lightsteelblue"
    width: 175
    height: 25
    radius: 10
    antialiasing: true
    Text {
      id: label
      anchors.centerIn: parent
    }
    focus: true

    onActiveFocusChanged: {
      if (activeFocus) {
        label.text = 'I have focus'
      } else {
        label.text = ''
      }
    }
  }
}
