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

Our approach to the problem was the same but we did have issues writing the problem. We wrote our

What did you learn about iterating over arrays in JavaScript?



What was different about solving this problem in JavaScript?



What built-in methods did you find to incorporate in your refactored solution?



*/