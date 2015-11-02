/*
Challenge: Super FizzBuzz

Pseudocode:
create a function that takes an array
  loop through the array with an index
    if the current number is divisible by 15
      convert the number into a string
      replace the value with "Fizz"
    else if the current number is divisible by 5
      convert the number into a string
      replace the value with "Buzz"
    else if the current number is divisible by 3
      convert the number into a string
      replace the value with "FizzBuzz"
    end the conditional
  end the loop
end the function

*/

var super_fizzbuzz = function(arr, index) {
  for (var num in arr) {
    if (arr[num] % 15 === 0) {
      replaceTheNum(arr, num, "FizzBuzz")
    }
    else if (arr[num] % 5 === 0) {
      replaceTheNum(arr, num, "Buzz")
    }
    else if (arr[num] % 3 === 0) {
      replaceTheNum(arr, num, "Fizz")
    }
  }
  return arr
}

/* Refactor */
/* Added this into the super_fizzbuzz. I had the arr[num] in every statement before creating this function */
var replaceTheNum = function(arr, num, word) {
  arr[num] = arr[num].toString().replace(arr[num], word)
}

console.log(super_fizzbuzz([1,2,3,4,5,15]))

/*
What concepts did you solidify in working on this challenge?

I was able to learn about the replace method. It's not destructive so I had to set it equal to arr[num] for me to change it in the original array. I had to also return arr for the output to be what it should be.

What was the most difficult part of this challenge?

The most difficult part would be getting the replace to work. I didn't realize that it was a non-destructive method.

Did you solve the problem in a new way this time?

Sort of, but not really. I still created a loop and used a conditional. One thing that is different, is the new function to make it DRYer.

Was your pseudocode different from the Ruby version? What was the same and what was different?

It was the same for the conditional and loop. I feel like the pseudocode i wrote in this challenge was a lot more descriptive and broken down into smaller parts.



Challenge: Grocery List
*/

function newlist() {
}

var niceList = function(list) {
  for (var i in list) {
    console.log(i, ": ", list[i]);
  }
}

listOne = new newlist()
console.log(listOne)

listOne.itemOne = 1
listOne.itemTwo = 2
listOne.itemThree = 3
console.log(listOne)

delete listOne.itemOne
console.log(listOne)

listOne.itemTwo += 1
niceList(listOne)