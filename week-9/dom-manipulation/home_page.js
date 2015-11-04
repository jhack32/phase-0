// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 1:
var release0 = document.getElementById("release-0");
release0.className = "done";

// Release 2:
var release1 = document.getElementById("release-1");
release1.style.display = "none";

// Release 3:
var release2 = document.getElementsByTagName("h1")[0];
release2.innerHTML = "I completed release 2.";


// Release 4:
var release4 = document.getElementById("release-3");
release4.style.backgroundColor = "#955251";


// Release 5:
var release5 = document.getElementsByClassName("release-4");
for (var i=0; i < 2; i++) {
    release5[i].style.fontSize = "2em";
}

// release5[0].style.fontSize = "2em";
//release5[1].style.fontSize = "2em";

// var release5 = release4.getElementsByClassName("release-4");
// release5[0].style.fontSize = "2em";

// var release5b = release0.getElementsByClassName("release-4");
// release5b[0].style.fontSize = "2em";


// Release 6:
var release6 = document.querySelector("#hidden");
var clone = document.importNode(release6.content, true);
document.body.appendChild(clone);
