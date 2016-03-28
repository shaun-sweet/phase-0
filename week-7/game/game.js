 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission:
// Goals:  I want to make a typing game mixed with some action RPG.  So basically, think sonic where you collect fairly meaningless coins.  You'll collect these coins and 
//  once you hit a certain number of coins, you'll be able to turn into super sonic.  Once you can turn ito super sonic, you'll be able to kill the bad guy, which is 
// baddie mcbadderface
// You'll collect coins by simply having to type something simple, like a command get.coin or whatever.  That will get you a coin.  
// Experiment with making it more difficult to acquire coins but MVP is this:
// Simply start the game, as Goodington McGooder and you'll have your quest to gather coins, once you get the amount of coins needed, turn into Super Goodington McGooder
// and relinquish the world of Baddie McBaddieface!  Are you up to the challenge?
// Characters:
// Goodington McGooder
// Baddie McBaddieface
// Objects:
// Game
// Goodington McGooder
// Baddie McBaddieface
// 
// Functions:
// 
// 
// Pseudocode
// declare a character class that holds baddie and goodie
// define their health and their name as well as resources (baddie won't use this property)
// Create resource method that increases on call
// create an attack method that lowers the health of baddie by 1 + whatever resources you have.  The attack uses up your existing resources every attack and you start back at 0
//
//

// Initial Code
// 'use strict';
// class Character{
// 	constructor(name, health){
// 		this.name = name;
// 		this.resource = 0;
// 		this.health = health;
// 	}

// 	checkHealth(){
// 		if (this.health <= 0){
// 			return "You win!!  VICTORY!"
// 		}else{
// 			return "keep going!! Maybe try getting a few resources!"
// 		}
// 	}

// 	attack(){
// 		if (this.name == "goodie") {
// 			b.health = b.health - 1;
// 			b.health = b.health - this.resource;
// 			this.resource = 0;
// 			console.log("health is " + b.health);
// 			console.log("your health is " + g.health);
// 			document.getElementById("b-health").innerHTML = "Health:" + b.health;
// 			g.updateStats();
// 			b.checkHealth();
// 		}
		
// 	}

// 	collectResource(){
// 		// increase the resource count for goodie by 1 
// 		this.resource++;
// 		console.log("resources are now: " + this.resource);
// 		document.getElementById("resources").innerHTML = "Resources: " + this.resource;
// 	}

// 	updateStats(){
// 		document.getElementById("resources").innerHTML = "Resources: " + this.resource;
// 		document.getElementById("b-health").innerHTML = "Health:" + b.health;
// 		document.getElementById("score").innerHTML = b.checkHealth();
// 	}
// }

// var b = new Character("baddie", 20);
// var g = new Character("goodie", 20);
// console.log(g);
// console.log(b);




// Refactored Code
'use strict';
class Character{
	constructor(name, health){
		this.name = name;
		this.resource = 0;
		this.health = health;
	}

	checkHealth(){
		if (this.health <= 0){
			return "You win!!  VICTORY!"
		}else{
			return "keep going!! Maybe try getting a few resources!"
		}
	}

	attack(){
		if (this.name == "goodie") {
			b.health = b.health - 1;
			b.health = b.health - this.resource;
			this.resource = 0;
			g.updateStats();
			b.checkHealth();
		}
		
	}

	collectResource(){
		// increase the resource count for goodie by 1 
		this.resource++;
		g.updateStats();
	}

	updateStats(){
		document.getElementById("resources").innerHTML = "Resources: " + this.resource;
		document.getElementById("b-health").innerHTML = "Health:" + b.health;
		document.getElementById("score").innerHTML = b.checkHealth();
	}
}
var b = new Character("baddie", 20);
var g = new Character("goodie", 20);




// Reflection
//•	What was the most difficult part of this challenge?
// Understanding if I was supposed to do it a “certain way”.  Starting was definitely the hardest part.
// •	What did you learn about creating objects and functions that interact with one another?
// I am still unsure I did it the way the assignment wanted.  But It seemed pretty easy!  I kept forgetting to call the object before trying to use the methods though :P
// •	Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I actually took the time to learn about the DOM functions and made the game interact with an HTML front end!  It was really fun!
// •	How can you access and manipulate properties of objects?
// Object.property = “value”

//
//
//
//
//
//
//