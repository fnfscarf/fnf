<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id))
{
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>ABOUT FNFScarf</title>
   <link rel="shortcut icon" type="x-icon" href="images/logo6.png"> 
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
   <link href='https://fonts.googleapis.com/css?family=Merienda' rel='stylesheet'>
   <link href='https://fonts.googleapis.com/css?family=Kalam' rel='stylesheet'>
   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php @include 'header.php'; ?>

<section class="heading">
    <h3>About Us</h3>
    <p> <a href="home.php">home</a> / about </p>
</section>

<section class="about">

    <div class="flex">

        <div class="image">
            <img src="images/about.jpg" alt="">
        </div>

        <div class="content">
            <h3>why choose us?</h3>
            <p>FNF Scarf design art is inspired blooming floral which shows more freshness and beautifully in this design</p>
            <a href="shop.php" class="btn">shop now</a>
        </div>

    </div>

    <div class="flex">

        <div class="content">
            <h3>what we provide?</h3>
            <p>FNF Scarf is a leading brand in bawal scarves. We are specialise in bawal scarves design with a unique focus on innovation and improvisation. Our aesthetic and signature in the tag.</p>
            <a href="contact.php" class="btn">contact us</a>
        </div>

        <div class="image">
            <img src="images/about1.jpg" alt="">
        </div>

    </div>

    <div class="flex">

        <div class="image">
            <img src="images/about2.jpg" alt="">
        </div>

        <div class="content">
            <h3>who we are?</h3>
            <p>You will be amazed to know that this brand offers nearly 1700 hijab designs that you can choose from their website! </p>
            <a href="#reviews" class="btn">clients reviews</a>
        </div>

    </div>

</section>

<section class="reviews" id="reviews">

    <h1 class="title">client's reviews</h1>

    <div class="box-container">

        <div class="box">
            <img src="images/review/img1.jpg" alt="">
            <p>I always buy chiffon hijabs from FNF Scarf websites and let me tell you for this price color and variety this is such a great deal</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h3>Nia Ahmad</h3>
        </div>

        <div class="box">
            <img src="images/review/img8.jpg" alt="">
            <p>hello, I want to let you know that last week I gave this scarf as a gift for my girlfriend's birthday and she's very love it! Thank you fnf scarf for making my girlfriend day!!</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h3>Halim Faliq</h3>
        </div>

        <div class="box">
            <img src="images/review/img2.jpg" alt="">
            <p>It shipped right away and I’m so satisfied with my order I’m gonna tell all my friends to order from here instead of those high priced high shipping hijab websites.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h3>Sofeya Irdina</h3>
        </div>

        <div class="box">
            <img src="images/review/img3.jpg" alt="">
            <p>My absolute favorite and go to scarfs. I bought them in almost all colors. Looks so elegant. Sometimes I accessorize and it looks equally beautiful. It’s a good size too. </p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Khadijah Iman</h3>
        </div>

        <div class="box">
            <img src="images/review/img9.png" alt="">
            <p>hi!! I am very happy because I could afford to give this scarf to my beautiful wife and she made this scarf as a daily wear scarf seems like she is very love and comfy with the material that made by fnf scarf!</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h3>Danny Maliq</h3>
        </div>

        <div class="box">
            <img src="images/review/img4.jpeg" alt="">
            <p>I love this hijab. It is very light and perfect for summer. It is a little sheer but that is not a problem because it comes with a FNF Scarf or you can just fold it to double it. Shipping was fast. I will be buying more colors.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Iman Troye</h3>
        </div>

        <div class="box">
            <img src="images/review/img5.jpg" alt="">
            <p> I have purchased several of these hijabs in a variety of colors! The fabric is great and the colors so pretty!</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Natasya Balqis</h3>
        </div>

        <div class="box">
            <img src="images/review/img6.jpg" alt="">
            <p>hiiiiii I really shocked because the quality very match with the affordable price!!!!!!!!!! Aww I really love it so much. Will buy it again for later!</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h3>Farishaa Dina</h3>
        </div>
        



        <div class="box">
            <img src="images/review/img7.jpg" alt="">
            <p>I'm very glad because my mother very love the material of the fnf scarf!! She's wear the scarf everyday hahaha!! :)</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h3>Syah Md. Farid</h3>
        </div>

        <div class="box">
            <img src="images/review/img10.jpg" alt="">
            <p>Wow, hello FNF Scarf! I was pleasantly surprised to receive this high-quality satin scarf at an affordable price from my boyfriend. Thank you for making it easy for him to find such a great scarf. I am very happy with this gift especialy from FNF Scarf!</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h3>Sarah Amirah </h3>
        </div>

        <div class="box">
            <img src="images/review/img11.jpg" alt="">
            <p>This scarf is so easy to care for. I just toss it in the wash and it comes out looking as good as new.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h3>Diana Jamaluddin</h3>
        </div>
        
        <div class="box">
            <img src="images/review/img12.jpg" alt="">
            <p>The range of color options was one of the reasons I chose this scarf and I was not disappointed. The color I received was even more vibrant in person.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h3>Wani Nur Asnah </h3>
        </div>


        <div class="box">
            <img src="images/review/img13.jpg" alt="">
            <p>I've had this scarf for a few months now and it's held up perfectly. The durability is excellent.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h3>Lia Naim</h3>
        </div>

        <div class="box">
            <img src="images/review/img14.jpg" alt="">
            <p>The customer service experience was fantastic. The team was very helpful and the shipping was prompt. I would definitely order from this company again.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h3>Azlina Hanim</h3>
        </div>
    </div>

</section>

<?php @include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>