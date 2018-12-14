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

    <div class="banner">
        <img src="images/banner.jpg" width="100%">
        <h2><span>GameWorld:<span class='spacer'></span><br /><span class='spacer'></span>The cheapest games on the market!</span></h2>

    </div>

    <div class="platform-container">
        <div class="platform-pc">
					<a href="games.php?category_id=1">
					<img src="images/gamepics/windows.png" height="250px" width="350px" alt=""></a>
        </div>
        <div class="platform-xbox">
                    <a href="games.php?category_id=2">
					<img src="images/gamepics/xbox.gif" height="250px" width="350px" alt=""></a>
        </div>
        <div class="platform-ps4">
                    <a href="games.php?category_id=3">
					<img src="images/gamepics/ps4.jpg" height="250px" width="350px" alt=""></a>
        </div>
    </div>
    
</div>
<?php
        require("inc/footer.php");
    ?>
</body>
</html>