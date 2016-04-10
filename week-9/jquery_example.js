// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.
$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement = $('body');
mascot = $('div.mascot');

//RELEASE 3:
h1 = $('body>h1');
h1.html("Fiery Skippers")
h1.css({'background-color': 'red'});
h1.css({'border': 'solid black 1px'});

//RELEASE 4: Event Listener
// $('img').on('mouseover', function(e){
// 	e.preventDefault()
// 	$(this).attr('src', 'http://www.jeffpippen.com/butterflies/fieryskipper-mated040619-523pettigrewz.jpg')
// })

// $('img').on('mouseleave', function(e){
// 	e.preventDefault()
// 	$(this).attr('src', 'imgs/dbc_logo.png')
// })
//RELEASE 5: Experiment on your own
$('img').on('mouseover', function(){
	$(this).animate({
		opacity: 0.0
	}, 1000, function(){

	});
});

$('img').on('mouseleave', function(){
	$(this).animate({
		opacity: 1.0
	}, 1000, function(){

	});
});




})  // end of the document.ready function: do not remove or write DOM manipulation below this.