// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Jack Huang and Chris Savage
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}


/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
/*
Create a function that takes votes array
  loop through each object in the votes object
    loop through  each property for the name that it was voted for
      increment the votes in the voteCount variable as each person is repeated
      check who got the most votes
      populate the officers variable with the most votes
end the function

*/
// __________________________________________
// Initial Solution


// function tally(votes) {
//   for(var name in votes) {
//     if (votes.hasOwnProperty(name)) {
//       if (voteCount.president[votes[name].president]) {
//         voteCount.president[votes[name].president] += 1
//       }
//       else {
//         voteCount.president[votes[name].president] = 1;
//       }
//       if (voteCount.vicePresident[votes[name].vicePresident]) {
//         voteCount.vicePresident[votes[name].vicePresident] += 1
//       }
//       else {
//         voteCount.vicePresident[votes[name].vicePresident] = 1;
//       }
//       if (voteCount.secretary[votes[name].secretary]) {
//         voteCount.secretary[votes[name].secretary] += 1
//       }
//       else {
//         voteCount.secretary[votes[name].secretary] = 1;
//       }
//       if (voteCount.treasurer[votes[name].treasurer]) {
//         voteCount.treasurer[votes[name].treasurer] += 1
//       }
//       else {
//         voteCount.treasurer[votes[name].treasurer] = 1;
//       }
//     }
//   }
// }



// tally(votes);


function winner(voteCount) {
  var highest = "";
  var highestVote = 0;
  for(var office in voteCount) {
//     console.log(voteCount[name])
    for (var candidate in voteCount[office]) {
//     console.log(voteCount[office][candidate])
      if (officers[office] === undefined) {
        officers[office] = candidate;
       }
      if (voteCount[office][candidate] > voteCount[office][officers[office]]) { // voteCount[office][candidate]
        officers[office] = candidate
      }
    }
  }
//    console.log(highest)
}
winner(voteCount);


// __________________________________________
// Refactored Solution
/*
function tally(votes) {
  for(var name in votes) {
    // loops inside vote keys
    for (var office in votes[name]) {
      // loops inside the values
      if (voteCount[office][votes[name][office]]) {
        // checks if the name exists in the voteCount object, if it does it increments it
        voteCount[office][votes[name][office]] += 1;
      } else {
      // if it doesn't it creates the property with a vote count of 1
      voteCount[office][votes[name][office]] = 1;
      }
    }
  }
}
*/
function tally(votes) {
  for(var name in votes) {
    // loops inside vote keys
    for (var office in votes[name]) {
        var nameOfCandidateVotedFor  = votes[name][office];
        var candidateCounted = voteCount[office];
      // loops inside the values
      if (candidateCounted[nameOfCandidateVotedFor]) {  //if exists
        candidateCounted[nameOfCandidateVotedFor] += 1;  //increment # votes
      } else {
      // if it doesn't it creates the property with a vote count of 1
      candidateCounted[nameOfCandidateVotedFor] = 1;
      }
    }
  }
}

tally(votes);

function winner(voteCount) {
  var highest = "";
  var highestVote = 0;
  for(var office in voteCount) {
//     console.log(voteCount[name])
    for (var candidate in voteCount[office]) {
//     console.log(voteCount[office][candidate])
      if (officers[office] === undefined) {
        officers[office] = candidate;
       }
      if (voteCount[office][candidate] > voteCount[office][officers[office]]) { // voteCount[office][candidate]
        officers[office] = candidate;
      }
    }
  }
}


winner(voteCount);

// __________________________________________
// Reflection
/*
What did you learn about iterating over nested objects in JavaScript?

One of the issues we had was calling a loop within a loop. In our first try with the for loop, we had tried just doing something like

for (var name in voters)
  for (var office in voters)

This wouldn't work. We need to do voters[name] in our second loop.

Were you able to find useful methods to help you with this?

We used the for loop a lot and conditional statements. These methods helped us through the challenge.

What concepts were solidified in the process of working through this challenge?

I feel like I have a better understanding of nested arrays. It seems difficult but it just needs to be broken down into smaller pieces and done step by step.

*/
// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)