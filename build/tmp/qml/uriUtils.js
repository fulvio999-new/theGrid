function openFile(fileUrl) {
    var request = new XMLHttpRequest()
    request.open('GET', "/home/phablet/.local/share/uwp.costales/" + fileUrl)
    request.onreadystatechange = function(event) {
        if (request.readyState == XMLHttpRequest.DONE) {
            var text = request.responseText.replace(/(?:\r\n|\r|\n)/g, '<br />').replace(/"/g, '\\"');
            var html = text.replace(/^<html><head><meta charset=\\"UTF-8\\"><style>body {font-family:Ubuntu;font-size:12pt;}<\/style><\/head><body>/, '').replace(/<\/body><\/html>$/, '');
            pageStack.executeJavaScript("tinyMCE.activeEditor.setContent(\"" + html + "\")");
        }
    }
    request.send();
}


function url_starts_with(url, start) {
    if (url.substring(0, start.length) == start)
        return true;
    else
        return false;
}
