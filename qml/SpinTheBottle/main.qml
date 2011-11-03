import QtQuick 1.0

 Rectangle{
     id: frame
     property real rot: 0
     property int time: 0
     function rotate()
     {
        rot=Math.random()*360+1000;
         bottle.state=""
         bottle.state="rotated"
     }

     Image {
         id: bottle
         source: "bottle.png"
         anchors.centerIn: parent
         states: State {
                      name: "rotated"
                      PropertyChanges { target: bottle; rotation: rot; }
                  }

                  transitions: Transition {
                      RotationAnimation { duration: 3000; direction: RotationAnimation.Counterclockwise }
                  }


     }
     MouseArea { anchors.fill: parent; onClicked:{
                         rotate();


         }
     }
 }
