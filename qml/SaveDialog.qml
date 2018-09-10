import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Popups 1.3
import QtQuick.LocalStorage 2.0
import "Storage.js"  as Storage


  /*
     Save or update a grid content, depending on if a previous content was loaded
  */
   Dialog {
            id: dialogueSaveAs
            title: i18n.tr("Save")

            /* passed as input from the caller */
            property string content;
            property string currentOpenedContentName;

            Column{
                  id: mainColumn
                  spacing: units.gu(2)
                  width: parent.width

                  Row{
                      anchors.horizontalCenter: parent.horizontalCenter

                      TextField {
                          focus: true
                          id: fileNameField
                          hasClearButton: true
                          inputMethodHints: Qt.ImhNoPredictiveText /* disable text prediction with underlining */
                          Component.onCompleted: {
                             fileNameField.text= dialogueSaveAs.currentOpenedContentName;
                          }
                      }
                  }

                 Row{
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: units.gu(2)
                    Button {
                        id:saveButton
                        width: units.gu(12)
                        text: i18n.tr("Save")
                        color: UbuntuColors.green
                        enabled: fileNameField.text.trim()
                        onClicked: {

                             if(fileNameField.text.trim() === dialogueSaveAs.currentOpenedContentName) {
                                     //console.log("Updating content: "+currentOpenedContentName);
                                     Storage.updateGridContent(currentOpenedContentName, dialogueSaveAs.content);
                                     resultLabel.color = UbuntuColors.green
                                     resultLabel.text = i18n.tr("Update successfully")+" !"
                                     saveButton.enabled = false;

                              }else if (fileNameField.text.trim() !== dialogueSaveAs.currentOpenedContentName) {
                                     //console.log("Saving new content: "+fileNameField.text.trim());
                                     Storage.insertGridContent(fileNameField.text.trim(), dialogueSaveAs.content);
                                     resultLabel.color = UbuntuColors.green
                                     resultLabel.text = i18n.tr("Insert successfully")+" !"
                                     root.currentOpenedContentName = fileNameField.text.trim();
                                     saveButton.enabled = false;
                              }
                         }
                     }

                     Button {
                          text: i18n.tr("Close")
                          width: units.gu(12)
                          onClicked: {
                              PopupUtils.close(dialogueSaveAs)

                              root.setGridName(fileNameField.text.trim());
                              root.setGridContent(dialogueSaveAs.content);
                          }
                     }

                   }

                   Row{
                       anchors.horizontalCenter: parent.horizontalCenter
                       id: messageRow
                       Label{
                          id:resultLabel
                          text : ""
                          Component.onCompleted: {
                             if(dialogueSaveAs.currentOpenedContentName !== ""){
                                 resultLabel.text= i18n.tr("Press only Save to update");
                             }
                          }
                       }
                   }
               }

        }
