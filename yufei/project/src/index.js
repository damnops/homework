'use strict';

var url = 'http://localhost:3000/config';

fetch(url).then(function(data) {
    return data.json();
}).then(function(data) {
  const testEle = document.getElementById("config-data");
  testEle.appendChild(makeUL(data));
});

function makeUL(array) {
    var list = document.createElement('ul');

    for(var i = 0; i < array.length; i++) {
        var item = document.createElement('li');
        item.appendChild(document.createTextNode(array[i].v));
        list.appendChild(item);
    }

    return list;
}
