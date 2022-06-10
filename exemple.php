<?php
	require("Commandes.php");
	$Prod=prodEx();

?>

<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="exemple.css">
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
                    <li class ="exemples"><a href="exemple.php">Exemples</a></li>
                    <li class ="deroulant"><a href="tarif.php">Tarif</a></li> 
                    <li class ="deroulant"><a href="#">Produit</a>
                        <ul class="sous">
                            <li><a href="cheveux.php">Cheveux</a></li>
                            <li><a href="corps&visage.php">Corps & Visages</a></li>
                            <li><a href="styling.php">Styling</a></li>
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
		<div class ="photo">
			<?php foreach($Prod as $produit): ?>
				<img src="<?= $produit->PhotoRealisation?>" alt="">
			<?php endforeach; ?>
		</div>
	</div>
	


</body>
        
 
    





<footer>
<div class = "nous-contacter">
		<div class ="titre">
			NOUS CONTACTER
		</div>
		<div class ="mail">
			<i class="fa fa-envelope" aria-hidden="true"></i>salon.coraliepalfray@gmail.com.
		</div>
		<div class ="telephone">
			<i class="fa-solid fa-phone"></i>09 82 51 88 35
		</div>
		<div class ="adresse">
			<i class="fas fa-map"></i>7 Rue Martin du Bellay76190 YvetotFrance			
		</div>
	</div>
	<div class ="horaire">
		<div class ="titre">
			HORAIRE D'OUVERTURE
		</div>
		<p>Lundi 09h00-18h30</p>
		<p>Mardi 09h00-18h30</p>
		<p>Mercredi Fermée</p>
		<p>Jeudi 09h00-18h30</p>
		<p>Vendredi 09h00-18h30</p>
		<p>Samedi 09h00-17h00</p>
		<p>Dimanche Fermée</p>
	</div>
	<div class ="reseau">
		<div class ="titre">
			RÉSEAU SOCIAUX
		</div>
		<i class="fa-brands fa-instagram"></i><a href="https://www.instagram.com/salondecoraliepalfray/">Instagram/salondecoraliepalfray</a><br>
		<i class="fa-brands fa-facebook-f"></i><a href="https://www.facebook.com/Salon-de-coiffure-Coralie-Palfray-1207687932666803/photos/?ref=page_internal">Facebook/Salon-de-coiffure-Coralie-Palfray</a>
	</div>
</footer>
</html>