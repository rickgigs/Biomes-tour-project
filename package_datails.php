<?php
session_start();
error_reporting(0);
include('includes/config.php');
?>

<!-- header section included -->
<!-- header section starts  -->
<?php include("includes/header.php"); ?>
<!-- header section ends -->
<!-- end of header section included -->
<body>

<header class="header">

    <div id="menu-btn" class="fas fa-bars"></div>

    <a data-aos="zoom-in-left" data-aos-delay="150" href="#" class="logo"> <i class="fas fa-paper-plane"></i>Ultimate Rwanda </a>

    <nav class="navbar">
        <a data-aos="zoom-in-left" data-aos-delay="300" href="index.php">home</a>
        <a data-aos="zoom-in-left" data-aos-delay="450" href="index.php">about</a>
        <a data-aos="zoom-in-left" data-aos-delay="600" href="index.php">destination</a>
        <a data-aos="zoom-in-left" data-aos-delay="750" href="index.php">services</a>
        <a data-aos="zoom-in-left" data-aos-delay="900" href="index.php">gallery</a>
        <a data-aos="zoom-in-left" data-aos-delay="300" href="index.php">packages</a>
        <a data-aos="zoom-in-left" data-aos-delay="1150" href="index.php">blogs</a>

    </nav>

    <a data-aos="zoom-in-left" data-aos-delay="1300" href="#book-form" class="btn">book now</a>
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">Enquire</button>

</header>

<!-- home section starts  -->

<section class="home" id="home">

    <div class="content">
        <span data-aos="fade-up" data-aos-delay="150">follow us</span>
        <h3 data-aos="fade-up" data-aos-delay="300">to the Ultimate</h3>
          <h3 data-aos="fade-up" data-aos-delay="300">Rwanda adventure</h3>
        <p data-aos="fade-up" data-aos-delay="450">We offer tours and game drives, with knowledgeable local Rwandan tour guides with extensive background and experience in Conservation Biology as well as deep understanding of Rwanda’s ecosystems. </p>
        
    </div>

</section>
<!-- Php code for Insertig Package in the database Help Me God Please -->
<?php
if(isset($_POST['submit1']))
{
include('includes/config.php');
$pid=intval($_GET['pkgid']);
$useremail=$_POST['useremail'];
$destination=$_POST['destination'];
$tourno=$_POST['tourNo'];
$tourname=$_POST['tourName'];
$phoneNumber=$_POST['phoneNumber'];
$country=$_POST['country'];
$tourspend=$_POST['tourspend'];
$fromdate=$_POST['fromdate'];
$todate=$_POST['todate'];
$comment=$_POST['comment'];
$status=0;
$sql="INSERT INTO tblbooking(PackageId,destination,FromDate,ToDate,tourNo,tourName,UserEmail,country,phoneNumber,tourspend,comment,status) VALUES(:pid,:destination,:fromdate,:todate,:tourNo,:tourName,:useremail,:country,:tourspend,:comment,:status)";
$query = $dbh->prepare($sql);
$query->bindParam(':pid',$pid,PDO::PARAM_STR);
$query->bindParam(':destination',$destination,PDO::PARAM_STR);
$query->bindParam(':fromdate',$fromdate,PDO::PARAM_STR);
$query->bindParam(':todate',$todate,PDO::PARAM_STR);
$query->bindParam(':tourNo',$tourno,PDO::PARAM_STR);
$query->bindParam(':tourName',$tourname,PDO::PARAM_STR);
$query->bindParam(':useremail',$useremail,PDO::PARAM_STR);
$query->bindParam(':country',$country,PDO::PARAM_STR);
$query->bindParam(':phoneNumber',$phoneNumber,PDO::PARAM_STR);
$query->bindParam(':tourspend',$tourspend,PDO::PARAM_STR);
$query->bindParam(':comment',$comment,PDO::PARAM_STR);
$query->bindParam(':status',$status,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
$msg="Booked Successfully";
}
else 
{
$error="Something went wrong. Please try again";
}

}
?>
<!-- booking form section starts  -->

<section class="book-form" id="book-form">

    <form action="" method="POST">
        <div data-aos="zoom-in" data-aos-delay="150" class="inputBox">
            <span>where to?</span>
            <input type="text" placeholder="place name" value="" name="destination">
        </div>
        <div data-aos="zoom-in" data-aos-delay="300" class="inputBox">
            <span>From</span>
            <input type="date" value="" name="fromdate">
        </div>
        <div data-aos="zoom-in" data-aos-delay="300" class="inputBox">
            <span>To</span>
            <input type="date" value="" name="todate">
        </div>
        <div data-aos="zoom-in" data-aos-delay="450" class="inputBox">
            <span>how many?</span>
            <input type="number" placeholder="number of travelers" value="" name="phoneNumber">
        </div>
        




<!-- booking form section ends -->
 <div class="container">
    <center>
        <h1>Book Now</h1>
        <p><?php if($error){?><div class="errorWrap"><strong>ERROR</strong>:<?php echo htmlentities($error); ?> </div><?php } 
				else if($msg){?><div class="succWrap"><strong>SUCCESS</strong>:<?php echo htmlentities($msg); ?> </div><?php }?></p>
      
            <div class="row">
                <div  data-aos="zoom-in" data-aos-delay="150" class="inputBox">
                    <label for="name">Name</label>
                    <input type="text" id="name" placeholder="Your name here" name="tourName">
                </div>
                <div data-aos="zoom-in" data-aos-delay="200" class="inputBox">
                    <label for="email">Email</label>
                    <input type="email" id="email" placeholder="Your email here" name="useremail">
                </div>
            </div>
            <div class="row">
                <div data-aos="zoom-in" data-aos-delay="250" class="inputBox">
                    <label for="subject">Country Residence</label>
                    <input type="text" id="subject" placeholder="Your Country Residence here" name="country" required="required">
                </div>
                <div data-aos="zoom-in" data-aos-delay="300" class="inputBox">
                    <label for="contact">Contact Number</label>
                    <input type="tel" id="contact" placeholder="Your phone number here" name="phoneNumber" required="required">
                </div>
            </div>
             <div class="row">
                <div data-aos="zoom-in" data-aos-delay="350" class="inputBox">
                    <label for="prefer">How much are you looking to spend on this trip? (USD Per Person)</label>
                     <input type="tel" id="contact" placeholder="How Much are you looking for to spend on the trip?" name="tourspend" required="required">
                </div>
            </div>
            <div class="row">
                <div data-aos="zoom-in" data-aos-delay="350" class="inputBox">
                    <label for="comment">Your Comment</label>
                    <textarea id="comment" placeholder="Describe your issue in detail here" rows="3" name="comment"></textarea>
                </div>
            </div>
            <input data-aos="zoom-in" data-aos-delay="400" type="submit" value="BOOK" class="btn" name="submit1" required="required">
           
        </form>
        </section>
    </div>

</center>

<!-- footer section starts  -->
<?php include("includes/footer.php"); ?>

<!-- footer section ends -->

<?php include("includes/script.php"); ?>



</body>
</html>
