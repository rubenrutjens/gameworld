<?php

    require("inc/functions.php"); //The file functions.php has to work in order for this to work.
    require("inc/header.php");     //The file header.php has to work in order for this to work
    //VARIABLES
    $conn = databaseConnection(); //Make a connection with the function in our function.php file
    $idcat = 0;                   //Set it to show everything in the beginning

    if (isset($_GET["category_id"])) {
        $idcat = $_GET["category_id"]; //Sets the variable with the selected category id[1=PC, 2=XBOX, 3=PS4]
        $sql = "SELECT * FROM games WHERE category_id = ".$idcat; //Make a variable and fill it with an SQL statement. SELECT everything FROM database called games WHERE category_id is equaled to the selected $idcat
    }
    else //If no $idcat is selected, use following code:
    {
        $sql = "SELECT * FROM games"; // SELECT everything FROM database called games.
    }

    $result = $conn->query($sql); //Fill the variable with the SQL var. First try to make an connection with the database, then execute code.
    $rows = $result->fetch_all(MYSQLI_ASSOC) // Fetches(retrieves) everything from the $result variable.
?>
<div id="games-container">
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
    <div class="productList">
        <div id="idcat_name">
        
        <?php                               //Checks which category_ID is set, and then display the proper category title.
            if ($idcat == 1) {
                echo "<h2>PC</h2>";
            }
            else if ($idcat == 2) {
                echo "<h2>Xbox</h2>";
            }
            else if ($idcat == 3) {
                echo "<h2>Playstation</h2>";
            }
            else if ("") {
                echo "<h2>All games</h2>";
            }
            ?>
        
        </div>

        <form action="cart.php" method="post">

            <?php
            
                foreach ($rows as $key => $value)
                {
                echo '
                    <div class="product-container"  style="background: url(\'images/'.$value["gameImage"].'\') no-repeat  center center ; background-size:cover">
                    <div class="productName">'.$value["gameTitle"].' - ('.$value["gameId"].')</div>
                    <div class="productPrice">'.$value["gamePrice"].'</div>
                    <div class="productDescription">
                    <input type="checkbox" id="order-button" name="selectedgameid[]" value="'.$value["gameId"].'" /></div>
                    </div>';
                }
            
            ?>
			<br>
			<input class="button" id="button-addToCart" type="submit" name="" value="Put in basket..." />
		</form>
		<div class="addToCart"></div>

        </form>
    </div>
</div>
<?php
    require("inc/footer.php");
?>
</body>
</html>