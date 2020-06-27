import QtQuick 2.0
import QtQuick.Controls 2.2
import Converter 1.0


Rectangle{
    id: distance
    anchors.fill: parent
    color: "#1F1D1E"
    property variant values : []

    Converter{
        id: convert
    }

    TextField {
        id: mm
        objectName: "mm"
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        height: 30
        width: parent.width/2
        onTextEdited: {
            distance.values = convert.convertDistance("mm", mm.text)
            cm.text = values[1]
            dm.text = values[2]
            m.text = values[3]
            km.text = values[4]
        }

        Text{
            text: "Миллиметры"
            color: "white"
            anchors.right: parent.left
            anchors.rightMargin: 20
            font.pixelSize: 20
            anchors.top: parent.top
        }
    }

    TextField {
        id: cm
        objectName: "cm"
        anchors.top: mm.bottom
        anchors.topMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        height: 30
        width: parent.width/2
        onTextEdited: {
            distance.values = convert.convertDistance("cm", cm.text)
            mm.text = values[0]
            dm.text = values[2]
            m.text = values[3]
            km.text = values[4]
        }

        Text{
            text: "Сантиметры"
            color: "white"
            anchors.right: parent.left
            anchors.rightMargin: 20
            font.pixelSize: 20
            anchors.top: parent.top
        }
    }

    TextField {
        id: dm
        objectName: "dm"
        anchors.top: cm.bottom
        anchors.topMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        height: 30
        width: parent.width/2
        onTextEdited: {
            distance.values = convert.convertDistance("dm", dm.text)
            mm.text = values[0]
            cm.text = values[1]
            m.text = values[3]
            km.text = values[4]
        }

        Text{
            text: "Дециметры"
            color: "white"
            anchors.right: parent.left
            anchors.rightMargin: 20
            font.pixelSize: 20
            anchors.top: parent.top
        }
    }

    TextField {
        id: m
        objectName: "m"
        anchors.top: dm.bottom
        anchors.topMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        height: 30
        width: parent.width/2
        onTextEdited: {
            distance.values = convert.convertDistance("m", m.text)
            mm.text = values[0]
            cm.text = values[1]
            dm.text = values[2]
            km.text = values[4]
        }

        Text{
            text: "Метры"
            color: "white"
            anchors.right: parent.left
            anchors.rightMargin: 20
            font.pixelSize: 20
            anchors.top: parent.top
        }
    }

    TextField {
        id: km
        objectName: "km"
        anchors.top: m.bottom
        anchors.topMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        height: 30
        width: parent.width/2
        onTextEdited: {
            distance.values = convert.convertDistance("km", km.text)
            mm.text = values[0]
            cm.text = values[1]
            dm.text = values[2]
            m.text = values[3]
        }

        Text{
            text: "Километры"
            color: "white"
            anchors.right: parent.left
            anchors.rightMargin: 20
            font.pixelSize: 20
            anchors.top: parent.top
        }
    }
}
