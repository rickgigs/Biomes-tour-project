<!-- header section starts  -->

<header class="header">

    <div id="menu-btn" class="fas fa-bars"></div>

    <a data-aos="zoom-in-left" data-aos-delay="150" href="#" class="logo"> <i class="fas fa-paper-plane"></i>Ultimate Rwanda </a>

    <nav class="navbar">
        <a data-aos="zoom-in-left" data-aos-delay="300" href="#home">home</a>
        <a data-aos="zoom-in-left" data-aos-delay="450" href="#about">about</a>
        <a data-aos="zoom-in-left" data-aos-delay="600" href="#destination">destination</a>
        <a data-aos="zoom-in-left" data-aos-delay="750" href="#services">services</a>
        <a data-aos="zoom-in-left" data-aos-delay="900" href="#gallery">gallery</a>
        <a data-aos="zoom-in-left" data-aos-delay="300" href="#packages">packages</a>
        <a data-aos="zoom-in-left" data-aos-delay="1150" href="#blogs">blogs</a>

    </nav>
       <!-- model pop up enguiry form -->
       <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter" id="myBtn">Enquire</button>
        <!-- model pop up enguiry form -->


     
   

</header>

<!-- header section ends -->

<!-- The Modal -->
    <div id="myModal" class="modal">

     <!-- Modal content -->
     <div class="modal-content">
       <span class="close">&times;</span>
       
       <div class="container">
      
            <div class="contact-box">
                 <div class="contact-right">
                  
                    <form action="">
                        <div class="input-row">
                            <div class="input-group">
                                <label >Name</label>
                                <input type="text" placeholder="Full Names">
                            </div>
                            <div class="input-group">
                                <label >Email</label>
                                <input type="text" placeholder="Names">
                            </div>
                        </div>
                         <div class="input-row">
                            <div class="input-group">
                                <label >Contact</label>
                                <input type="text" placeholder="Names">
                            </div>
                            <div class="input-group">
                                <label >Name</label>
                                <input type="text" placeholder="Names">
                            </div>
                        </div>
                        <div class="input-row">
                            <div class="input-group">
                                <label >Prefered method of contact</label>
                               <select name="contact">
                                            <option>Select</option>
                                            <option >King</option> 
                               </select>
                            </div>
                             <div class="input-group">
                                <label >How did you hear about us</label>
                               <select name="contact">
                                            <option>Select</option>
                                            <option value="">King</option> 
                               </select>
                            </div>
                        </div>
                         <div class="input-row">
                            <div class="input-group">
                                <label >Destinations</label>
                               <select name="contact">
                                            <option>Select...</option>
                                         
                               </select>
                            </div>
                            
                        </div>
                        <label>Message</label>
                        <textarea name="msg" rows="5" placeholder="Your message"></textarea>
                        <button type="submit"> sende</button>
                    </form>
                </div>

            </div>
    </div>
     </div>

    </div>

    <script type="text/javascript">


    // Get the modal
    var modal = document.getElementById("myModal");

    // Get the button that opens the modal
    var btn = document.getElementById("myBtn");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks on the button, open the modal
    btn.onclick = function() {
      modal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
      modal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
      if (event.target == modal) {
        modal.style.display = "none";
      }
    }

    </script>
