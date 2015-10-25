// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Survive and get to the end
// Goals: Collect gold and dodge the snails to the next level
// Characters: One main character (Mario), some snails, and end point.
// Objects: Player(position, health, gold and win), snails
// Functions: moving right,left,up,down. being able to jump.

// Pseudocode
//Create the main character object (position, health, gold).
//Add the functions for the player (move right/left/up or jump/down).
//Create the creature object and have it appear randomly on the map.
//Check to see if the player have reached the end of the map
//If the player has reached the end, then win will equal to true, if not then false.
/*
// Initial Code
var player = {
  posX: 0,
  posY: 0,
  health: 100,
  gold: 0,
  win: false,
//This is the property where the player can move
  move: function(direction) {
    if (direction === 'forward') {
      player.posX += 15;
    }
    else if (direction === 'backward') {
      player.posX -= 15;
    }
    else if (direction === 'up') {
      player.posY += 20;
    }
    else if (direction === 'down') {
      player.posY -= 15;
    }
     if (player.posX > 200) {
      win = true;
      console.log("Congratulations! You reached the end")
    }
    else if (player.posX < 200) {
      console.log("Your current position:")
      console.log("Horizontal " + player.posX + " Vertical " + player.posY)
      console.log("Snail position: " + snail.posX + "\n")
    }
    else if (snails.posX === player.posX) {
      console.log("You are being attacked by a snail! You should jump!")
      player.health -= 10
      console.log("Your health is now " + player.health)
    }
    if (player.posX > snail.posX && player.posY < 20) {
      player.health -= 10
      console.log("You did not jump over the snail! You got hurt")
      console.log("Your health is now -> " + player.health + "\n")
    }
  }
}
var snail = {
  health: 20,
  posX: Math.floor(Math.random()*150)
};

var gold = {
  posX: Math.floor(Math.random()*150)
}

console.log("Welcome to the game!")
console.log("Be sure to jump over the snails!\n")
console.log("Your current status is ...")
console.log("Health: " + player.health)
console.log("Gold: " + player.gold)
console.log("Horizontal: " + player.posX + " Vertical:" + player.posY)
console.log("The snail is curently at... " + snail.posX + "\n")
player.move("forward")
player.move("forward")
*/

// Refactored Code

var player = {
  posX: 0,
  posY: 0,
  health: 100,
  gold: 0,
  win: false,
//This is the property where the player can move
  move: function(direction) {
    if (direction === 'forward') {
      player.posX += 15;
    }
    else if (direction === 'backward') {
      player.posX -= 15;
    }
    else if (direction === 'up') {
      player.posY += 20;
    }
    else if (direction === 'down') {
      player.posY -= 15;
    }
    checkWin()
    if (player.posX > gold.posX) {
      player.gold += 10
      console.log("Picked up gold!")
      console.log("Current gold: " + player.gold)
    }
    if (player.posX > snail.posX && player.posY < 20) {
      player.health -= 10
      console.log("You did not jump over the snail! You got hurt")
      currentHealth();
    }
  },
  start: function() {
    console.log("Welcome to the game!")
    console.log("Be sure to jump over the snails!\n")
    console.log("Stats")
    console.log("Health: " + player.health)
    console.log("Gold: " + player.gold)
    console.log("The snail is curently at... " + snail.posX + "\n")
  }
}
var currentStatus = function() {
  console.log("Your current position:")
  console.log("Horizontal " + player.posX + " Vertical " + player.posY)
  console.log("Snail position: " + snail.posX + "\n")
}

var currentHealth = function () {
  console.log("Health: " + player.health + "\n")
}
var snail = {
  health: 20,
  posX: Math.floor(Math.random()*150)
};

var gold = {
  posX: Math.floor(Math.random()*150)
}

var checkWin = function() {
  if (player.posX > 200) {
    player.win = true;
    console.log("Congratulations! You reached the end")
  }
  else if (player.posX < 200) {
    currentStatus()
  }
}


player.start()
player.move("forward")
// Reflection
/*
What was the most difficult part of this challenge?

The most difficult part of this challenge was probably figuring out the game. I wanted to make the game more visual and not terminal based but didn't have much time to do it. I'll definitely come back to it though.

What did you learn about creating objects and functions that interact with one another?

I've learned to create multiple functions rather than have one giant one. It was also easier for me to manipulate properties in other objects through other functions. My initial code was all bunched up into the player's move property but once I did what I wanted, I refactored it and made it into different functions.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

I didn't learn any new built-in methods but I did learn how we can implement the movement in the game and things like that.

How can you access and manipulate properties of objects?

It can be accessed simply by calling the object and then the property (dot/bracket notation). It can be manipulated if we called it and then changed it to something else by using an equal sign or another operator (+=, -=, etc.).

*/