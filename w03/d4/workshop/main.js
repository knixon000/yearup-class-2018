//This comes from data.js
var gifs = window.data.data;

//function to select random gifs from data.js
function randomGif(){
  //target or select a gif
  let gifElement = document.getElementById('gif');
  //selects random gifs from the index of gifs
  let randomGifs = Math.floor(Math.random()*gifs.length);
  //manipulate the element to be random
  gifElement.src = gifs[randomGifs].images.original.url;

}


//allows the button to cycle through the random gifs
let button = document.querySelector('button');
button.addEventListener('click', randomGif);
