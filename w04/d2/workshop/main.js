
axios.get("https://www.redbullshopus.com/products.json")
  .then(function redBullData(response) {
    // you now have access to the data
    console.log(response);
    //use the data
    console.log(response.data.products);
    //appends images, titles, and prices to the page
    let image1 = document.getElementById('product1');
    image1.src = response.data.products[0].images[0].src;
    let title1 = document.getElementById('prod1');
    title1.innerHTML = response.data.products[0].title;

    let image2 = document.getElementById('product2');
    image2.src = response.data.products[1].images[0].src;
    let title2 = document.getElementById('prod2');
    title2.innerHTML = response.data.products[1].title;

    let image3 = document.getElementById('product3');
    image3.src = response.data.products[2].images[0].src;
    let title3 = document.getElementById('prod3');
    title3.innerHTML = response.data.products[2].title;
  })
  .catch(function(error){

    console.log(error);
  })
