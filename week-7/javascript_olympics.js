// JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up




// Bulk Up
'use strict';
var athleteOne = {
	name : "Shaun",
	event : "Location of event"
}
var athleteTwo = {
	name: "Sweet",
	event: "Location of event"
}

var athleteArray = [athleteOne, athleteTwo];

function addWin(arrayOfAthletes) {
	// add a 'win' property to every object in the array passed in
	for (var i = 0; arrayOfAthletes.length > i; i++) {
		arrayOfAthletes[i]['win'] = "YOU WON!!! YAY";
	}
}
addWin(athleteArray);

// Jumble your words
function inverted(string) {
	var newString = [];
	for (var i = string.length - 1; i >= 0; i--) {
		newString.push(string[i]);
	}
	return newString.join("");
}
console.log(inverted("dick bag"));

// 2,4,6,8
function evenNums(array) {
	var result = [];
	for(var i = 0; array.length > i; i++) {
		if (array[i] % 2 == 0) {
			result.push(array[i]);
		}
	}
	return result;
}
console.log(evenNums([2,1,2,3,4,5,6,7,8]));

// "We built this city"

class Athlete {
	constructor(name, age, sport, quote){
		this.name = name;
		this.age = age;
		this.sport = sport;
		this.quote = quote;
	}
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!");
console.log(michaelPhelps.constructor === Athlete);
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote);


// Reflection
// •	What JavaScript knowledge did you solidify in this challenge?
// Objects I think.
// •	What are constructor functions?
// Constructor functions are functions that take in the data you need in order to build new instances of an object.  They construct objects basically.  
// •	How are constructors different from Ruby classes (in your research)?\
// Ruby classes define the basic rules of an object.  For example, what attributes you want to be able to view, write to and change or just have inside as helper methods.  Constructors are functions that JUST take in the data to CREATE a new object with the data you passed in as arguments to that function.

