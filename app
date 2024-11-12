//header 
let topHeader = document.querySelector(".header");

window.addEventListener("scroll", changeHeader);

function changeHeader() {
    if (window.scrollY > 700) {
        topHeader.classList.add("changeHeaderPosition");
    }
    else {
        topHeader.classList.remove("changeHeaderPosition");

    }
}

//slideshow
let slides = document.getElementsByClassName("mySlides");
let dots = document.getElementsByClassName("dot");
let slideIndex = 1;

showSlides(slideIndex);

function plusSlides(n) {
    showSlides(slideIndex += n);
}

function currentSlide(n) {
    showSlides(slideIndex = n);
}

function showSlides(n) {
    if (n > slides.length) {
        slideIndex = 1
    }
    if (n < 1) {
        slideIndex = slides.length
    }
    for (let i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    for (let i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace("active", "");
    }
    slides[slideIndex - 1].style.display = "block";
    dots[slideIndex - 1].className += " active";
}

//Dark-Light mode

let modeButton = document.querySelector("span.slider");

modeButton.addEventListener("click", changeMode);

function changeMode() {
    document.body.classList.toggle("lightMode");
}




//Selected the elements in About-us section to animate by scroll
let leftItem = document.querySelector("div.about-img");
let rightItem = document.querySelector("div.about-info");

//Selected the elemnts in why Choose us section to animate by scroll
let chooseTitle = document.querySelector("div.choose-bg .mainTitle");
let chooseCard = document.querySelectorAll("div.choose-bg .reasonCard");

//Selected the elemnts in Services section to animate by scroll
let mainTitle = document.querySelector("div.services .mainTitle");
let serviceImg = document.querySelector("div.servicePart");
let serviceLinks = document.querySelector("div.serviceLink");

//Selected extra services
let extraService = document.querySelectorAll("div.extra-items");

//Selected Professional make up
let professioanalInfo = document.querySelector("div.treatment-info");
let professioanalImg = document.querySelector("div.trearment-image");

//Selected Booking
let booking = document.querySelector("div.calendarInfo");

//selected Latest project
let projectTitle = document.querySelector("div.projects");
let projectSlider = document.querySelector("section.project .container");

//selected Our Team
let teamTitle = document.querySelector("div.team .mainTitle");
let teamMember = document.querySelectorAll("div.team-member");

//event
window.addEventListener("scroll", showEffect);

//Animated "About-us" by scroll
function showEffect() {
    if (window.scrollY > 80) {
        leftItem.classList.add("showLeftEffect");
        rightItem.classList.add("showRightEffect");
    }
    else {
        leftItem.classList.remove("showLeftEffect");
        rightItem.classList.remove("showRightEffect");
    }

    //animated "why Choose us" by scroll
    if (window.scrollY > 850) {
        chooseTitle.classList.add("showLeftEffect");
    }
    else {
        chooseTitle.classList.remove("showLeftEffect");

    }
    for (let i = 0; i < chooseCard.length; i++) {
        if (window.scrollY > 1000) {
            chooseCard[i].classList.add("showFadeEffect");
        }
        else {
            chooseCard[i].classList.remove("showFadeEffect");

        }
    }

    //Animated "Service" by scroll
    if (window.scrollY > 1500) {
        mainTitle.classList.add("showLeftEffect");
        serviceImg.classList.add("showLeftEffect");
        serviceLinks.classList.add("showRightEffect");
    }
    else {
        mainTitle.classList.remove("showLeftEffect");
        serviceImg.classList.remove("showLeftEffect");
        serviceLinks.classList.remove("showRightEffect");

    }

    //animated "extra Services section" by scroll
    for (let i = 0; i < extraService.length; i++) {

        if (window.scrollY > 2200) {
            extraService[i].classList.add("showFadeEffect");
        }
        else {
            extraService[i].classList.remove("showFadeEffect");

        }
    }

    //animated "professioanal make up section" by scroll
    if (window.scrollY > 3200) {
        professioanalInfo.classList.add("showLeftEffect");
        professioanalImg.classList.add("showRightEffect");
    }
    else {
        professioanalInfo.classList.remove("showLeftEffect");
        professioanalImg.classList.remove("showRightEffect");

    }

    //animated "Booking section" by scroll
    if (window.scrollY > 3800) {
        booking.classList.add("showRightEffect");
    }
    else {
        booking.classList.remove("showRightEffect");

    }

    //animated "Latest project section" by scroll
    if (window.scrollY > 4500) {
        projectTitle.classList.add("showLeftEffect");
        projectSlider.classList.add("showFadeEffect");
    }
    else {
        projectTitle.classList.remove("showLeftEffect");
        projectSlider.classList.remove("showFadeEffect");

    }

    //animated "our team" by scroll
    if (window.scrollY > 5200) {
        teamTitle.classList.add("showLeftEffect");
    }
    else {
        teamTitle.classList.remove("showLeftEffect");

    }
    for (let i = 0; i < extraService.length; i++) {
        if (window.scrollY > 5400) {
            teamMember[i].classList.add("showFadeEffect");
        }
        else {
            teamMember[i].classList.remove("showFadeEffect");

        }
    }
}



//Services part

let buttons = document.querySelectorAll("div.services button");
let prevButton = document.querySelector("button.firstBtn");
let prevInfo = document.querySelector("div.firstCard");

for (let button of buttons) {
    button.addEventListener("click", markButton);
    button.addEventListener("click", showInfo);
}

//change the color of selected button
function markButton() {
    prevButton.classList.remove("selected-btn");
    this.classList.add("selected-btn");
    prevButton = this;
}

//Show the information of related and selected button
function showInfo() {
    prevInfo.classList.remove("selected-info");
    if (this.classList[1] == "firstBtn") {
        prevInfo = document.querySelector("div.firstCard");
        prevInfo.classList.add("selected-info");
    }
    if (this.classList[1] == "secondtBtn") {
        prevInfo = document.querySelector("div.secondCard");
        prevInfo.classList.add("selected-info");
    }
    if (this.classList[1] == "thirdBtn") {
        prevInfo = document.querySelector("div.thirdCard");
        prevInfo.classList.add("selected-info");
    }
    if (this.classList[1] == "fourthBtn") {
        prevInfo = document.querySelector("div.fourthCard");
        prevInfo.classList.add("selected-info");
    }
    if (this.classList[1] == "fifthBtn") {
        prevInfo = document.querySelector("div.fifthCard");
        prevInfo.classList.add("selected-info");
    }
}

//Befor-After slider comparison
let container = document.querySelector("div.trearment-image .container");
let sliderComparision = document.querySelector("div.trearment-image .slider");

sliderComparision.addEventListener("input", moveSlider);

function moveSlider(e) {
    container.style.setProperty("--position", `${e.target.value}%`);
}


