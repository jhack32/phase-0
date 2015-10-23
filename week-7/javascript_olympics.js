 // JavaScript Olympics

// I paired [Aaron Tsai] on this challenge.

// This challenge took me [1.5] hours.


// Warm Up
var a = function() {
  console.log("Function expression")
}
function a() {
  console.log("Function declaration")
  console.log ("Constructor function")
}


// Bulk Up
var jordan = {
  name: "Michael Jordan",
  event: "Basketball",
}
var curry = {
  name: "Stephen Curry",
  event: "Basketball",
}
var athlete = [jordan, curry];
function bulkUp(athlete) {
  for (var i = 0; i < athlete.length; i++) {
    athlete[i].win = athlete[i].name + " has won " + athlete[i].event;
    console.log(athlete[i].win)
  }
}

bulkUp(athlete);
// Jumble your words

function reverse (str) {
  var rev = "";
  for (var i = str.length-1 ; i > -1; i--) {
    rev += str[i];
  }
  console.log(rev);
}

reverse("Hello")

// 2,4,6,8

function evenNumbers(array) {
  var evenArray = [];
  for (var i = 0; i < array.length; i++) {
    if (array[i] % 2 === 0) {
      evenArray += array[i];
    }
  }
  console.log(evenArray)
}

evenNumbers([1,2,3,4,5])

// "We built this city"

function Athlete(name, age, sport, quote) {
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?

Everything. I wasn't too sure about functions and syntax of it along with arrays but after doing it in this challenge, i feel like i have a better understanding. I learned what constructor functions/declarations are as well.

What are constructor functions?

Constructor functions are functions that are defined by just calling function and the function name. It's preferred when you want to do some work before the Object is created. The constructor object will have properties defined within it and is done by adding a this. in front. The syntax from defining an object in a constructor function vs literal is different.

How are constructors different from Ruby classes (in your research)?

Ruby uses Class to create new objects but JavaScript can use constructor functions or literal objects to create new objects. A constructor only contains one method as well whereas Ruby classes can contain multiple methods within the class. The scope of a constructor function is also very limited. The variables created are only available within the scope. If we were to created 2 functions within each other and a variable in function 2, we wouldn't be able to access it in function 1. In ruby, we have class variables that can be accessed anywhere in the Class scope.

*/