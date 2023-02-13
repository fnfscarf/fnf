<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id))
{
   header('location:login.php');
}

if(isset($_POST['add_to_wishlist']))
{
   $product_id = $_POST['product_id'];
   $product_name = $_POST['product_name'];
   $product_price = $_POST['product_price'];
   $product_image = $_POST['product_image'];
   
   $check_wishlist_numbers = mysqli_query($conn, "SELECT * FROM `wishlist` WHERE name = '$product_name' AND user_id = '$user_id'") or die('query failed');

   $check_cart_numbers = mysqli_query($conn, "SELECT * FROM `cart` WHERE name = '$product_name' AND user_id = '$user_id'") or die('query failed');

   if(mysqli_num_rows($check_wishlist_numbers) > 0)
   {
       $message[] = 'already added to wishlist';
   }
   elseif(mysqli_num_rows($check_cart_numbers) > 0)
   {
       $message[] = 'already added to cart';
   }
   else
   {
       mysqli_query($conn, "INSERT INTO `wishlist`(user_id, pid, name, price, image) VALUES('$user_id', '$product_id', '$product_name', '$product_price', '$product_image')") or die('query failed');
       $message[] = 'product added to wishlist';
   }
}

if(isset($_POST['add_to_cart']))
{

   $product_id = $_POST['product_id'];
   $product_name = $_POST['product_name'];
   $product_price = $_POST['product_price'];
   $product_image = $_POST['product_image'];
   $product_quantity = $_POST['product_quantity'];

   $check_cart_numbers = mysqli_query($conn, "SELECT * FROM `cart` WHERE name = '$product_name' AND user_id = '$user_id'") or die('query failed');

   if(mysqli_num_rows($check_cart_numbers) > 0)
   {
       $message[] = 'already added to cart';
   }
   else
   {
       $check_wishlist_numbers = mysqli_query($conn, "SELECT * FROM `wishlist` WHERE name = '$product_name' AND user_id = '$user_id'") or die('query failed');

       if(mysqli_num_rows($check_wishlist_numbers) > 0)
       {
           mysqli_query($conn, "DELETE FROM `wishlist` WHERE name = '$product_name' AND user_id = '$user_id'") or die('query failed');
       }

       mysqli_query($conn, "INSERT INTO `cart`(user_id, pid, name, price, quantity, image) VALUES('$user_id', '$product_id', '$product_name', '$product_price', '$product_quantity', '$product_image')") or die('query failed');
       $message[] = 'product added to cart';
   }
}

?>
<hr style="border:1px solid; background-color:#8a7b6d; border-color:#3B3131;">
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
   <title>FNFScarf</title>
   
   <link rel="shortcut icon" type="x-icon" href="images/logo6.png"> 
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
   <link href='https://fonts.googleapis.com/css?family=Merienda' rel='stylesheet'>
   <link href='https://fonts.googleapis.com/css?family=Kalam' rel='stylesheet'>
   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/style.css">

   <style>

</style>


</head>
<body>
   
<?php @include 'header.php'; ?>

<section class="home">

<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="images/imgslide1.png" style="width:100%">
  <div class="text">Welcome to our FNF Scarf, where fashion meets comfort.<br>
   Our handcrafted scarves are made from the finest materials, ensuring both warmth and style in every wear.<br>
   Whether you're looking for a pop of color to brighten up your outfit or a luxurious accessory to elevate your look, we have something for everyone.</div>
</div>

<div class="mySlides fade" >
  <div class="numbertext">2 / 3</div>
  <img src="images/imgslide2.png" style="width:100%" >
  <div class="text2">FNF Scarf was established with the vision of making a fashionable and comfortable scarf for every Muslimah women.<br>
   Our collection includes a wide range of scarves such as shawl and bawal from various types of material like chiffon, cotton, and silk.</div>
</div>

<div class="mySlides fade" >
  <div class="numbertext">3 / 3</div>
  <img src="images/imgslide3.png" style="width:100%">
  <div class="text">Browse our collection today and discover why our customers love our premium quality scarves.<br>
   With new arrivals added regularly, there's always something new to love.<br>
   Wrap yourself in style and comfort with our must-have scarves.<br> 
   Enjoy shopping!</div>
</div>

<a class="prev" onclick="plusSlides(-1)">❮</a>
<a class="next" onclick="plusSlides(1)">❯</a>

</div>
<br>


<script>
   let slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

// function currentSlide(n) {
//   showSlides(slideIndex = n);
// }

function showSlides(n) 
{
  let i;
  let slides = document.getElementsByClassName("mySlides");
//   let dots = document.getElementsByClassName("dot");
   if (n > slides.length) 
   {
      slideIndex = 1
   }    
   if (n < 1) 
   {
      slideIndex = slides.length
   }
   for (i = 0; i < slides.length; i++) 
   {
      slides[i].style.display = "none";  
   }
//   for (i = 0; i < dots.length; i++) {
//     dots[i].className = dots[i].className.replace(" active", "");
//   }
  slides[slideIndex-1].style.display = "block";  
//   dots[slideIndex-1].className += " active";
}
</script>




</section>

<section class="products">

   <h1 class="title">latest products</h1>

   <div class="box-container">

      <?php
         $select_products = mysqli_query($conn, "SELECT * FROM `products` LIMIT 12") or die('query failed');
         if(mysqli_num_rows($select_products) > 0)
         {
            while($fetch_products = mysqli_fetch_assoc($select_products))
            {
            ?>
            <form action="" method="POST" class="box">
               <a href="view_page.php?pid=<?php echo $fetch_products['pid']; ?>" class="fas fa-eye"></a>
               <div class="price">RM<?php echo $fetch_products['price']; ?>.00</div>
               <div class="box-2"><img src="uploaded_img/<?php echo $fetch_products['image']; ?>" alt="" class="image"></div>
               <div class="name"><?php echo $fetch_products['name']; ?></div>
               <input type="number" name="product_quantity" value="1" min="0" class="qty">
               <input type="hidden" name="product_id" value="<?php echo $fetch_products['pid']; ?>">
               <input type="hidden" name="product_name" value="<?php echo $fetch_products['name']; ?>">
               <input type="hidden" name="product_price" value="<?php echo $fetch_products['price']; ?>">
               <input type="hidden" name="product_image" value="<?php echo $fetch_products['image']; ?>">
               <input type="submit" value="add to wishlist" name="add_to_wishlist" class="option-btn">
               <input type="submit" value="add to cart" name="add_to_cart" class="btn">
            </form>
            <?php
            }
         }
         else
         {
            echo '<p class="empty">no products added yet!</p>';
         }
      ?>

   </div>

   <div class="more-btn">
      <a href="shop.php" class="option-btn">load more</a>
   </div>

</section>

<section class="home-contact">

   <div class="content">
      <h3>have any questions?</h3>
      <p>Contact us by emailing at inquiries@fnfscarf.com or call us on +60125667695</p>
      <a href="contact.php" class="btn">contact us</a>
   </div>

</section>


<?php @include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>