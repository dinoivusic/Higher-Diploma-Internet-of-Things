function openImage(imageID, imageText) {
    // Get the modal
    let imageArea = document.getElementById('imageArea');
    let imageContent = document.getElementById("imageContent");
    let captionText = document.getElementById("caption");

    imageArea.style.display = "block";
    imageContent.src = imageID;
    captionText.innerHTML = imageText;

    let span = document.getElementsByClassName("close")[0];

    span.onclick = function () {
        imageArea.style.display = "none";
    }
}