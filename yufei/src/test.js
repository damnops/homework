'use strict';

var url = 'http://localhost:3000/config';

fetch(url).then(function(data) {
    return data.json();
}).then(function(data) {
  console.log(data);
  const testEle = document.getElementById("test");
  testEle.appendChild(makeUL(data));
});

function makeUL(array) {
    // Create the list element:
    var list = document.createElement('ul');

    for(var i = 0; i < array.length; i++) {
        // Create the list item:
        var item = document.createElement('li');

        // Set its contents:
        item.appendChild(document.createTextNode(array[i].v));

        // Add it to the list:
        list.appendChild(item);
    }

    // Finally, return the constructed list:
    return list;
}
