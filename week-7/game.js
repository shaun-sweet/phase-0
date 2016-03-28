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
// Game as a class.  The two characters are json objects within the class.  
//
//
//
//

// Initial Code
'use strict';
class Character{
	constructor(name, health){
		this.name = name;
		this.resource = 0;
		this.health = health;
	}

	attack(){
		if (this.name == "goodie") {
			b.health = b.health - 1;
			b.health = b.health - this.resource;
			this.resource = 0;
			console.log("health is " + b.health);
			console.log("your health is " + g.health);
			document.getElementById("b-health").innerHTML = "Health:" + b.health;
			document.getElementById("result").innerHTML = this.resource;
		}
		
	}

	collectResource(){
		// increase the resource count for goodie by 1 
		this.resource++;
		console.log("resources are now: " + this.resource);
		document.getElementById("result").innerHTML = this.resource;
	}
}

var b = new Character("baddie", 20);
var g = new Character("goodie", 20);
console.log(g);
console.log(b);




// Refactored Code






// Reflection
//
//
//
//
//
//
//
//