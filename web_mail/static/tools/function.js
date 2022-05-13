function Regex(html, regex) {
    var myArray = regex.exec(html);
    return myArray;
}

function stringinstr(html, str) {
    var n = html.indexOf(str);
    return n;
}


function escapeRegExp(str) {
    return str.replace(/([.*+?^=!:${}()|\[\]\/\\])/g, "\\$1");
}

function replaceAll(str, find, replace) {
    return str.replace(new RegExp(escapeRegExp(find), 'g'), replace);
}