// Manipulating JavaScript Objects

// I worked on this challenge: [by myself, with: ]

// There is a section below where you will write your code.

// DO NOT ALTER THIS OBJECT BY ADDING ANYTHING WITHIN THE CURLY BRACES!
var terah = {
  name: "Terah",
  age: 32,
  height: 66,
  weight: 130,
  hairColor: "brown",
  eyeColor: "brown"
}
// __________________________________________
// Write your code below.

var adam = {
  name: "Adam"
}
terah.spouse = adam;
terah.weight = 125;
// terah.eyeColor = undefined;
delete terah.eyeColor;
adam.spouse = terah;
terah.children = {
  carson: {
    name: "Carson"
  },
  carter: {
    name: "Carter"
  },
  colton: {
    name: "Colton"
  }
}
adam.children = terah.children



// __________________________________________
// Reflection: Use the reflection guidelines
/*
What tests did you have trouble passing? What did you do to make it pass? Why did that work?

I had trouble passing the carson one (number 8). I wasn't sure whether or not we were supposed to be adding it by dot notation or adding it onto the object directly. I ended up just adding carson to the associative array then adding name into another associative array within carson and adding a comma to add the other children. It works because an associative array is an object and will contain the property name of the child.

How difficult was it to add and delete properties outside of the object itself?

It wasn't difficult at all. It's as easy as just using a dot notation or the brackets to add a property. If i wanted to delete a property, I would just do delete object.propertyName.

What did you learn about manipulating objects in this challenge?

It's not as hard as I thought it'd be. It's similar to Ruby as well because in Ruby we use the bracket notation to call and set the associative arrays. We could do this in JavaScript as well. We can just change property by using dot/bracket notation and create new objects by setting it to a new array.

*/


// __________________________________________
// Driver Code:  Do not alter code below this line.
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (adam instanceof Object),
  "The value of adam should be an Object.",
  "1. "
)

assert(
  (adam.name === "Adam"),
  "The value of the adam name property should be 'Adam'.",
  "2. "
)

assert(
  terah.spouse === adam,
  "terah should have a spouse property with the value of the object adam.",
  "3. "
)

assert(
  terah.weight === 125,
  "The terah weight property should be 125.",
  "4. "
)

assert(
  terah.eyeColor === undefined || null,
  "The terah eyeColor property should be deleted.",
  "5. "
)

assert(
  terah.spouse.spouse === terah,
  "Terah's spouse's spouse property should refer back to the terah object.",
  "6. "
)

assert(
  (terah.children instanceof Object),
  "The value of the terah children property should be defined as an Object.",
  "7. "
)

assert(
  (terah.children.carson instanceof Object),
  "carson should be defined as an object and assigned as a child of Terah",
  "8. "
  )

assert(
  terah.children.carson.name === "Carson",
  "Terah's children should include an object called carson which has a name property equal to 'Carson'.",
  "9. "
)

assert(
  (terah.children.carter instanceof Object),
  "carter should be defined as an object and assigned as a child of Terah",
  "10. "
  )

assert(
  terah.children.carter.name === "Carter",
  "Terah's children should include an object called carter which has a name property equal to 'Carter'.",
  "11. "
)

assert(
  (terah.children.colton instanceof Object),
  "colton should be defined as an object and assigned as a child of Terah",
  "12. "
  )

assert(
  terah.children.colton.name === "Colton",
  "Terah's children should include an object called colton which has a name property equal to 'Colton'.",
  "13. "
)

assert(
  adam.children === terah.children,
  "The value of the adam children property should be equal to the value of the terah children property",
  "14. "
)

console.log("\nHere is your final terah object:")
console.log(terah)