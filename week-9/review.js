// Create a new list
// Add an item with a quantity to the list
// Remove an item from the list
// Update quantities for items in your list
// Print the list (Consider how to make it look nice!)

// psuedocode: 
// Create an object that is able to add and remove items from the object.
// It will be able to update items from the object as well.
// It will be an object that holds a bunch of items and how many of those items.
// steps:
// create an object for the grocery list
// create a property that can add an item + the QTY to the list

// var groceryList = {};

// function addItem(item,qty){
// 	groceryList[item] = qty;
// };

// function removeItem(item){
// 	delete groceryList[item];
// };

// function updateItem(old_item,new_item, new_qty){
// 	if(groceryList.hasOwnProperty(old_item)){
// 		delete groceryList[old_item]
// 		addItem(new_item, new_qty);
// 	}else{
// 		console.log("item doesn't exist, try just adding it!");
// 	}
// }

// for(var i = 0; i < 10; i++){
// 	addItem("hello" + i, i);
// }
// var i = 1;
// for (var item in groceryList){
// 	console.log("Item " + i + ": " + item + " QTY: " + groceryList[item]);
// 	i ++;
// }

// Refactored:

// make a list
var list = {};
function addItem(item, qty){
	list[item] = qty;
}

function removeItem(item){
	delete list[item];
}

function updateItem(item, new_item, qty){
	if (list.hasOwnProperty(item)) {
		delete list[item];
		addItem(new_item, qty);
	}else {
		console.log("that item doesn't exist");
	}
}
// output nicely
addItem("hello", 3);
updateItem('hello', 'it works', 34);
var i = 1;
for (var item in list){
	console.log(i + "." + item + " QTY: " + list[item]);
	i ++;
}

// Reflection:
// I thought this would be harder than it was.  I guess that voter assignment really taught me a lot about objects.  More than I thought.  I felt after a bit of getting back into javascript and objects more comfortable with objects in general.  I'd still like more practice, specifically with constructor functions so I have a better understanding.  Perhaps with phase 1 coming up soon I'll be able to do exactly that!