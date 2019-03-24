const alternate = document.querySelector('.js-switch-button');
const close = document.querySelector('.js-close-button');

alternate.onclick = function() { 
    const menu = document.querySelector('.js-menu');
    menu.classList.toggle('show--menu');
}

close.onclick = function() {
    const menu = document.querySelector('.js-menu');
    menu.classList.toggle('show--menu');
}