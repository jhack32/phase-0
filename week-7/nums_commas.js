// Separate Numbers with Commas in JavaScript **Pairing Challenge**

// I worked on this challenge with: Marie-France Han..

// Pseudocode
// create a function that accepts an integer
//    doesn't change the integer under 1000
//    convert argument to string
//    split string into array
//    reverse array
//    split myArray into arrays of 3
//    reverse array and join into an integer
// close the function

// Initial Solution
function separateComma(i) {
  var myArray = [];
  var subArray = [];
  var counter = 3;
  if (i < 1000) {
    return i;
  }
  else {
    i = i.toString()
    myArray = i.split('')
    myArray = myArray.reverse()
    while (counter < myArray.length) {
      myArray.splice(counter, 0, ",");
      counter += 4
    }
  return myArray.reverse().join("")
}


// Refactored Solution

function separateComma(i) {
  var myArray = [];
  if (i < 1000) {
    return i;
  }
  else {
    myArray = i.toString().split('').reverse()
    for (var index = 3; index < myArray.length; index += 4) {
      myArray.splice(index, 0, ",");
      }
    return myArray.reverse().join("");
    }
  }
}



// Your Own Tests (OPTIONAL)

console.log(separateComma(123456789))
console.log(separateComma(1234567890))
console.log(separateComma(12345678923))
console.log(separateComma(123456789123))

// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

Our approach to the problem was the same as if we were to approach it if we were writing it in Ruby. We started with pseudocode and thought of it like any other problem. We broke it down. We did have issues with our loop. It was the placement of our commas and where we want it to be placed when it's looping.

What did you learn about iterating over arrays in JavaScript?

The scope of variables is important. When we defined a variable in our loop, it should be defined before our loop and called inside the loop. If we defined it in the loop, it would only be able to be used inside the loop.

What was different about solving this problem in JavaScript?

The syntax definitely threw us off a little. The methods and everything was the same, but there were some rules in JavaScript that doesn't apply in Ruby. The semicolons and parenthesis can make a difference in the code.

What built-in methods did you find to incorporate in your refactored solution?

We used the for loop in the refactored solution. It's very similar to the while loop with a counter. We also found splice which was a new method we learned in this challenge.

*/