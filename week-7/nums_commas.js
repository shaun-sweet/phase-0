// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: 

// Pseudocode
// Input: an unknown length of integers
// Output: integers but comma separated



// Initial Solution

// function comma_separated(input) {
// 	// Take the input and split the integers into an array
// 	var output = [];
// 	var x = input.toString().split("");
// 		if (x.length <= 3){
// 		return input;
// 	}
// 	// Iterate through the array backwards
// 	for(var i = 0; input.toString().length > i; i++) {
// 		// Every third iteration, insert a comma
// 		output.unshift(x.pop());
		
// 		if ((i + 1) % 3 == 0){
// 			output.unshift(",");
// 		}
// 	}
// 	if(input.toString().length % 3 == 0){
// 		output.shift();
// 		return output.join("");
// 	}
// 	else {
// 		return output.join("");
// 	}
// 	console.log(output);
// 	// Return the array as a string
// }
// console.log(comma_separated(1202));

// Refactored Solution
// Steps: 
// take the number and turn it into an array.
// chop up that array into groups of 3
// insert a comma to the left of every group of 3
function comma_separated(numba) {
	if (numba.toString().length < 4) {
		return numba;
	}
	input = numba.toString().split("");
	// i need to loop through the array and every third spot
	// i need to insert a comma
	var count = 0;
	for (var i = 3; numba.toString().length > i; i += 3){
		input.splice(-i - count,0,","); // -i just makes i negative 3 etc..
		count ++;
		console.log(input);
	}
	return input.join("");
}
console.log(comma_separated(1234567890));


// Your Own Tests (OPTIONAL)




// Reflection
// I really enjoyed doing this challenge over again.  It was nice to have done it already in ruby and to just get the idea redone in javascript.  
// •	What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// I did not in the initial solution.  I basically solved it the same way but a little better which I attribute to my better grasp of coding since the last time I did it. 
// •	What did you learn about iterating over arrays in JavaScript?
// The syntax sucks.  Lol.  I’m glad we learned the for loops and while loops while doing ruby instead of just leveraging .each.  
// •	What was different about solving this problem in JavaScript?
// The syntax!!  There were a few methods in ruby we had access to that we had to write out a lot more code in javascript to accomplish it. 
// •	What built-in methods did you find to incorporate in your refactored solution?
// I actually refactored using .slice and that was fun to learn how to use!  It was super helpful.

