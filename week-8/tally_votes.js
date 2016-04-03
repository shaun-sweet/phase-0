// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// Pseudocode
/*
Start by incrementing over the votes object
check if votecounts.president has the name listed at the current position in the votes array
if it doesn't then initilize it with a value of 1 
if the name is already a property of of votes then increment it's value by one 
repeat the above three steps for each elected position

Iterate over the votecount object 
check which property has the highest value associated with it. 
assign this property to the corresponding position in the officers object


*/

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": {
    president: "Bob",
    vicePresident: "Devin",
    secretary: "Gail",
    treasurer: "Kerry"
  },
  "Bob": {
    president: "Mary",
    vicePresident: "Hermann",
    secretary: "Fred",
    treasurer: "Ivy"
  },
  "Cindy": {
    president: "Cindy",
    vicePresident: "Hermann",
    secretary: "Bob",
    treasurer: "Bob"
  },
  "Devin": {
    president: "Louise",
    vicePresident: "John",
    secretary: "Bob",
    treasurer: "Fred"
  },
  "Ernest": {
    president: "Fred",
    vicePresident: "Hermann",
    secretary: "Fred",
    treasurer: "Ivy"
  },
  "Fred": {
    president: "Louise",
    vicePresident: "Alex",
    secretary: "Ivy",
    treasurer: "Ivy"
  },
  "Gail": {
    president: "Fred",
    vicePresident: "Alex",
    secretary: "Ivy",
    treasurer: "Bob"
  },
  "Hermann": {
    president: "Ivy",
    vicePresident: "Kerry",
    secretary: "Fred",
    treasurer: "Ivy"
  },
  "Ivy": {
    president: "Louise",
    vicePresident: "Hermann",
    secretary: "Fred",
    treasurer: "Gail"
  },
  "John": {
    president: "Louise",
    vicePresident: "Hermann",
    secretary: "Fred",
    treasurer: "Kerry"
  },
  "Kerry": {
    president: "Fred",
    vicePresident: "Mary",
    secretary: "Fred",
    treasurer: "Ivy"
  },
  "Louise": {
    president: "Nate",
    vicePresident: "Alex",
    secretary: "Mary",
    treasurer: "Ivy"
  },
  "Mary": {
    president: "Louise",
    vicePresident: "Oscar",
    secretary: "Nate",
    treasurer: "Ivy"
  },
  "Nate": {
    president: "Oscar",
    vicePresident: "Hermann",
    secretary: "Fred",
    treasurer: "Tracy"
  },
  "Oscar": {
    president: "Paulina",
    vicePresident: "Nate",
    secretary: "Fred",
    treasurer: "Ivy"
  },
  "Paulina": {
    president: "Louise",
    vicePresident: "Bob",
    secretary: "Devin",
    treasurer: "Ivy"
  },
  "Quintin": {
    president: "Fred",
    vicePresident: "Hermann",
    secretary: "Fred",
    treasurer: "Bob"
  },
  "Romanda": {
    president: "Louise",
    vicePresident: "Steve",
    secretary: "Fred",
    treasurer: "Ivy"
  },
  "Steve": {
    president: "Tracy",
    vicePresident: "Kerry",
    secretary: "Oscar",
    treasurer: "Xavier"
  },
  "Tracy": {
    president: "Louise",
    vicePresident: "Hermann",
    secretary: "Fred",
    treasurer: "Ivy"
  },
  "Ullyses": {
    president: "Louise",
    vicePresident: "Hermann",
    secretary: "Ivy",
    treasurer: "Bob"
  },
  "Valorie": {
    president: "Wesley",
    vicePresident: "Bob",
    secretary: "Alex",
    treasurer: "Ivy"
  },
  "Wesley": {
    president: "Bob",
    vicePresident: "Yvonne",
    secretary: "Valorie",
    treasurer: "Ivy"
  },
  "Xavier": {
    president: "Steve",
    vicePresident: "Hermann",
    secretary: "Fred",
    treasurer: "Ivy"
  },
  "Yvonne": {
    president: "Bob",
    vicePresident: "Zane",
    secretary: "Fred",
    treasurer: "Hermann"
  },
  "Zane": {
    president: "Louise",
    vicePresident: "Hermann",
    secretary: "Fred",
    treasurer: "Mary"
  }
};

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
};

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




// __________________________________________
// Initial Solution




for (var key in votes) {

  if (votes[key]["president"] in voteCount["president"]) {
    voteCount["president"][votes[key]["president"]] += 1;
  }
  else {
    voteCount["president"][votes[key]["president"]] = 1;
  }


  if (votes[key]["vicePresident"] in voteCount["vicePresident"]) {
    voteCount["vicePresident"][votes[key]["vicePresident"]] += 1;
  }
  else {
    voteCount["vicePresident"][votes[key]["vicePresident"]] = 1;
  }


  if (votes[key]["secretary"] in voteCount["secretary"]) {
    voteCount["secretary"][votes[key]["secretary"]] += 1;
  }
  else {
    voteCount["secretary"][votes[key]["secretary"]] = 1;
  }


  if (votes[key]["treasurer"] in voteCount["treasurer"]) {
    voteCount["treasurer"][votes[key]["treasurer"]] += 1;
  }
  else {
    voteCount["treasurer"][votes[key]["treasurer"]] = 1;
  }

}

