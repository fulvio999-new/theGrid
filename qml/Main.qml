import QtQuick 2.4
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3
import Ubuntu.Web 0.2
import Qt.labs.settings 1.0
import QtQuick.LocalStorage 2.0
import "Storage.js" as Storage

import "Utility.js" as Utility

/*
  Oxide is a web engine library based on Chromium.
  It provides a QtQuick WebView, which developers can use to embed web content in applications.
*/
import com.canonical.Oxide 1.16 as Oxide
import Ubuntu.Components.Popups 1.3
import "uriUtils.js" as UriUtils


MainView {
    id: root
    objectName: 'mainView'
    applicationName: 'thegrid.fulvio'
    automaticOrientation: true

    property string appVersion : "1.0-BETA"

    /* the curently opened grid name */
    property string currentOpenedContentName: "";

    /*------- Tablet (width >= 110) -------- */
    //vertical
    //width: units.gu(75)
    //height: units.gu(111)

    //horizontal (rel)
    width: units.gu(100)
    height: units.gu(75)

    /* ----- phone 4.5 (the smallest one) ---- */
    //vertical
    //width: units.gu(50)
    //height: units.gu(96)

    //horizontal
    //width: units.gu(96)
    //height: units.gu(50)
    /* -------------------------------------- */

    Settings {
        id:settings
        /* to create or not DB tables */
        property bool isFirstUse: true;
    }

    Component.onCompleted: {
        if(settings.isFirstUse == true){
          Storage.createGridContentsTable();
          settings.isFirstUse = false;
        }
    }

    /* PopUp with Application info */
    Component {
       id: productInfo
       ProductInfo{}
    }

    /* SaveAs popUp */
    Component {
       id: saveDialog
       SaveDialog{}
    }

    Component {
       id:savedContentPage
       SavedContentPage{}
    }

    /*
      Called from QML when the user want save the grid content.
      It dispatch an event to the html using Oxide Library (see oxide.js).
      In html file there is a eventListener for that event name that extract input and with js code perform some logic
    */
    function getGridContent(code) {

        /*  Oxide dispatch the event "GET_CONTENT" at the listener in html file to tell him to get grid Data */
        var req = webview.rootFrame.sendMessage("messaging://", "GET_CONTENT", {code: code});

        req.onerror = function (code, explanation) {
           console.log("Error " + code + ": " + explanation)
        }
    }

    /* Called from SavePage.qml. It raise a Javascript event catched by a listener in the html */
    function setGridContent(code) {
        var req = webview.rootFrame.sendMessage("messaging://", "SET_CONTENT", {code: code});

        req.onerror = function (code, explanation) {
           console.log("Error " + code + ": " + explanation)
        }
    }

    /* Called from SaveContentsDelegate.qml when the user has selected a saved grid */
    function setGridName(code) {
        var req = webview.rootFrame.sendMessage("messaging://", "SET_GRID_NAME", {code: code});

        req.onerror = function (code, explanation) {
           console.log("Error " + code + ": " + explanation)
        }
    }


    PageStack {
       id: pageStack

       Component.onCompleted: {
          pageStack.push(mainPage)
       }

       Page {
           id: mainPage
           anchors.fill: parent

           header: PageHeader {
                 id: header
                 title: i18n.tr("theGrid")

                 /* leadingActionBar is the bar on the left side */
                 leadingActionBar.actions: [
                      Action {
                          id: aboutPopover
                          /* note: icons names are file names under: /usr/share/icons/suru/actions/scalable */
                          iconName: "info"
                          text: i18n.tr("About")
                          onTriggered:{
                             PopupUtils.open(productInfo)
                          }
                      }
                ]
                /* Save grid content */
                trailingActionBar.actions: [

                      /* save currently opend content */
                      Action {
                          id: saveFile
                          text: i18n.tr("Save")
                          iconSource: Qt.resolvedUrl("./graphics/save.png")
                          iconName: "save"
                          onTriggered: {
                              root.getGridContent();
                          }
                      },

                      Action {
                         id: openFile
                         text: i18n.tr("Open")
                         iconSource: Qt.resolvedUrl("./graphics/open.png")
                         onTriggered: {
                            //goto save content page
                            pageStack.push(savedContentPage);
                         }
                      }
                ]
         }

      Flickable {
            id: resultPageFlickable
            clip: true
            contentHeight: Utility.getContentHeight()
            anchors {
                       top: parent.top
                       /* to don't hide the opened grid content name */
                       topMargin: units.gu(5)
                       left: parent.left
                       right: parent.right
                       bottom: mainPage.bottom
                       bottomMargin: units.gu(2)
            }

             WebContext {
                    id: webcontext
                    userAgent: "Mozilla/5.0 (Linux; Android 5.0; Nexus 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"
                    userScripts: [
                        /* to load che config file for Oxide library */
                        Oxide.UserScript {
                            context: "messaging://"
                            url: Qt.resolvedUrl("oxide.js")
                        }
                    ]
             }

             WebView {
                 id: webview
                 //anchors.top: header.bottom
                 //anchors.bottom: parent.bottom
                 //anchors.left: parent.left
                 //anchors.right: parent.right
                 anchors.fill: parent
                 context: webcontext
                 url: "./www/index.html"
                 preferences.allowFileAccessFromFileUrls: true
                 preferences.allowUniversalAccessFromFileUrls: true
                 preferences.appCacheEnabled: true
                 preferences.javascriptCanAccessClipboard: true
                 preferences.javascriptEnabled: true

                 /* handle ALL the navigation request coming from index.html
                    (ie: page changes coming from html when window.location is called from js function

                    V. https://github.com/bhdouglass/recipe-boss/blob/master/ubuntu-touch-app/qml/Main.qml#L74 usa evento onUrlChanged
                 */
                 onNavigationRequested:{

                     //depending on the request navigation, decide the action to perform.
                     var url = request.url.toString();

                     /* Save grid content as json */
                     if (UriUtils.url_starts_with(url, 'http://savejson/')) {
                         //console.log("Saving request intercepted from index.html");
                         var urlContent = request.url.toString().replace(/^http:\/\/savejson\//,'');
                         /* extract from the url the json to save in the DB */
                         var jsonDecoded = decodeURIComponent(urlContent);

                         PopupUtils.open(saveDialog,root, {content:jsonDecoded, currentOpenedContentName:root.currentOpenedContentName});
                     }
                 }
             }

         } //flickable


         /* To show a scrolbar on the side */
         Scrollbar {
             flickableItem: resultPageFlickable
             align: Qt.AlignTrailing
         }

     }

  } //pageStack

}
