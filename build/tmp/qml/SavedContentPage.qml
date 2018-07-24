import QtQuick 2.4
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3 as ListItem
import Ubuntu.Components.Popups 1.3
import Ubuntu.Web 0.2
import Qt.labs.settings 1.0
import QtQuick.LocalStorage 2.0
import "Storage.js" as Storage


Page {
    id: savedContentPage
    anchors.fill: parent

    /*
      Ask confirm before remove all locally saved grid contents
     */
     Component{
          id: confirmComponent

          Dialog {
              id: confirmDialogue
              title: i18n.tr("Attention")
              text: i18n.tr("Remove ALL saved contents ? (No restore)")

              Row{
                  anchors.horizontalCenter: parent.horizontalCenter
                  spacing: units.gu(2)

                  Button {
                      text: i18n.tr("Close")
                      onClicked: PopupUtils.close(confirmDialogue)
                      width: units.gu(14)
                  }

                  Button {
                      text:  i18n.tr("Delete")
                      color: UbuntuColors.red
                      width: units.gu(14)
                      onClicked: {
                          Storage.deleteAllContent();
                          savedContentNameListModel.clear();
                      }
                  }
              }
         }
    }

    header: PageHeader {
          id: header
          title: i18n.tr("Saved content")+": "+ savedContentNameListModel.count

          trailingActionBar.actions: [

              Action {
                    id: deleteAll
                    text: i18n.tr("Delete all")
                    iconName: "delete"
                    onTriggered: {
                        PopupUtils.open(confirmComponent)
                    }
              }
          ]
    }

    Component.onCompleted: {
        Storage.loadAllContentName();
    }

    ListModel{
        id:savedContentNameListModel
    }

    /* placeholder */
    Rectangle {
         color: "transparent"
         width: parent.width
         height: units.gu(6)
    }

    /* show the list of locally saved files (the folder is the App one, due to apps confinement) */
    UbuntuListView {
        id: ubuntuListView
        anchors.fill: parent
        anchors.topMargin: units.gu(7) /* amount of space from the above component */
        clip: true
        /* disable the dragging of the model list elements */
        boundsBehavior: Flickable.StopAtBounds
        model: savedContentNameListModel
        delegate: SavedContentsDelegate{}
    }

}
