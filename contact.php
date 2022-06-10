<?php
	require("Commandes.php");
	$Prod=prodOrient();

?>

<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="styleMain.css">
	<title>Tempus Fugit</title>
</head>
<body>
<div class="container">
			<nav class="navbar">
				<img class="logo" src="tf1.png">
				<ul>    
					<li><a href="acuueil.php">Acceuil</a></li>
					<li><a href="tarif.php">Tarif</a></li>
					<li><a href="produit.php">Produit</a></li>
					<li><a href="information.php">A propos</a></li>
					<li><a class="active" href="contact.php">Contact</a></li>
				</ul>
			</nav>
        
        
    <section class="main">
            <?php foreach($Prod as $produit): ?>
        <div class="cards">
            <div class="card">
                <img src="<?= $produit->PhotoProd?>" alt="">
				<div class="sous-titre">
                	<div class="card-header">    
            		    <h4 class="prix"><?= $produit->PrixProduit?>€</h4>        
                	</div>    
                	<div class="card-body">
                	    <p><?= $produit->DescProduit?></p>
                	</div>
				</div>
            </div>
        </div>
            <?php endforeach; ?>
    </div>
</div>
        
 
    





</body>
</html>