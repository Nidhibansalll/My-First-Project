<html><head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1200px;   
  position: relative;
  margin: auto;
  width: 500%; 
  height: 500px; 
  overflow: hidden;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
</head>
<body>


<div class="slideshow-container">

<div class="mySlides fade" style="display: none;">
  <div class="numbertext"></div>
  <img src="image.1.jpg" style="width:100%">
</div>

<div class="mySlides fade" style="display: none;">
  <div class="numbertext"></div>
  <img src="image.2.jpg" style="width:100%">
</div>

<div class="mySlides fade" style="display: block;">
  <div class="numbertext"></div>
  <img src="image.3.jpg" style="width:100%">
</div>

<div class="mySlides fade" style="display: none;">
    <div class="numbertext"></div>
    <img src="image.4.jpg" style="width:100%">
  </div>

<div class="mySlides fade" style="display: none;">
    <div class="numbertext"></div>
    <img src="image.5.jpg" style="width:100%">
  </div>
</div>
<br>

<div style="text-align:center">
  <span class="dot"></span>
  <span class="dot"></span>
  <span class="dot active"></span>
  <span class="dot"></span>
  <span class="dot"></span>
</div>

<script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>


 </body></html>
 <!-- *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
body{
    background-color:rgb(236, 246, 250);
}
.navbar{
    display: flex;
    align-items: center;
    padding: 20px;
    padding-left: 50px;
    padding-right: 20px;
    padding-top: 20px;
    background-color: #031136;
}
nav{
    flex: 1;
    text-align: right;
}
nav li{
    display: inline-block;
    padding: 0% 20px;
    list-style: none;
    font-size: 40px;
    margin-right: 70px;
}
a{
    font-size: 22px;
    color: white;
    cursor: pointer;
    text-decoration: none;
}
nav li a:hover{
    color: white;
    transition: all 1s ease 0s;
    border-bottom: 3px solid white;
}
 nav ul button{
    height: 50px;
    width: 130px;
    border: none;
    background:#ee9568;
    border-radius: 50px;
    padding: 10px 20px;
    outline: none;
    cursor: pointer;
    font-size: 20px;
    margin-left: 40px;
}
nav ul button:hover{
    color: white;
    transition: all 0.5s ease 0s;
    border-bottom: 3px solid white;
}
section.login{
    position: absolute;
    height: 100%;
    width: 100%;
    background: url(login.jpg);
    filter: blur(2px) brightness(30%);
}
#login-form{
    display: none;
}
.form-box{
    width: 380px;
    height: 480px;
    position: relative;
    margin: 2% auto;
    background: rgba(0,0,0,0.9);
    padding: 10px;
    overflow: hidden;    
}
.button-box{
    width: 220px;
    margin: 35px auto;
    position: relative;
    border-radius: 30px;
}
.toggle-btn{
    padding: 10px 30px;
    cursor: pointer;
    background: transparent;
    border: 0;
    outline: none;
    position: relative;
    color: white;
}
#btn{
    top: 0;
    left: 0;
    position: absolute;
    width: 110px;
    height: 100%;
    background:#FDE24D;
    border-radius: 30px;
    transition: .5s;
}
.input-group-login{
    top: 150px;
    position: absolute;
    width: 280px;
    transition: .5s;
}
.input-group-signin{
    top: 120px;
    position: absolute;
    width: 280px;
    transition: .5s;
}
.input-field{
    width: 100%;
    padding: 10px 0;
    margin: 5px 0;
    border-left: 0;
    border-top: 0;
    border-right: 0;
    border-bottom: 1px solid white;
    outline: none;
    background: transparent;
}
.submit-btn{
    width: 85%;
    padding: 10px 30px;
    cursor: pointer;
    display: block;
    margin: auto;
    background:#fbb75d;
    border: 0;
    outline: none;
    border-radius: 30px;
}
.check-box{
    margin: 30px 10px 34px 0;
}
span{
    color: aqua;
    font-size: 12px;
    bottom: 68px;
    position: absolute;
}
#log-in{
    left: 50px;
}
#login input{
    color: white;
    font-size: 15;
}
#sign-in{
    left: 450px;
}
#signin input{
    color: white;
    font-size: 15;
}
.slider-container {
    width: 80%;
    margin: auto;
    overflow: hidden;
  } 
  .slider {
    display: flex;
    transition: transform 0.5s ease-in-out;
  }
  .slide {
    min-width: 100%;
    box-sizing: border-box;
  }
.logo{
    font-size: 60px;
    color: white;
    font-family: 'Times New Roman', Times, serif;
    font-weight: bolder;
}
input[type=text]{
    color: white;
}
input[type=password]{
    color: white;
}
input[type=email]{
    color: white;
}

* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1200px;   
  position: relative;
  margin: auto;
  width: 500%; 
  height: 500px; 
  overflow: hidden;
}

/* The dots/bullets/indicators */
.dot {
  height: 0px;
  width: 0px;
  margin: 0 2px;
  background-color:transparent;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}

/*Paragraph*/
.para{
    text-align: justify;
    font-family:serif;
    color: black;
    height: 100%;
    width: 95%;
}
.para1{
    float: left;
    width:350px;
    height:250px;
    padding: 0 10px 0.0;
}
/*Feedback*/
.row-container .item {
    margin-bottom: 20px; 
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 8px;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
    text-align: center; 
    background-color:rgb(186, 227, 240);
}

