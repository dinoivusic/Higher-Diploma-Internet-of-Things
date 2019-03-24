const slides = document.querySelectorAll('.slide'); //Get all elements in the doc with id slides and class slide
let currentSlide = 0;
const slideInterval = setInterval(nextSlide,2500); //Changes the image in the interval of 2500 milliseconds (2.5 seg)

function nextSlide() {
    slides[currentSlide].className = 'slide';
    currentSlide = (currentSlide+1)%slides.length;
    slides[currentSlide].className = 'slide showing';
}