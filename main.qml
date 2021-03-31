import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.0

import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.4

Window {
    visible: true
    //visibility: Window.FullScreen //для малинки
    width: 600 //для пк
    height: 1024 //для пк
    flags: Qt.FramelessWindowHint

    property real buttons_width: 230
    property real buttons_height: 240
    property real mouse_range1_x: 22
    property real mouse_range1_y: 52
    property real mouse_range1_width: 200
    property real mouse_range1_height: 110
    property real mouse_range2_x: 55
    property real mouse_range2_y: 35
    property real mouse_range2_width: 140
    property real mouse_range2_height: 18
    property real mouse_range3_x: 50
    property real mouse_range3_y: 160
    property real mouse_range3_width: mouse_range2_width
    property real mouse_range3_height: mouse_range2_height
    property real mouse_range4_x: 83
    property real mouse_range4_y: 10
    property real mouse_range4_width: 80
    property real mouse_range4_height: 25
    property real mouse_range5_x: 83
    property real mouse_range5_y: 180
    property real mouse_range5_width: mouse_range4_width
    property real mouse_range5_height: mouse_range4_height

    StackView {
        id: stack
        initialItem: mainView
        anchors.fill: parent
/*
        delegate: StackViewDelegate {
            pushTransition: StackViewTransition {
            }
        }
        */
/*
        delegate: StackViewDelegate {
            pushTransition: StackViewTransition {
                PropertyAnimation {
                    target: enterItem
                    property: "scale"
                    from: 0
                    to: 1
                }

                PropertyAnimation {
                    target: exitItem
                    property: "scale"
                    from: 1
                    to: 0
                }
            }
        }
*/
    }

    Page {
        id: mainView

        Rectangle {
            id: recB1
            width: buttons_width
            height: buttons_height
            color: "transparent"
            //border.color: "black"
            x: 128
            y: 44

            Image {
                id: imBye
                anchors.fill: recB1
                anchors.margins: 1
                source: (but1.pressed || but2.pressed || but3.pressed || but1_1.pressed|| but1_2.pressed)
                    ? "images/МЕНЮ Результаты 1 страница2.png"
                    : "images/МЕНЮ Результаты 1 страница.png"
            }

            Rectangle {
                id:rec1
                x: mouse_range1_x
                y: mouse_range1_y
                z: 1
                width: mouse_range1_width
                height: mouse_range1_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but1
                    anchors.fill: rec1
                    onClicked: {
                        console.log("Button 11111111 clicked.");
                        stack.push(view2);
                    }
                }
            }

            Rectangle {
                id:rec2
                x: mouse_range2_x
                y: mouse_range2_y
                z: 1
                width: mouse_range2_width
                height: mouse_range2_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but2
                    anchors.fill: rec2
                    onClicked: {
                        console.log("Button 11111111 clicked.");
                        stack.push(view2);
                    }
                }
            }

            Rectangle {
                id:rec3
                x: mouse_range3_x
                y: mouse_range3_y
                z: 1
                width: mouse_range3_width
                height: mouse_range3_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but3
                    anchors.fill: rec3
                    onClicked: {
                        console.log("Button 11111111 clicked.");
                        stack.push(view2);
                    }
                }
            }

            Rectangle {
                id:rec1_4
                x: mouse_range4_x
                y: mouse_range4_y
                z: 1
                width: mouse_range4_width
                height: mouse_range4_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but1_1
                    anchors.fill: rec1_4
                    onClicked: {
                        console.log("Button 11111111 clicked.");
                        stack.push(view2);
                    }
                }
            }

            Rectangle {
                id:rec1_5
                x: mouse_range5_x
                y: mouse_range5_y
                z: 1
                width: mouse_range5_width
                height: mouse_range5_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but1_2
                    anchors.fill: rec1_5
                    onClicked: {
                        console.log("Button 11111111 clicked.");
                        stack.push(view2);
                    }
                }
            }

        }

        Rectangle {
            id: recB2
            width: buttons_width
            height: buttons_height
            color: "transparent"
            //border.color: "black"
            x: 17
            y: 220
            //z: -1
            Image {
                id: imBye2
                anchors.fill: recB2
                anchors.margins: 1
                source: (but4.pressed || but5.pressed || but6.pressed || but2_1.pressed|| but2_2.pressed)
                    ? "images/МЕНЮ Часы 1 страница2.png"
                    : "images/МЕНЮ Часы 1 страница.png"
            }

            Rectangle {
                id:rec4
                x: mouse_range1_x
                y: mouse_range1_y
                z: 1
                width: mouse_range1_width
                height: mouse_range1_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but4
                    anchors.fill: rec4
                    onClicked: {
                        console.log("Button 2222222 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec5
                x: mouse_range2_x
                y: mouse_range2_y
                z: 1
                width: mouse_range2_width
                height: mouse_range2_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but5
                    anchors.fill: rec5
                    onClicked: {
                        console.log("Button 2222222 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec6
                x: mouse_range3_x
                y: mouse_range3_y
                z: 1
                width: mouse_range3_width
                height: mouse_range3_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but6
                    anchors.fill: rec6
                    onClicked: {
                        console.log("Button 2222222 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec2_4
                x: mouse_range4_x
                y: mouse_range4_y
                z: 1
                width: mouse_range4_width
                height: mouse_range4_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but2_1
                    anchors.fill: rec2_4
                    onClicked: {
                        console.log("Button 222222 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec2_5
                x: mouse_range5_x
                y: mouse_range5_y
                z: 1
                width: mouse_range5_width
                height: mouse_range5_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but2_2
                    anchors.fill: rec2_5
                    onClicked: {
                        console.log("Button 222222 clicked.");
                    }
                }
            }


        }

        Rectangle {
            id: recB3
            width: buttons_width
            height: buttons_height
            color: "transparent"
            //border.color: "black"
            x: 239
            y: 220
            //z: -1
            Image {
                id: imBye3
                anchors.fill: recB3
                anchors.margins: 1
                source: (but7.pressed || but8.pressed || but9.pressed || but3_1.pressed|| but3_2.pressed)
                    ? "images/контроль качества 1 страница2.png"
                    : "images/контроль качества 1 страница.png"
            }

            Rectangle {
                id:rec7
                x: mouse_range1_x
                y: mouse_range1_y
                z: 1
                width: mouse_range1_width
                height: mouse_range1_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but7
                    anchors.fill: rec7
                    onClicked: {
                        console.log("Button 3333333 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec8
                x: mouse_range2_x
                y: mouse_range2_y
                z: 1
                width: mouse_range2_width
                height: mouse_range2_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but8
                    anchors.fill: rec8
                    onClicked: {
                        console.log("Button 3333333 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec9
                x: mouse_range3_x
                y: mouse_range3_y
                z: 1
                width: mouse_range3_width
                height: mouse_range3_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but9
                    anchors.fill: rec9
                    onClicked: {
                        console.log("Button 3333333 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec3_4
                x: mouse_range4_x
                y: mouse_range4_y
                z: 1
                width: mouse_range4_width
                height: mouse_range4_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but3_1
                    anchors.fill: rec3_4
                    onClicked: {
                        console.log("Button 33333 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec3_5
                x: mouse_range5_x
                y: mouse_range5_y
                z: 1
                width: mouse_range5_width
                height: mouse_range5_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but3_2
                    anchors.fill: rec3_5
                    onClicked: {
                        console.log("Button 333333 clicked.");
                    }
                }
            }

        }

        Rectangle {
            id: recB4
            width: buttons_width
            height: buttons_height
            color: "transparent"
            //border.color: "black"
            x: 128
            y: 397
            //z: -1
            Image {
                id: imBye4
                anchors.fill: recB4
                anchors.margins: 1
                source: (but10.pressed || but11.pressed || but12.pressed || but4_1.pressed|| but4_2.pressed)
                    ? "images/МЕНЮ Служебные 1 страница2.png"
                    : "images/МЕНЮ Служебные 1 страница.png"
            }

            Rectangle {
                id:rec10
                x: mouse_range1_x
                y: mouse_range1_y
                z: 1
                width: mouse_range1_width
                height: mouse_range1_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but10
                    anchors.fill: rec10
                    onClicked: {
                        console.log("Button 4444 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec11
                x: mouse_range2_x
                y: mouse_range2_y
                z: 1
                width: mouse_range2_width
                height: mouse_range2_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but11
                    anchors.fill: rec11
                    onClicked: {
                        console.log("Button 44444 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec12
                x: mouse_range3_x
                y: mouse_range3_y
                z: 1
                width: mouse_range3_width
                height: mouse_range3_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but12
                    anchors.fill: rec12
                    onClicked: {
                        console.log("Button 444444 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec4_4
                x: mouse_range4_x
                y: mouse_range4_y
                z: 1
                width: mouse_range4_width
                height: mouse_range4_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but4_1
                    anchors.fill: rec4_4
                    onClicked: {
                        console.log("Button 444444 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec4_5
                x: mouse_range5_x
                y: mouse_range5_y
                z: 1
                width: mouse_range5_width
                height: mouse_range5_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but4_2
                    anchors.fill: rec4_5
                    onClicked: {
                        console.log("Button 444444 clicked.");
                    }
                }
            }

        }

        Rectangle {
            id: recB5
            width: buttons_width
            height: buttons_height
            color: "transparent"
            //border.color: "black"
            x: 350
            y: 397
            //z: -1
            Image {
                id: imBye5
                anchors.fill: recB5
                anchors.margins: 1
                source: (but13.pressed || but14.pressed || but15.pressed || but5_1.pressed|| but5_2.pressed)
                    ? "images/МЕНЮ Измерения 1 страница2.png"
                    : "images/МЕНЮ Измерения 1 страница.png"
            }

            Rectangle {
                id:rec13
                x: mouse_range1_x
                y: mouse_range1_y
                z: 1
                width: mouse_range1_width
                height: mouse_range1_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but13
                    anchors.fill: rec13
                    onClicked: {
                        console.log("Button 5555 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec14
                x: mouse_range2_x
                y: mouse_range2_y
                z: 1
                width: mouse_range2_width
                height: mouse_range2_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but14
                    anchors.fill: rec14
                    onClicked: {
                        console.log("Button 55555 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec15
                x: mouse_range3_x
                y: mouse_range3_y
                z: 1
                width: mouse_range3_width
                height: mouse_range3_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but15
                    anchors.fill: rec15
                    onClicked: {
                        console.log("Button 5555 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec5_4
                x: mouse_range4_x
                y: mouse_range4_y
                z: 1
                width: mouse_range4_width
                height: mouse_range4_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but5_1
                    anchors.fill: rec5_4
                    onClicked: {
                        console.log("Button 55555 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec5_5
                x: mouse_range5_x
                y: mouse_range5_y
                z: 1
                width: mouse_range5_width
                height: mouse_range5_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but5_2
                    anchors.fill: rec5_5
                    onClicked: {
                        console.log("Button 55555 clicked.");
                    }
                }
            }

        }

        Rectangle {
            id: recB6
            width: buttons_width
            height: buttons_height
            color: "transparent"
            //border.color: "black"
            x: 17
            y: 573
            //z: -1
            Image {
                id: imBye6
                anchors.fill: recB6
                anchors.margins: 1
                source: (but16.pressed || but17.pressed || but18.pressed || but6_1.pressed|| but6_2.pressed)
                    ? "images/МЕНЮ Ошибка 1 страница2.png"
                    : "images/МЕНЮ Ошибка 1 страница.png"
            }

            Rectangle {
                id:rec16
                x: mouse_range1_x
                y: mouse_range1_y
                z: 1
                width: mouse_range1_width
                height: mouse_range1_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but16
                    anchors.fill: rec16
                    onClicked: {
                        console.log("Button 666666 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec17
                x: mouse_range2_x
                y: mouse_range2_y
                z: 1
                width: mouse_range2_width
                height: mouse_range2_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but17
                    anchors.fill: rec17
                    onClicked: {
                        console.log("Button 6666 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec18
                x: mouse_range3_x
                y: mouse_range3_y
                z: 1
                width: mouse_range3_width
                height: mouse_range3_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but18
                    anchors.fill: rec18
                    onClicked: {
                        console.log("Button 666666 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec6_4
                x: mouse_range4_x
                y: mouse_range4_y
                z: 1
                width: mouse_range4_width
                height: mouse_range4_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but6_1
                    anchors.fill: rec6_4
                    onClicked: {
                        console.log("Button 66666 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec6_5
                x: mouse_range5_x
                y: mouse_range5_y
                z: 1
                width: mouse_range5_width
                height: mouse_range5_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but6_2
                    anchors.fill: rec6_5
                    onClicked: {
                        console.log("Button 66666 clicked.");
                    }
                }
            }

        }

        Rectangle {
            id: recB7
            width: buttons_width
            height: buttons_height
            color: "transparent"
            //border.color: "black"
            x: 239
            y: 573
            //z: -1
            Image {
                id: imBye7
                anchors.fill: recB7
                anchors.margins: 1
                source: (but19.pressed || but20.pressed || but21.pressed || but7_1.pressed|| but7_2.pressed)
                    ? "images/МЕНЮ Разогрев 1 страница2.png"
                    : "images/МЕНЮ Разогрев 1 страница.png"
            }

            Rectangle {
                id:rec19
                x: mouse_range1_x
                y: mouse_range1_y
                z: 1
                width: mouse_range1_width
                height: mouse_range1_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but19
                    anchors.fill: rec19
                    onClicked: {
                        console.log("Button 77777 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec20
                x: mouse_range2_x
                y: mouse_range2_y
                z: 1
                width: mouse_range2_width
                height: mouse_range2_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but20
                    anchors.fill: rec20
                    onClicked: {
                        console.log("Button 77777 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec21
                x: mouse_range3_x
                y: mouse_range3_y
                z: 1
                width: mouse_range3_width
                height: mouse_range3_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but21
                    anchors.fill: rec21
                    onClicked: {
                        console.log("Button 7777 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec7_4
                x: mouse_range4_x
                y: mouse_range4_y
                z: 1
                width: mouse_range4_width
                height: mouse_range4_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but7_1
                    anchors.fill: rec7_4
                    onClicked: {
                        console.log("Button 77777 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec7_5
                x: mouse_range5_x
                y: mouse_range5_y
                z: 1
                width: mouse_range5_width
                height: mouse_range5_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but7_2
                    anchors.fill: rec7_5
                    onClicked: {
                        console.log("Button 77777 clicked.");
                    }
                }
            }

        }

        Rectangle {
            id: recB8
            width: buttons_width
            height: buttons_height
            color: "transparent"
            //border.color: "black"
            x: 128
            y: 750
            //z: -1
            Image {
                id: imBye8
                anchors.fill: recB8
                anchors.margins: 1
                source: (but22.pressed || but23.pressed || but24.pressed || but8_1.pressed|| but8_2.pressed)
                    ? "images/МЕНЮ Калибровка 1 страница2.png"
                    : "images/МЕНЮ Калибровка 1 страница.png"
            }

            Rectangle {
                id:rec22
                x: mouse_range1_x
                y: mouse_range1_y
                z: 1
                width: mouse_range1_width
                height: mouse_range1_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but22
                    anchors.fill: rec22
                    onClicked: {
                        console.log("Button 88888 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec23
                x: mouse_range2_x
                y: mouse_range2_y
                z: 1
                width: mouse_range2_width
                height: mouse_range2_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but23
                    anchors.fill: rec23
                    onClicked: {
                        console.log("Button 888 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec24
                x: mouse_range3_x
                y: mouse_range3_y
                z: 1
                width: mouse_range3_width
                height: mouse_range3_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but24
                    anchors.fill: rec24
                    onClicked: {
                        console.log("Button 8888 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec8_4
                x: mouse_range4_x
                y: mouse_range4_y
                z: 1
                width: mouse_range4_width
                height: mouse_range4_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but8_1
                    anchors.fill: rec8_4
                    onClicked: {
                        console.log("Button 88888 clicked.");
                    }
                }
            }

            Rectangle {
                id:rec8_5
                x: mouse_range5_x
                y: mouse_range5_y
                z: 1
                width: mouse_range5_width
                height: mouse_range5_height
                color: "transparent"
                //border.color: "red"

                MouseArea {
                    id: but8_2
                    anchors.fill: rec8_5
                    onClicked: {
                        console.log("Button 88888 clicked.");
                    }
                }
            }

        }
    }

    Page {
        id: view2
        visible: false

        Row {
            spacing: 100
            anchors.centerIn: parent

            Button {
                text: "BACK"
                onClicked: stack.pop(mainView);
            }

            Button {
                text: "EXIT"
                onClicked: Qt.quit();

            }
        }
    }
}


