<?php
	require("Commandes.php");
	$texte=prodTarif();
	$categ=prodCateg();
	$Prix=prodPrix();	
	$TarifH=prodH();
	$TarifF=prodF();
	$TarifBarbier=prodBarbier();
	$TarifColo=prodColo();
	$TarifForme=prodForme();
	$TarifSoinCheveux=prodSoinCheveux();
	$TarifSoinCheveuxExpert=prodSoinCheveuxExpert();
	$TarifSoinCuirChevelu=prodSoinCuirChevelu();
	$TarifMariage=prodMariage();
	$TarifJunior=prodJunior();
	$Horaire=prodHoraire();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="tarif.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" /><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
	<div class ="main">
		
		<div class="gauche">
			<div class ="prix">
				<div class = "prixC">
					C* 
				</div>
				<div class = "prixML">
					ML* 
				</div>
				<div class = "prixL">
					L* 
				</div>
			</div>
			<div class = "categ">
				<?php 
					$categ[1]='Homme';
					echo $categ[1];
				?>
			</div>
			<?php foreach($TarifH as $TarifH): ?>
				<div class = "nom">
					<?= $TarifH->NomTarif?>
				</div>
				<div class ="descr">
					<?= $TarifH->DescrTarif?>
				</div>
				<div class ="prix">
					<div class = "prixC">
						<?= $TarifH->PrixTailleCheveuxCTarif?>
						<br>
					</div>
					<div class = "prixML">
						<?= $TarifH->PrixTailleCheveuxMLTarif?>
					</div>
					<div class = "prixL">
						<?= $TarifH->PrixTailleCheveuxLTarif?>
					</div>
				</div>
				
			<?php endforeach; ?>
			<div class = "categ">
				<?php 
					$categ[2]='Femme';
					echo $categ[2];
				?>
			</div>
			<?php foreach($TarifF as $F): ?>
				<div class = "nom">
					<?= $F->NomTarif?>
				</div>
				<div class ="descr">
					<?= $F->DescrTarif?>
				</div>
				<div class ="prix">
					<div class = "prixC">
						<?= $F->PrixTailleCheveuxCTarif?>
					</div>
					<div class = "prixML">
						<?= $F->PrixTailleCheveuxMLTarif?>
					</div>
					<div class = "prixL">
						<?= $F->PrixTailleCheveuxLTarif?>
					</div>
				</div>
				
			<?php endforeach; ?>
			<div class = "categ">
				<?php 
					$categ[3]='Service Barbier';
					echo $categ[3];
				?>
			</div>
			<?php foreach($TarifBarbier as $B): ?>
				<div class = "nom">
					<?= $B->NomTarif?>
				</div>
				<div class ="descr">
					<?= $B->DescrTarif?>
				</div>
				<div class ="prix">
					<div class = "prixC">
						<?= $B->PrixTailleCheveuxCTarif?>
					</div>
					<div class = "prixML">
						<?= $B->PrixTailleCheveuxMLTarif?>
					</div>
					<div class = "prixL">
						<?= $B->PrixTailleCheveuxLTarif?>
					</div>
				</div>
				
			<?php endforeach; ?>
			<div class = "categ">
				<?php 
					$categ[4]='Coloration';
					echo $categ[4];
				?>
			</div>
			<?php foreach($TarifColo as $Colo): ?>
				<div class = "nom">
					<?= $Colo->NomTarif?>
				</div>
				<div class ="descr">
					<?= $Colo->DescrTarif?>
				</div>
				<div class ="prix">
					<div class = "prixC">
						<?= $Colo->PrixTailleCheveuxCTarif?>
					</div>
					<div class = "prixML">
						<?= $Colo->PrixTailleCheveuxMLTarif?>
					</div>
					<div class = "prixL">
						<?= $Colo->PrixTailleCheveuxLTarif?>
					</div>
				</div>
				
			<?php endforeach; ?>
			<div class = "categ">
				<?php 
					$categ[5]='Forme';
					echo $categ[5];
				?>
			</div>
			<?php foreach($TarifForme as $f): ?>
				<div class = "nom">
					<?= $f->NomTarif?>
				</div>
				<div class ="descr">
					<?= $f->DescrTarif?>
				</div>
				<div class ="prix">
					<div class = "prixC">
						<?= $f->PrixTailleCheveuxCTarif?>
					</div>
					<div class = "prixML">
						<?= $f->PrixTailleCheveuxMLTarif?>
					</div>
					<div class = "prixL">
						<?= $f->PrixTailleCheveuxLTarif?>
					</div>
				</div>
				
			<?php endforeach; ?>
			<div class = "categ">
				<?php 
					$categ[6]='Soins des Cheveux';
					echo $categ[6];
				?>
			</div>
			<?php foreach($TarifSoinCheveux as $SC): ?>
				<div class = "nom">
					<?= $SC->NomTarif?>
				</div>
				<div class ="descr">
					<?= $SC->DescrTarif?>
				</div>
				<div class ="prix">
					<div class = "prixC">
						<?= $SC->PrixTailleCheveuxCTarif?>
					</div>
					<div class = "prixML">
						<?= $SC->PrixTailleCheveuxMLTarif?>
					</div>
					<div class = "prixL">
						<?= $SC->PrixTailleCheveuxLTarif?>
					</div>
				</div>
				
			<?php endforeach; ?>
			<div class = "categ">
				<?php 
					$categ[7]='Soins Cheveux experts';
					echo $categ[7];
				?>
			</div>
			<?php foreach($TarifSoinCheveuxExpert as $Expert): ?>
				<div class = "nom">
					<?= $Expert->NomTarif?>
				</div>
				<div class ="descr">
					<?= $Expert->DescrTarif?>
				</div>
				<div class ="prix">
					<div class = "prixC">
						<?= $Expert->PrixTailleCheveuxCTarif?>
					</div>
					<div class = "prixML">
						<?= $Expert->PrixTailleCheveuxMLTarif?>
					</div>
					<div class = "prixL">
						<?= $Expert->PrixTailleCheveuxLTarif?>
					</div>
				</div>
				
			<?php endforeach; ?>
			<div class = "categ">
				<?php 
					$categ[8]='Soins du Cuir Chevelu';
					echo $categ[8];
				?>
			</div>
			<?php foreach($TarifSoinCuirChevelu as $C): ?>
				<div class = "nom">
					<?= $C->NomTarif?>
				</div>
				<div class ="descr">
					<?= $C->DescrTarif?>
				</div>
				<div class ="prix">
					<div class = "prixC">
						<?= $C->PrixTailleCheveuxCTarif?>
					</div>
					<div class = "prixML">
						<?= $C->PrixTailleCheveuxMLTarif?>
					</div>
					<div class = "prixL">
						<?= $C->PrixTailleCheveuxLTarif?>
					</div>
				</div>
				
			<?php endforeach; ?>
			<div class = "categ">
				<?php 
					$categ[9]='Mariage & Chignon';
					echo $categ[9];
				?>
			</div>
			<?php foreach($TarifMariage as $M): ?>
				<div class = "nom">
					<?= $M->NomTarif?>
				</div>
				<div class ="descr">
					<?= $M->DescrTarif?>
				</div>
				<div class ="prix">
					<div class = "prixC">
						<?= $M->PrixTailleCheveuxCTarif?>
					</div>
					<div class = "prixML">
						<?= $M->PrixTailleCheveuxMLTarif?>
					</div>
					<div class = "prixL">
						<?= $M->PrixTailleCheveuxLTarif?>
					</div>
				</div>
				
			<?php endforeach; ?>
			<div class = "categ">
				<?php 
					$categ[10]='Junior';
					echo $categ[10];
				?>
			</div>
			<?php foreach($TarifJunior as $J): ?>
				<div class = "nom">
					<?= $J->NomTarif?>
				</div>
				<div class ="descr">
					<?= $J->DescrTarif?>
				</div>
				<div class ="prix">
					<div class = "prixC">
						<?= $J->PrixTailleCheveuxCTarif?>
					</div>
					<div class = "prixML">
						<?= $J->PrixTailleCheveuxMLTarif?>
					</div>
					<div class = "prixL">
						<?= $J->PrixTailleCheveuxLTarif?>
					</div>
				</div>				
			<?php endforeach; ?>

    	</div>
		
	</div>
    <div class ="precision">
		C* = Cheveux courts
		<br>
		ML* = Cheveux mi-longs
		<br>
		L* = Cheveux longs
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