# ITchibbo

//xml 받아온 text 데이터저장했다고 치고.
responseText

var parser = new DOMParser();

var parsedDom = parser.parseFromString(responseText, "text/xml");

var positions = parsedDom.getElementsByTagName("position");

var title = positions[0].getElementsByTagName("title")[0].innerHTML;

//CDATA가 필요없으면
var title = positions[0].getElementsByTagName("title")[0].textContent
