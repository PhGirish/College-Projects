const reviews = [
  {
    id: 1,
    name: "susan smith",
    job: "web developer",
    img: "images/p1.avif",
    text: "I'm baby meggings twee health goth +1. Bicycle rights tumeric chartreuse before they sold out chambray pop-up. Shaman humblebrag pickled coloring book salvia hoodie, cold-pressed four dollar toast everyday carry",
  },
  {
    id: 2,
    name: "anna johnson",
    job: "web designer",
    img: "images/p2.avif",
    text: "Helvetica artisan kinfolk thundercats lumbersexual blue bottle. Disrupt glossier gastropub deep v vice franzen hell of brooklyn twee enamel pin fashion axe.photo booth jean shorts artisan narwhal.",
  },
  {
    id: 3,
    name: "peter jones",
    job: "intern",
    img: "images/p3.avif",
    text: "Sriracha literally flexitarian irony, vape marfa unicorn. Glossier tattooed 8-bit, fixie waistcoat offal activated charcoal slow-carb marfa hell of pabst raclette post-ironic jianbing swag.",
  },
];

const nameEl = document.querySelector(".name");
const images = document.querySelector(".p-images");
const prof = document.querySelector(".prof");
const review = document.querySelector(".review");
const nextBtn = document.querySelector("#next-btn");
const prevBtn = document.querySelector("#prev-btn");

let currentItem = 0;
// load initial item
window.addEventListener("DOMContentLoaded", function () {
  const item = reviews[currentItem];
  nameEl.textContent = item.name;
  images.src = item.img;
  prof.textContent = item.job;
  review.textContent = item.text;
});

nextBtn.addEventListener("click", () => {
  console.log("working");
  currentItem++;
  if (currentItem > reviews.length - 1) {
    currentItem = 0;
  }
  details(currentItem);
});

prevBtn.addEventListener("click", () => {
  if (currentItem < 0) {
    currentItem = reviews.length - 1;
  }
  currentItem--;
  details(currentItem);
});

function details(n) {
  let item = reviews[n];
  nameEl.textContent = item.name;
  images.src = item.img;
  prof.textContent = item.job;
  review.textContent = item.text;
}
