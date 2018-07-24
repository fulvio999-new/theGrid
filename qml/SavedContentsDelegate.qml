import QtQuick 2.4
import QtQuick.LocalStorage 2.0
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3
import Ubuntu.Components.Popups 1.3
import "Storage.js" as Storage


/*
  Show as List the currently saved Grid contents with the actions associated for each item:
  - open
  - delete
*/
ListItem {
   id: listItem
   width: root.width

   divider.visible: false
   /* covers the entire delegate */
   MouseArea {
       id: selectableMouseArea
       anchors.fill: parent
       onClicked: {
            /* move the selected item */
            ubuntuListView.currentIndex = index
        }
   }

   Label {
       id: label
       anchors.horizontalCenter: parent.horizontalCenter
       anchors.verticalCenter: parent.verticalCenter
       text: "<b>"+content_name+"</b>"
   }

   /* Swipe to right movement: delete selected item */
   leadingActions: ListItemActions {
       actions: [
           Action {
               iconName: "delete"
               onTriggered: {

                  /* move selected item, in case of is not selected before */
                  ubuntuListView.currentIndex = index
                  console.log("Removing: "+content_name);
                  console.log("Current opened: "+root.currentOpenedContentName);
                  Storage.deleteGridContent(content_name);
                  savedContentNameListModel.remove(index);

                  if(root.currentOpenedContentName == content_name ){
                    console.log("Removing currently opened file...");
                    root.currentOpenedContentName = "";
                    root.setGridContent([]);
                  }
               }
           }
       ]
   }

   /* Swipe to right movement: edit selected item */
   trailingActions: ListItemActions {
       actions: [
           Action {
               iconName: "edit"
               onTriggered: {

                  ubuntuListView.currentIndex = index
                  console.log("Content ot Open: "+content_name)
                  var contentToShow = Storage.loadContent(content_name);
                  root.setGridContent(contentToShow);
                  root.setGridName(content_name);
                  /* to have also grid name at QML level */
                  root.currentOpenedContentName = content_name;
                  pageStack.push(mainPage);
               }
           }
       ]
   }

}
