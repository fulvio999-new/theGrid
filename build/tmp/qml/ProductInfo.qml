import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Popups 1.3



/* General info about the application */
Dialog {
       id: aboutDialogue
       title: i18n.tr("Product Info")
       text: "theGrid: "+ i18n.tr("version")+ ":"+root.appVersion+"<br>"+ i18n.tr("Author")+": "+"fulvio"+"<br><br>"+
             i18n.tr("A simple and basic spreadsheet based on Sensei Grid component (https://github.com/datazenit/sensei-grid)")+"<br>"+
             i18n.tr("Released with MIT license")
       Button {
           text:  i18n.tr("Close")
           onClicked: PopupUtils.close(aboutDialogue)
       }
}
