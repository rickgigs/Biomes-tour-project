
<!-- header section included -->
<!-- header section starts  -->
<?php include("includes/header.php"); ?>
<!-- header section ends -->
<!-- end of header section included -->
<body>

<?php include("includes/navbar.php"); ?>

<!-- home section starts  -->

<section class="home" id="home">

    <div class="content">
        <span data-aos="fade-up" data-aos-delay="150">Follow Us</span>
        <h3 data-aos="fade-up" data-aos-delay="300">to the Ultimate</h3>
          <h3 data-aos="fade-up" data-aos-delay="300">Rwanda adventure</h3>
        <p data-aos="fade-up" data-aos-delay="450">We offer tours and game drives, with knowledgeable local Rwandan tour guides with extensive background and experience in Conservation Biology as well as deep understanding of Rwanda’s ecosystems. </p>
        <a data-aos="fade-up" data-aos-delay="600" href="#" class="btn">book now</a>
    </div>

</section>

<!-- home section ends -->

<!-- booking form section starts  -->

<section class="book-form" id="book-form">

    <form action="">
        <div data-aos="zoom-in" data-aos-delay="150" class="inputBox">
            <span>where to?</span>
            <input type="text" placeholder="place name" value="">
        </div>
        <div data-aos="zoom-in" data-aos-delay="300" class="inputBox">
            <span>when?</span>
            <input type="date" value="">
        </div>
        <div data-aos="zoom-in" data-aos-delay="450" class="inputBox">
            <span>how many?</span>
            <input type="number" placeholder="number of travelers" value="">
        </div>
        <input data-aos="zoom-in" data-aos-delay="600" type="submit" value="BOOK" class="btn">
    </form>

</section>

<!-- booking form section ends -->

<!-- about section starts  -->

<section class="about" id="about">

    <div class="video-container" data-aos="fade-right" data-aos-delay="300">
        <video src="images/visit-rwanda1.mp4" muted autoplay loop class="video"></video>
        <div class="controls">
            <span class="control-btn" data-src="images/visit-rwanda1.mp4"></span>
            <span class="control-btn" data-src="images/visit-rwanda1.mp4"></span>
            <span class="control-btn" data-src="images/visit-rwanda1.mp4"></span>
        </div>
    </div>

    <div class="content" data-aos="fade-left" data-aos-delay="600">
        <span>why choose us?</span>
        <h3>We are the best tour company in Rwanda</h3>
        <p>We are Rwanda based tour Operator Company. We offer tours and game drives, with knowledgeable local Rwandan tour guides with extensive background and experience in Conservation Biology as well as deep understanding of Rwanda’s ecosystems. </p>
        <a href="#" class="btn">read more</a>
    </div>

</section>
<!-- about section ends -->

<!-- destination section starts  -->
<?php include("includes/destination.php"); ?>
<!-- destination section ends -->

<!-- services section starts  -->

<?php include("includes/service.php"); ?>

<!-- services section ends -->

<!-- gallery section starts  -->

<section class="gallery" id="gallery">

    <div class="heading">
        <span>our gallery</span>
        <h1>we record memories</h1>
    </div>

    <div class="box-container">

        <div class="box" data-aos="zoom-in-up" data-aos-delay="150">
            <img src="images/IMG-20220605-WA0001.jpg" alt="">
            <span>travel Ultimate Rwanda</span>
            <h3>Visit Nyungwe</h3>
        </div>

        <div class="box" data-aos="zoom-in-up" data-aos-delay="300">
            <img src="images/IMG-20220605-WA0009.jpg" alt="">
            <span>travel Ultimate Rwanda</span>
            <h3>Visit Ingangi </h3>
        </div>

        <div class="box" data-aos="zoom-in-up" data-aos-delay="450">
            <img src="images/Karenge2_Gael_vande_Weghe.jpg" alt="">
            <span>travel spot</span>
            <h3>alaska</h3>
        </div>

        <div class="box" data-aos="zoom-in-up" data-aos-delay="150">
            <img src="images/Webp.net-.jpg" alt="">
            <span>travel Ultimate Rwanda</span>
            <h3>Visit Inkende</h3>
        </div>

        <div class="box" data-aos="zoom-in-up" data-aos-delay="300">
            <img src="images/IMG-20220605-WA0010.jpg" alt="">
            <span>travel Ultimate Rwanda</span>
            <h3>brazil</h3>
        </div>

        <div class="box" data-aos="zoom-in-up" data-aos-delay="450">
            <img src="images/one-and-only-nyungwe-house-8.jpg" alt="">
            <span>travel Ultimate Rwanda</span>
            <h3>maldive</h3>
        </div>

        <div class="box" data-aos="zoom-in-up" data-aos-delay="150">
            <img src="images/nyungwe.jpg" alt="">
            <span>travel Ultimate Rwanda</span>
            <h3>iceland</h3>
        </div>

        <div class="box" data-aos="zoom-in-up" data-aos-delay="300">
            <img src="images/gorillas.jpg" alt="">
            <span>travel Ultimate Rwanda</span>
            <h3>alaska</h3>
        </div>

        <div class="box" data-aos="zoom-in-up" data-aos-delay="450">
            <img src="images/iby-iwacu.jpg" alt="">
            <span>travel Ultimate Rwanda</span>
            <h3>maldive</h3>
        </div>

    </div>

