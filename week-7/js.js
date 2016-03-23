// iterate through array and choose smallest number

// i = 0;
// var a = [100,20,30,40,10,22];
// var smallest_num = a[0];
// while (i<a.length) {
// 	console.log(a[i]);
// 	if (smallest_num > a[i]) {
// 		smallest_num = a[i];
// 	}
// 	i += 1;
// }
// console.log('The smallest number is! ' + smallest_num);
// console.log(array);

// take sentence, split into array, iterate through and choose smallest word
// var sentence = "take array of word return the third greatest number in the array   ";
// var words = sentence.trim().split(" ");
// var smallest_word = words[0];
// for (var i = 	words.length - 1; i >= 0; i--) {
// 	if (smallest_word.length > words[i].length) {
// 		smallest_word = words[i];
// 	};
		
// };
// console.log(smallest_word)
// take array of words, return the third greatest number in the array 
// (two versions: one with sort, one without)


// method that returns the most common letter in a string
// Gather up individual letters and assign each one to a key in a hash
// each time the letter is found after the key exists, increase the value count.  default value is 0
var string = "this is a fucking string";
var hash = {};

for (i = 0; string.length > i; i++) {
	if (hash[string[i]] == undefined) {
		hash[string[i]] = 1 ;
	}
	else {
		hash[string[i]] ++ ;
	}

}
var most_occuring =  hash["t"]
for (var index in hash) {
	if (hash[index] > most_occuring) {
		most_occuring = hash[index];
		var name = index;
	}
}

console.log("The letter that appears the most is " + name);
console.log("It appears " + most_occuring + " times.");

// method that takes a book title and capitalizes appropriately


// add commas into a number to look like a standard number


// write a method that returns the factorial of a given number


// write a method that takes an array of numbers and returns true if any 
// number in the array, added up to its index, equals 10.


// write method that prints out factors for each number from 1 to a given max. 


// method that takes an array of numbers, and returns a new array with all the numbers doubled


// method that takes an array of words ["grasping", "turning", "running", "fighting"] 
// and selects a word that contains "turn"


// fahrenheit to celsius conversion


// methods that do calculations: add, subtract, multiply, divide


// Write a method that takes an array of integers and returns an array
// with the array elements multiplied by two.


// Write a function oddball_sum(numbers), which takes in an array of 
// integers and returns the sum of all the odd elements.


// method that takes two numbers and returns the greatest common factor


// Write a function disemvowel(string), which takes in a string, 
// and returns that string will all the vowels removed.


// method that takes a number and returns true/false depending on if it is prime


// adding up items in an array


// sum of integers from 1 to given num


// join strings in an array into one large string 


// reverse a string || reverse an array


// try out hashes


// find the mode (probably use hashes for this one too)


// count vowels in a string


// recursive palindrome


// 'nearby az': Write a method that takes a string in and returns true if the letter
// "z" appears within three letters **after** an "a". You may assume
// that the string contains only lowercase letters.


// Write a method that takes an array of numbers. If a pair of numbers
// in the array sums to zero, return the positions of those two numbers.
// If no pair of numbers sums to zero, return `nil`.


// method that returns true if num passed to it is a power of 2, otherwise return false


// method that finds perfect squares in a given array


// Write a method that takes in a string and an array of indices in the
// string. Produce a new string, which contains letters from the input
// string in the order specified by the indices of the array of indices.



// Write a method that takes in a string and returns the number of
// letters that appear more than once in the string. You may assume
// the string contains only lowercase letters. Count the number of
// letters that repeat, not the number of times they repeat in the string.



// Write a function lucky_sevens?(numbers), which takes in an array of integers 
// and returns true if any three consecutive elements sum to 7. 


// given a word, return true if that word's vowels are in alphabetical order.


// bubble sort an array

//In Ruby, Array has a `uniq` method that removes duplicates from an array. It
// returns the unique elements in the order in which they first appeared:
//
// [1, 2, 1, 3, 3].uniq # => [1, 2, 3]
//
// Write your own `uniq` method, called `my_uniq`; it should take in an
// Array and return a new array. It should not call `uniq`.


//   Implement a Rock, Paper, Scissors game. The method `rps` should take
//   a string (either "Rock", "Paper" or "Scissors") as a parameter and
//   return the computer's choice, and the outcome of the match. Example:
//
// rps("Rock") # => "Paper, Lose"
// rps("Scissors") # => "Scissors, Draw"
// rps("Scissors") # => "Paper, Win"


//   Implement a Swingers game. The method `swingers` should take an
//   array of couple arrays and return the same type of data structure,
//   with the couples mixed up. Assume that the first item in the couple
//   array is a man, and the second item is a woman. Don't pair a person
//   with someone of their own gender (sorry to ruin your fun). An
//   example run of the program:
//
// swingers([
//   ["Clyde", "Bonnie"],
//   ["Paris", "Helen"],
//   ["Romeo", "Juliet"]
// ])


// Write a method `substrings` that will take a `String` and return an
// array containing each of its substrings.
// Example output: substrings("cat") => ["c", "ca", "cat", "a", "at", "t"]



// To represent a *matrix*, or two-dimensional grid of numbers, we can
// write an array containing arrays which represent rows:
//
// rows = [
//     [0, 1, 2],
//     [3, 4, 5],
//     [6, 7, 8]
//   ]
//
// row1 = rows[0]
// row2 = rows[1]
// row3 = rows[2]
//
// We could equivalently have stored the matrix as an array of
// columns:
//
// cols = [
//     [0, 3, 6],
//     [1, 4, 7],
//     [2, 5, 8]
//   ]
// Write a method, `my_transpose`, which will convert between the
// row-oriented and column-oriented representations.


// Martha has created a hash with letter symbols as keys to represent items that start 
// with their keys. However, she realized everything is off by one letter.


// wrong_hash = { :a => "banana", :b => "cabbage", :c => "dental_floss", :d => "eel_sushi" }


// Write a program `hash_correct` that takes this wrong hash and returns the correct one.