h2.large-text {
    font-size: 35px;
    font-weight: bold;
}
p{
    text-align: center;
    font-size: 20px;
}
.feed{
    background:#fbb75d; 
    border-color:#fbb75d;
    height: 50px;
    width: 200px;
    border: none;
    border-radius: 50px;
    padding: 10px 20px;
    cursor: pointer;
    font-size: 20px;
}
button a{
    color:black;
    text-decoration: solid;
    text-align: bold;
}
/*Gallery*/
.gallery{
    display: flex;
    justify-content: center;
    align-items: center;
    flex-wrap: wrap;
   
}
.video{
    color:#031136;
}
.gallery img{
    width: 400px;
    height: 250px;
    border: 2px solid rgb(236, 246, 250);
    border-radius: 13px;
    box-shadow: 4px 7px 7px 0px #00000042;
    cursor: pointer;
    margin: 9px;
    transition: 400ms;
}
.gallery img:hover{
    filter: brightness(1);
    transform: scale(1.03);
}
h3.large-text {
    font-size: 25px;
    font-weight: bold;
}
/*Services*/

.apply_1{
    margin-top:50px;
    margin-left:20px;
    width:400px;
    height:60vh;
    background-color:rgb(186, 227, 240);
    border-color:rgb(236, 246, 250);
    border-width:3px;
    border-radius:25px;
    }
    ul{
        list-style-type:square;
        padding-inline-start:30px;
    }
    .apply_1:hover{
        filter: brightness(1);
        transform: scale(1.03);
    }
    .apply_1 h3{
    padding-top:5px;
    }
    i{
        font-size: 40px;
    }
    .apply_2{
    margin-left:430px;
    margin-top:-60vh;
    width:350px;
    height:60vh;
    background-color:rgb(186, 227, 240);
    border-color:rgb(236, 246, 250);
    border-width:3px;
    border-radius:25px;
    }
    .apply_2 h3{
    padding-top:5px;
    }
    .apply_2:hover{
        filter: brightness(1);
        transform: scale(1.03);
    }
    .apply_3{
    margin-left:800px;
    margin-top:-60vh;
    width:450px;
    height:60vh;
    background-color:rgb(186, 227, 240);
    border-color:rgb(236, 246, 250);
    border-width:3px;
    border-radius:25px;
    }
    .apply_3 h3{
    padding-top:5px;
    }
    .apply_3:hover{
        filter: brightness(1);
        transform: scale(1.03);
    }
    .contact-bar{
    position:fixed;
    right:0;
    top:190;
    align-items: center;
    width:70px;
    height:50vh;
    display:flex;
    justify-content:space-between;
    align-items:center;
    flex-direction:column;
    background-color:#fff;
    }
    .contact-bar{
    position:fixed;
    list-style:none;
    right:0;
    top:190;
    align-items:center;
    width:50px;
    height:50vh;
    display:flex;
    justify-content:space-between;
    align-items:center;
    flex-direction:column;
    background-color:#fff;
    }
    .contact-bar li{
    margin:5px;
    height:auto;
    }
.apply_4{
        margin-top:50px;
        margin-left:20px;
        width:400px;
        height:60vh;
        background-color:rgb(186, 227, 240);
        border-color:rgb(236, 246, 250);
        border-width:3px;
        border-radius:25px;
        }
        .apply_4 h3{
        padding-top:5px;
        }
        .apply_4:hover{
            filter: brightness(1);
            transform: scale(1.03);
        }
.apply_5{
        margin-left:430px;
        margin-top:-60vh;
        width:350px;
        height:60vh;
        background-color:rgb(186, 227, 240);
        border-color:rgb(236, 246, 250);
        border-width:3px;
        border-radius:25px;
        }
        .apply_5 h3{
        padding-top:5px;
        }
        .apply_5:hover{
            filter: brightness(1);
            transform: scale(1.03);
        }
.apply_6{
        margin-left:800px;
        margin-top:-60vh;
        width:450px;
        height:60vh;
        background-color:rgb(191, 230, 241);
        border-color:rgb(236, 246, 250);
        border-width:3px;
        border-radius:25px;
        }
        .apply_6 h3{
        padding-top:5px;
        }
        .apply_6:hover{
            filter: brightness(1);
            transform: scale(1.03);
        }
        .contact-bar{
        position:fixed;
        right:0;
        top:190;
        align-items: center;
        width:70px;
        height:50vh;
        display:flex;
        justify-content:space-between;
        align-items:center;
        flex-direction:column;
        background-color:#fff;
        }
        .contact-bar{
        position:fixed;
        list-style:none;
        right:0;
        top:190;
        align-items:center;
        width:50px;
        height:50vh;
        display:flex;
        justify-content:space-between;
        align-items:center;
        flex-direction:column;
        background-color:#fff;
        }
        .contact-bar li{
        margin:5px;
        height:auto;
        } 
p.feedback{
    text-align: center;
}
/*Footer*/
.footer{
    padding:10px 0;
    background-color:#031136;
}
.footer .social a{
    font-size: 24px;
    color: white;
    width: 40px;
    height: 40px;
    line-height: 38px;
    display:inline-block;
    text-align:center;
    border-radius:50%;
    margin: 0 8px;
    opacity: 0.75;
}
.footer .social a:hover{
    opacity: 0.9;
}
.footer ul{
    margin-top: 0;
    padding: 0;
    list-style: none;
    font-size: 18px;
    line-height: 1.6;
    margin-bottom: 0;
    text-align: center;
    color: white;
}
.footer ul a{
    color: inherit;
    text-decoration: none;
    opacity: 0.8;
}
.footer ul li{
    display: inline-block;
    padding: 0 15px;
}
.footer ul li a:hover{
    opacity: 1;
}
.footer .copyright{
    margin: 15px;
    text-align: center;
    font-size:30px;
    color:white;
} -->