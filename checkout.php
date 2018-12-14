<?php
// checkout.php

session_start();

require("inc/functions.php");
require("inc/header.php");     //The file header.php has to work in order for this to work

$totalPrice = 0;

$connect = databaseConnection();
$rows = array();
foreach ($_SESSION["myselectedids"] as $value)
{
	$sql = "SELECT * FROM games WHERE gameId = " . $value;
	$result = $connect->query($sql);
	$rows[] = $result->fetch_all(MYSQLI_ASSOC);
}
?>
    
<div id="checkout-container">
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
		<table>
			<thead>
				<tr>
					<th>image</th>
					<th width="150px">Name</th>
					<th>Description</th>
					<th>Price</th>
				</tr>
			</thead>
			<tbody>
				<?php
				if(count($rows) < 1)
				{
				?>
					<tr>
						<td colspan="4">Your cart is empty!</td>
					</tr>
				<?php
				}
				else
				{
					foreach($rows as $game)
					{
				?>
						<tr>
							<td><?php echo '<div class="product-container"  style="background: url(\'images/'.$game[0]["gameImage"].'\') no-repeat  center center ; background-size:cover">'?></td>
							<td><?php echo $game[0]["gameTitle"]; ?></td>
							<td><?php echo $game[0]["gameDescription"]; ?></td>
							<td>€<?php echo $game[0]["gamePrice"]; ?></td>
						</tr>
						<?php
					}
				}
				?>
			</tbody>
			<tr>
				<td><form action="inc/clear.php" method="post">
					<input class="button" type="submit" name="clearSession" value="Clear cart" style="height: 50px;"/>
				</form></td>
				<td></td>
				<td class="total-price1">Total price:</td>
				<?php
				foreach($rows as $game)
				{
					$totalPrice += $game[0]['gamePrice'] ;
				}

				?>
				<td id="Total-price">€<?php echo $totalPrice?></td>
			</tr>
		</table>
	</div>

    </div>
	<?php
    require("inc/footer.php");
?>
</body>
</html>
