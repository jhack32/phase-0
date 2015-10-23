// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var hello = "String 1"
hello = "New String"
var hello_two = "String 2"
console.log(hello + hello_two)

//Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.

//prompt("What's your favorite food?")
//alert("Hey, that's mine too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
//Looping a Triangle

for (var triangle = "#"; triangle.length <= 7; triangle += "#") {
  console.log(triangle);
}

for (var num = 0; num <= 100; num++) {
  if (num % 3 === 0 && num % 5 === 0)
    console.log("FizzBuzz")
  else if (num % 3 === 0)
    console.log("Fizz")
  else if (num % 5 === 0)
    console.log("Buzz")
}

/*
for (var num = 0; num <= 100; num++) {
  string = "";
  if (num % 3 === 0)
    string += "Fizz"
  if (num % 5 === 0)
    string += "Buzz"
  console.log(string)
}
*/
// Functions

// Complete the `minimum` exercise.
function min(num1, num2) {
  if (num1 < num2)
    return num1;
  else
    return num2;
}
console.log(min(0,10));
console.log(min(0,-10));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Jack",
  age: 23,
  Food: "pizza, sushi, baked ziti",
  quirk: "I put on my left shoe first."
}