<?php

    require("inc/header.php");

?>
<div id="main-container">

    <div class="navigation-bar"> 
        
    <div class="logo"><a href="index.php">Game World</a></div>
    
        <nav class="navigation">
            <ul>
                <li><a href="index.php">Home</a></li>
                <li><a href="about.php">About Us</a></li>
                <li><a href="contact.php">Contact</a></li>
                <li><a href="games.php">Games</a></li>
            </ul>

        </nav>
       </div>

<div id="whitebox-container">
    <div class="description">
			<div id="left">
				<?php
				//if "email" variable is filled out, send email
				if (isset($_REQUEST['email']))  
				{

  					//Email information
					$admin_email = "rubenrutjens@Hotmail.com";
					$email = $_REQUEST['email'];
					$subject = $_REQUEST['subject'];
					$comment = $_REQUEST['comment'];

  					//send email
					mail($admin_email, $subject, $comment, "From:" . $email);

  					//Email response
					echo "Thank you for contacting us!";
				}

  				//if "email" variable is not filled out, display the form
				else  {
					?>
					<form method="post">

						<h3>Email:</h3>
						 <input name="email" type="text" />
						<h3>Subject:</h3>
						 <input name="subject" type="text" />
						<h3>Message:</h3>
						<textarea name="comment" rows="5" cols="40"></textarea>
						<input type="submit" class=button value="Submit" />
					</form>
					<?php
						}
					?>
            </div>
    </div>

</div>

    <?php
    require("inc/footer.php");
?>
</body>
</html>