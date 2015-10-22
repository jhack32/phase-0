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
 //   for (var index = 0; index < myArray.length; index += 2) {
  //    myArray.splice(0, 3, ",")
  //  }
  }
  return myArray.reverse().join("")
}


// Refactored Solution

function separateComma(i) {
  var myArray = [];
  var counter = 3;
  if (i < 1000) {
    return i;
  }
  else {
    myArray = i.toString().split('').reverse()
    while (counter < myArray.length) {
      myArray.splice(counter, 0, ",")
      counter += 4
    }
    return myArray.reverse().join("")
  }
}



// Your Own Tests (OPTIONAL)

console.log(separateComma(123456789))
console.log(separateComma(1234567890))
console.log(separateComma(12345678923))
console.log(separateComma(123456789123))

// Reflection