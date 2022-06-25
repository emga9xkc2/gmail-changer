function includeHTML() {
  var z, i, elmnt, file, xhttp;
  /*loop through a collection of all HTML elements:*/
  z = document.getElementsByTagName("*");
  for (i = 0; i < z.length; i++) {
    elmnt = z[i];
    /*search for elements with a certain atrribute:*/
    file = elmnt.getAttribute("w3-include-html");
    if (file) {
      /*make an HTTP request using the attribute value as the file name:*/
      xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function () {
        if (this.readyState == 4) {
          if (this.status == 200) {
            elmnt.innerHTML = this.responseText;
          }
          if (this.status == 404) {
            elmnt.innerHTML = "Page not found.";
          }
          /*remove the attribute, and call this function once more:*/
          elmnt.removeAttribute("w3-include-html");
          includeHTML();
        }
      };
      xhttp.open("GET", file, true);
      xhttp.send();
      /*exit the function:*/
      return;
    }
  }
}
function reloadUrl() {
  location.reload();
}
function httpGet(theUrl, authorization = "") {
  var xmlHttp = new XMLHttpRequest();
  xmlHttp.open("GET", theUrl, false); // false for synchronous request
  if (authorization != "") {
    xmlHttp.setRequestHeader("Authorization", authorization);
  }
  xmlHttp.send(null);
  return xmlHttp.responseText;
}
function setHtmlCssSelector(cssSelector, html) {
  $(cssSelector).html(html);
}
function httpGetJson(theUrl, authorization = "") {
  var html = httpGet(theUrl, authorization);
  return JSON.parse(html);
}
function httpPost(theUrl, data, authorization = "") {
  var xhr = new XMLHttpRequest();
  xhr.open("POST", theUrl, true);
  if (authorization != "") {
    xhr.setRequestHeader("Authorization", authorization);
  }
  xhr.setRequestHeader("Content-Type", "application/json");
  xhr.send(JSON.stringify(data));
  return xhr.responseText;
}
function httpPostReturnJson(theUrl, data, authorization = "") {
  var html = httpPost(theUrl, data, authorization);
  console.log("_______" + html);
  return JSON.parse(html);
}
function CopyTextareaToClipboard(idtextarea) {
  let textarea = document.getElementById(idtextarea);
  textarea.select();
  document.execCommand("copy");
  toastr.success("Sao chép thành công");
}

function Regex(html, regex) {
  var myArray = regex.exec(html);
  return myArray;
}

function Contains(html, str) {
  var n = html.indexOf(str);
  if (n >= 0) {
    return true;
  }
  return false;
}

function escapeRegExp(str) {
  return str.replace(/([.*+?^=!:${}()|\[\]\/\\])/g, "\\$1");
}

function replaceAll(str, find, replace) {
  return str.replace(new RegExp(escapeRegExp(find), "g"), replace);
}

function CheckLogin() {
  if (Contains(window.location.pathname, "/post/")) {
    return;
  }
  $.ajax({
    url: "/account/info",
    type: "get",
    dataType: "text",
    success: function (result) {
      const obj = JSON.parse(result);
      var user = obj.user;
      if (
        window.location.pathname == "/login.html" ||
        window.location.pathname == "/signup.html"
      ) {
        if (user != "") {
          window.location.href = "/index.html";
        }
      } else {
        if (user === "") {
          window.location.href = "/login.html";
        }
      }
    },
  });
}
// Implementation in ES6
function pagination(c, m) {
  var current = c,
    last = m,
    delta = 2,
    left = current - delta,
    right = current + delta + 1,
    range = [],
    rangeWithDots = [],
    l;

  for (let i = 1; i <= last; i++) {
    if (i == 1 || i == last || (i >= left && i < right)) {
      range.push(i);
    }
  }

  for (let i of range) {
    if (l) {
      if (i - l === 2) {
        rangeWithDots.push(l + 1);
      } else if (i - l !== 1) {
        rangeWithDots.push("...");
      }
    }
    rangeWithDots.push(i);
    l = i;
  }

  return rangeWithDots;
}
function editClassActive() {
  var el = $("ul.yoo-sidebar-nav-list.yoo-mp0 > li");
  var url = window.location.pathname;
  if (url == "/") {
    url = "/index.html";
  }
  for (i = 0; i < el.length; i++) {
    var element = el[i];
    var outerHTML = element.outerHTML;
    var z1 = outerHTML.includes(url);
    if (z1 === true) {
      // if (url == "/index.html") {
      $("ul.yoo-sidebar-nav-list.yoo-mp0 > li:nth-child(" + (i + 1) + ")").attr(
        "class",
        "active"
      );
      // } else {
      // $(
      //   "ul.yoo-sidebar-nav-list.yoo-mp0 > li:nth-child(" + (i + 1) + ")"
      // ).attr("style", "color: #007bff");
      // }
    }
  }
}
function getTime() {
  var currentdate = new Date();
  var datetime =
    currentdate.getDate() +
    "/" +
    (currentdate.getMonth() + 1) +
    "/" +
    currentdate.getFullYear() +
    " - " +
    currentdate.getHours() +
    ":" +
    currentdate.getMinutes() +
    ":" +
    currentdate.getSeconds();
  return datetime;
}
function splitLines(subject) {
  var result = subject.split(/\r?\n/);
  return result;
}
function downloadFile(filename, text) {
  var element = document.createElement("a");
  element.setAttribute(
    "href",
    "data:text/plain;charset=utf-8," + encodeURIComponent(text)
  );
  element.setAttribute("download", filename);

  element.style.display = "none";
  document.body.appendChild(element);

  element.click();

  document.body.removeChild(element);
}
function downloadFileCu(filename, content) {
  let csvContent = "data:text;charset=utf-8," + content;
  var encodedUri = encodeURI(csvContent);
  var link = document.createElement("a");
  link.setAttribute("href", encodedUri);
  link.setAttribute("download", filename);
  document.body.appendChild(link);
  link.click();
}
function getSelectedCombo(id) {
  var e = document.getElementById(id);
  var strUser = e.options[e.selectedIndex].text;
  return strUser;
}
function openDataNewTab(result) {
  result = result.replace("\n", "<br>");
  result = result.replace("\r", "<br>");
  var myWindow = window.open("", "");
  myWindow.document.write(result);
}
function Sleep(ms) {
  return new Promise((r) => setTimeout(r, ms));
}
function sleep(ms) {
  return new Promise((r) => setTimeout(r, ms));
}
includeHTML();
// CheckLogin();
editClassActive();
