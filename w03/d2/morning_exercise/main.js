//select the element: tell javascript where to look
let button = document.getElementById("animate-button");
// console.log(button);

//write what to do
function changeAnimation() {
  //select the element
  let image_tag = document.querySelector('img');
  let input_field = document.querySelector('input');

  //use the value from the input
  let userInput = input_field.value;

  //modify the image tag 
  image_tag.className = "animated infinite " + userInput;
}

//tell the button to do it
button.addEventListener('click', changeAnimation);
