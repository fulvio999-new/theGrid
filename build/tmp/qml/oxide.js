/*
  Oxide is a web engine library based on Chromium.
  It provides a QtQuick WebView, which developers can use to embed web content in applications.
  Using Oxide we can communicate event from QML to html file shown in a WebView Component.
  This file is loaded from WebContext Component and BIND a QML event to html DOM event.

	Add here events that are raised from QML and catched from eventListener in html file

	NOTE: here we create different event for each Action to perform, but is possible create a generic one That
	contains the js functions to run (see uWriter app source code for example)
*/


/* To get Grid content to save as json */
oxide.addMessageHandler("GET_CONTENT", function (msg) {
  /*
		 Register a new event named 'GET_CONTENT' to be dispatched at html file, where a dedicated eventListener will catch it
   */
	 var event = new CustomEvent("GET_CONTENT", {detail: msg.args.code});
	 document.dispatchEvent(event);
	 msg.reply({str: "Event received: " + msg.args.code});

});


/* Set the Grid content to show */
oxide.addMessageHandler("SET_CONTENT", function (msg) {
  /*
     Here we create a custom DOM event on the html page. That event will be catched by an addEventListener attached at the DOM of the page.
     "LoadContent" is the name of the DOM event that we want dispatch at the html page
   */
	 var event = new CustomEvent("SET_CONTENT", {detail: msg.args.code});
	 document.dispatchEvent(event);
	 msg.reply({str: "Event received: " + msg.args.code});

});


/* Set the Grid content to show */
oxide.addMessageHandler("SET_GRID_NAME", function (msg) {

	 var event = new CustomEvent("SET_GRID_NAME", {detail: msg.args.code});
	 document.dispatchEvent(event);
	 msg.reply({str: "Event received: " + msg.args.code});

});
