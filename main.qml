import QtQuick 2.2
import QtQuick.Controls 1.1

ApplicationWindow {
  visible: true
  width: 200
  height: 100
  title: "Hello, world!"

  Label {
    id: textField  
    text: "Hello, ruby-qml!"
    anchors.top: parent.top
    anchors.left: parent.left

    anchors.topMargin: 20
    anchors.leftMargin: 20
  }
}
