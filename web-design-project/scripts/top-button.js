// The button appears when scroll down 40px from the top
window.onscroll = function() {
    if (document.body.scrollTop > 40 || document.documentElement.scrollTop > 40) {
        document.getElementById("top-button").style.display = "block";
    } else {
        document.getElementById("top-button").style.display = "none";
    }
}

// Scrolls up when click the button
function goTop() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}