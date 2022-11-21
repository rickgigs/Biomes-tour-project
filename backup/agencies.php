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

<?php include("includes/navbar.php"); ?>

<!-- home section starts  -->
<section class="home" id="home">

    <div class="content">
        <span data-aos="fade-up" data-aos-delay="150">follow us</span>
        <h3 data-aos="fade-up" data-aos-delay="300">to the Ultimate</h3>
          <h3 data-aos="fade-up" data-aos-delay="300">Rwanda adventure</h3>
        <p data-aos="fade-up" data-aos-delay="450">Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus quia illum quod perspiciatis harum in possimus? Totam consequuntur officia quia?</p>
        <a data-aos="fade-up" data-aos-delay="600" href="#" class="btn">book now</a>
    </div>

</section>

<!-- about section starts  -->

<section class="about" id="about">

    <div class="video-container" data-aos="fade-right" data-aos-delay="300">
        <video src="images/about-vid-1.mp4" muted autoplay loop class="video"></video>
        <div class="controls">
            <span class="control-btn" data-src="images/about-vid-1.mp4"></span>
            <span class="control-btn" data-src="images/about-vid-2.mp4"></span>
            <span class="control-btn" data-src="images/about-vid-3.mp4"></span>
        </div>
    </div>

    <div class="content" data-aos="fade-left" data-aos-delay="600">
        <span>why choose us?</span>
        <h3>Nature's Majesty Awaits You</h3>
        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde fugit repellat error deserunt nam aperiam odit libero quos provident. Nostrum?</p>
        <a href="#" class="btn">read more</a>
    </div>

</section>



<style>
.package-content-div{
    position: flex;
    background-color: #111;
    left: 30px;

    width: 100%;
    height: 250px;

}
.package-content-div h2{
font-size: 30px;
position: absolute;
left: 30px;
color: #fff;
}
.card{
    position: absolute;
    background-color: #222;
    
    display: flex;
   align-items: center;
    margin-top: 50px;
    margin-left: 25%;
    width: 50%;
    height: 200px;
    margin-bottom: 20px;
    margin-right: 20px;
    border-radius: 10px;
    color: #fff;
 
   
}

.card a img{
height: 200px;
background-size: cover;
padding: 20px;

}
.card section{
    display: block;
    left: 250px;
    position: absolute;
   
}

.card section h4 {
    font-size: 2rem;
}.card section h5{
    font-size: 2rem;
}
</style>


<!-- Packages -->
<div class="package-content-div">
    <h2>Packages</h2>

    <div class="card">
       
       
          
                        <a href="">
                            <img src="images/akagera.jpg" class="card-img" alt="">
                        </a>
                    
                    
                         <section>
                                <h4>      
                                <span class="badge rounded-pill ml-1 status">Hello Jesus</span>


                                </h4>
                                <h5 class="font-italic text-info" style="font-size: .85rem;"><span class="mr-1"><i class="fas fa-map-marker-alt"></i></span><?php echo $package['location'] .', '. $package['country']; ?></h5>
                                <div class="" style="font-size: .85rem;">
                                <p class="text-muted pt-2"><span class="mr-1" ><i class="far fa-clock"></i></span><?php echo $package['num_days'] .' days '. $package['num_nights'] .' nights' ?></p>
                                </div>
                                <p class="card-text mb-3" style="font-size: .7rem;"><?php echo substr($package['place_details'], 0, 40); ?>...</p><hr>


                               
                                <h5>BDT <?php echo $package['budget_price'] ?> /-</h5>
                                <br>
                                <br>
                                <a href="package.php?package_id=<?php echo $package['package_id']; ?>" class="btn btn-primary float-right" style="position: relative; top: -30px; font-size: .8rem;">View<span class=" ml-2"><i class="fas fa-angle-right"></i></span>
                                </a>
                               

                         </section>
                         
                        
        
    </div>

</div>














<!-- banner section ends -->

<!-- footer section starts  -->
<?php include("includes/footer.php"); ?>

<!-- footer section ends -->

<?php include("includes/script.php"); ?>



</body>
</html>