var highestVote = 0
for (var key in voteCount["president"]) {

  if (voteCount['president'][key] > highestVote) {
    highestVote = voteCount["president"][key];
  }

}


for (var x in voteCount['president']) {
  if (voteCount['president'][x] == highestVote) {
    officers['president'] = x;
  }
}


highestVote = 0
for (var key in voteCount["vicePresident"]) {

  if (voteCount['vicePresident'][key] > highestVote) {
    // console.log('elseif' + key);
    highestVote = voteCount["vicePresident"][key];
  }

}


for (var x in voteCount['vicePresident']) {
  if (voteCount['vicePresident'][x] == highestVote) {
    officers['vicePresident'] = x;
  }
}

highestVote = 0
for (var key in voteCount["secretary"]) {

  if (voteCount['secretary'][key] > highestVote) {
    // console.log('elseif' + key);
    highestVote = voteCount["secretary"][key];
  }

}


for (var x in voteCount['secretary']) {
  if (voteCount['secretary'][x] == highestVote) {
    officers['secretary'] = x;
  }
}

highestVote = 0
for (var key in voteCount["treasurer"]) {

  if (voteCount['treasurer'][key] > highestVote) {
    // console.log('elseif' + key);
    highestVote = voteCount["treasurer"][key];
  }

}


for (var x in voteCount['treasurer']) {
  if (voteCount['treasurer'][x] == highestVote) {
    officers['treasurer'] = x;
  }
}

//console.log(officers)
// What did you learn about iterating over nested objects in JavaScript?
// I learned how to do it! I had absolutely zero idea how to syntax wise prior to this challenge.  But I definitely feel more comfortable.  I'd like more practice with it though in order to solidify the knowledge.  

// Were you able to find useful methods to help you with this?
// we actually just used stand for in loops.  They are quite useful!  We were trying out hasOwnProperty but we didn't actually find that useful.  We ended up using the "in" keyword.  That worked out well!

// What concepts were solidified in the process of working through this challenge?
// I think my knowledge of nested objects is much stronger.  We defintely struggled with this challenge but overall I am satisfied with what I learned from the challenge.  We almost gave up on getting the nested for loop to work, but we pushed through and got it going and it worked out well!  


// __________________________________________
// Refactored Solution
/*

We tried this method of refactoring but it ended up feeling more complex than our original attempt.  

for (var name in votes){
  for(var x in votes[name]){
      if (x == "president"){
        console.log(votes[name][x])
        if(votes[name][x] in voteCount['president']){
          voteCount['president'][votes[name][x]] += 1;
        }
        else{
          voteCount['president'][votes[name][x]] = 1;
        }
        
        
      }
      else if (x == "vicePresident"){
        if(votes[name][x] in voteCount['vicePresident']){
          voteCount['vicePresident'][votes[name][x]] += 1;
        }
        else{
          voteCount['vicePresident'][votes[name][x]] = 1;
        }
      }
      else if (x == "secretary"){
        if(votes[name][x] in voteCount['secretary']){
          voteCount['secretary'][votes[name][x]] += 1;
        }
        else{
          voteCount['secretary'][votes[name][x]] = 1;
        }
      }
      else if (x == 'treasurer'){
        if(votes[name][x] in voteCount['treasurer']){
          voteCount['treasurer'][votes[name][x]] += 1;
        }
        else{
          voteCount['treasurer'][votes[name][x]] = 1;
        }
      }
  }
  
}

console.log(voteCount)

*/

// __________________________________________
// Reflection






// __________________________________________
// Test Code:  Do not alter code below this line.


// function assert(test, message, test_number) {
//   if (!test) {
//     console.log(test_number + "false");
//     throw "ERROR: " + message;
//   }
//   console.log(test_number + "true");
//   return true;
// }

// assert(
//   (voteCount.president["Bob"] === 3),
//   "Bob should receive three votes for President.",
//   "1. "
// )

// assert(
//   (voteCount.vicePresident["Bob"] === 2),
//   "Bob should receive two votes for Vice President.",
//   "2. "
// )

// assert(
//   (voteCount.secretary["Bob"] === 2),
//   "Bob should receive two votes for Secretary.",
//   "3. "
// )

// assert(
//   (voteCount.treasurer["Bob"] === 4),
//   "Bob should receive four votes for Treasurer.",
//   "4. "
// )

// assert(
//   (officers.president === "Louise"),
//   "Louise should be elected President.",
//   "5. "
// )

// assert(
//   (officers.vicePresident === "Hermann"),
//   "Hermann should be elected Vice President.",
//   "6. "
// )

// assert(
//   (officers.secretary === "Fred"),
//   "Fred should be elected Secretary.",
//   "7. "
// )

// assert(
//   (officers.treasurer === "Ivy"),
//   "Ivy should be elected Treasurer.",
//   "8. "
// )
f