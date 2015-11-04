// U3.W9:JQuery


// I worked on this challenge [Jay Yee and Jack Huang].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 1:
  //link the image

//RELEASE 2:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 3:
  //Add code here to select elements of the DOM
headElement = $("head");
bodyElement = $("body");


//RELEASE 4:
  // Add code here to modify the css and html of DOM elements
$("h1:first").css({'color': 'green', "border": "1px solid black", "visibility": "initial"});
$(".mascot > h1").html("Copperheads");

//RELEASE 5: Event Listener
  // Add the code for the event listener here
 $("img").mouseover(function(e) {
    e.preventDefault()
    $(this).attr('src', 'copperhead.jpeg');
 });
  // Shows the original dbc logo on click
$("img").mouseout(function() {
  $(this).attr('src', 'dbc_logo.png')
})


//RELEASE 6: Experiment on your own

$('img').click(function() {
  $(this).animate({opacity: .25, height: "toggle"},
   5000, function(){ $(this).animate({height:"toggle", opacity: 1})
  });
});


}) // end of the document.ready function: do not remove or write DOM manipulation below this.

/*
What is jQuery?

jQuery is a JavaScript library.

What does jQuery do for you?

It makes things easier and simpler to use.

What did you learn about the DOM while working on this challenge?

The challenge helped me solidify some concepts like when we try to access something within an id.

*/