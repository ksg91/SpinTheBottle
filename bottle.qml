import QtQuick 1.0

 Item {
     width: 300; height: 300

     Rectangle {
         id: rect
         width: 150; height: 100; anchors.centerIn: parent
         color: "red"
         smooth: true

         states: State {
             name: "rotated"
             PropertyChanges { target: rect; rotation: 180 }
         }

         transitions: Transition {
             RotationAnimation { duration: 1000; direction: RotationAnimation.Counterclockwise }
         }
     }

     MouseArea { anchors.fill: parent; onClicked: rect.state = "rotated" }
 }