</section>

<!-- gallery section ends -->


<!-- packages section starts  -->

 <section class="packages" id="packages">

   <h1 class="heading-title">top destinations</h1>

   <div class="box-container">
    <!-- php package code -->

<?php $sql = "SELECT * from tbltourpackages";
$query = $dbh->prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{	?>

      <div class="box">
         <div class="image">
            <img src="images/<?php echo htmlentities($result->PackageImage);?>" alt="">
         </div>
         <div class="content">
            <h3><?php echo htmlentities($result->PackageName);?></h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, perspiciatis!</p>
            <a href="package_datails.php?pkgid=<?php echo htmlentities($result->PackageId);?>" class="btn">book now</a>
         </div>
      </div>

  <?php }} ?>    

      

   </div>

   <div class="load-more"><span class="btn">load more</span></div>

</section>

<!-- packages section ends -->

<!-- review section starts  -->

<section class="review">

    <div class="content" data-aos="fade-right" data-aos-delay="300">
        <span>testimonials</span>
        <h3>good news from our clients</h3>
        <p style="text-align: left;">Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda laudantium corporis fugiat quae unde perspiciatis similique ab modi enim consequatur aperiam cumque distinctio facilis sit, debitis possimus asperiores non harum.</p>
    </div>

    <div class="box-container" data-aos="fade-left" data-aos-delay="600">

        <div class="box">
            <p style="text-align: left;">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia, ratione.</p>
            <div class="user">
                <img src="logo/user.png" alt="">
                <div class="info">
                    <h3>john deo</h3>
                    <span>Visit Rwanda</span>
                </div>
            </div>
        </div>
        <div class="box">
            <p style="text-align: left;">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia, ratione.</p>
            <div class="user">
                <img src="logo/user.png" alt="">
                <div class="info">
                    <h3>john deo</h3>
                    <span>Visit Rwanda</span>
                </div>
            </div>
        </div>
        <div class="box">
            <p style="text-align: left;">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia, ratione.</p>
            <div class="user">
                <img src="logo/user.png" alt="">
                <div class="info">
                    <h3>john deo</h3>
                    <span>Visit Rwanda</span>
                </div>
            </div>
        </div>
        <div class="box">
            <p style="text-align: left;">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia, ratione.</p>
            <div class="user">
                <img src="logo/user.png" alt="">
                <div class="info">
                    <h3>john deo</h3>
                   <span>Visit Rwanda</span>
                </div>
            </div>
        </div>

    </div>

</section>

<!-- review section ends -->

<!-- blogs section starts  -->


<!-- blogs section ends -->

<!-- banner section starts  -->

<div class="banner">

    <div class="content" data-aos="zoom-in-up" data-aos-delay="300">
        <span>start your adventures</span>
        <h3>Let's Explore This World</h3>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum voluptatum praesentium amet quibusdam quam officia suscipit odio.</p>
        <a href="#book-form" class="btn">book now</a>
    </div>

</div>

<!-- banner section ends -->

<!-- footer section starts  -->
<?php include("includes/footer.php"); ?>

<!-- footer section ends -->

<?php include("includes/script.php"); ?>



</body>
</html>
