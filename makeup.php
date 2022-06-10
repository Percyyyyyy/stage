<?php
	require("Commandes.php");
	$Prod=prodMakeUp();

?>

<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="produit.css">
	<title>Coralie Palfray</title>
</head>
<body>
	<header>
        <nav id ="navbar" class="nav">	
            <div class ="nomEnt">
                <a href="accueil.html">Coralie Palfray</a>
            </div>
            <a class ="icon" onclick="myFunction()">&#9776;</a></li>
            <ul>
                
                <div class="onglets"> 
                    
                    <li class ="contact"><a href="contact.php">Contact</a></li>  
                    <li class ="exemples"><a href="exemple.php">Exemples</a></li>
                    <li class ="deroulant"><a href="tarif.php">Tarif</a></li> 
                    <li class ="deroulant"><a href="#">Produit</a>
                        <ul class="sous">
                            <li><a href="cheveux.php">Cheveux</a></li>
                            <li><a href="corps&visage.php">Corps & Visages</a></li>
                            <li><a href="styling.php">Styling</a></li>
                            <li><a href="makeup.php">Make-Up</a></li>
                       </ul> 
                   </li>       
                    
                   
                </div>
            </ul>
                  		
        </nav>
        <div class ="presentation">
            <h1>Coupes & Coiffures</h1>
        </div>
        
    </header>
    <script>
        function myFunction(){
            var x = document.getElementById("navbar");
            if(x.className === "nav"){
                x.className+=" responsive";
            } else{
                x.className="nav"
            }
        }
    </script>
	<div class ="real">

<?php foreach($Prod as $produit): ?>
    <div class ="photo">
        <img src="<?= $produit->PhotoProduit?>" alt="">
        
        <div class="info">
            <div class ="nom">
                <?= $produit->NomProduit?>
            </div>                 	    
            <div class="descr">
                <p><?= $produit->DescProduit?></p>
            </div>
            <div class="prix">    
                <?= $produit->PrixProduit?>€     
            </div>
        </div>
         
    </div>
    
<?php endforeach; ?>

</div>


</body>
        
 
    





</body>
</html>