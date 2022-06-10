<?php

function prodEx()
{
    if(require("config.php"))
    {
        $rec=$bdd->prepare("SELECT PhotoRealisation FROM realisation");
        $rec->execute();
        $data = $rec->fetchAll(PDO::FETCH_OBJ);
        return $data;
        $rec->closeCursor();
    }
}
function prodStyling()
{
    if(require("config.php"))
    {
        $rec=$bdd->prepare("SELECT NomProduit, DescProduit, VolumeProduit, PrixProduit, PhotoProduit FROM produit INNER JOIN categorie ON produit.IDCategorie = 1 LIMIT 14");
        $rec->execute();
        $data = $rec->fetchAll(PDO::FETCH_OBJ);
        return $data;
        $rec->closeCursor();
    }
}
function prodCV()
{
    if(require("config.php"))
    {
        $rec=$bdd->prepare("SELECT NomProduit, PrixProduit, VolumeProduit, DescProduit, PhotoProduit FROM produit INNER JOIN categorie ON produit.IDCategorie = 2 LIMIT 8");
        $rec->execute();
        $data = $rec->fetchAll(PDO::FETCH_OBJ);
        return $data;
        $rec->closeCursor();
    }
}
function prodCheveux()
{
    if(require("config.php"))
    {
        $rec=$bdd->prepare("SELECT NomProduit, PrixProduit, VolumeProduit, PhotoProduit, DescProduit FROM produit INNER JOIN categorie ON produit.IDCategorie = 3 LIMIT 56");
        $rec->execute();
        $data = $rec->fetchAll(PDO::FETCH_OBJ);
        return $data;
        $rec->closeCursor();
    }
}
function prodMakeUp()
{
    if(require("config.php"))
    {
        $rec=$bdd->prepare("SELECT PrixProduit, PhotoProduit, NomProduit, VolumeProduit, NomCatégorie FROM produit INNER JOIN categorie ON produit.IDCategorie = 4 LIMIT 3");
        $rec->execute();
        $data = $rec->fetchAll(PDO::FETCH_OBJ);
        return $data;
        $rec->closeCursor();
    }
}
function prodH()
{
    if(require("config.php"))
    {
        $rec=$bdd->prepare("SELECT NomTypeTarif, NomTarif, DescrTarif, PrixTailleCheveuxCTarif, PrixTailleCheveuxMLTarif, PrixTailleCheveuxLTarif FROM tarif INNER JOIN typetarif ON tarif.IDTypeTarif = 1 LIMIT 1");
        $rec->execute();
        $data = $rec->fetchAll(PDO::FETCH_OBJ);
        return $data;
        $rec->closeCursor();
    }
}
function prodF()
{
    if(require("config.php"))
    {
        $rec=$bdd->prepare("SELECT NomTypeTarif, NomTarif, DescrTarif, PrixTailleCheveuxCTarif, PrixTailleCheveuxMLTarif, PrixTailleCheveuxLTarif FROM tarif INNER JOIN typetarif ON tarif.IDTypeTarif = 2 LIMIT 2");
        $rec->execute();
        $data = $rec->fetchAll(PDO::FETCH_OBJ);
        return $data;
        $rec->closeCursor();
    }
}
function prodBarbier()
{
    if(require("config.php"))
    {
        $rec=$bdd->prepare("SELECT NomTypeTarif, NomTarif, DescrTarif, PrixTailleCheveuxCTarif, PrixTailleCheveuxMLTarif, PrixTailleCheveuxLTarif FROM tarif INNER JOIN typetarif ON tarif.IDTypeTarif = 3 LIMIT 3");
        $rec->execute();
        $data = $rec->fetchAll(PDO::FETCH_OBJ);
        return $data;
        $rec->closeCursor();
    }
}
function prodColo()
{
    if(require("config.php"))
    {
        $rec=$bdd->prepare("SELECT NomTypeTarif, NomTarif, DescrTarif, PrixTailleCheveuxCTarif, PrixTailleCheveuxMLTarif, PrixTailleCheveuxLTarif FROM tarif INNER JOIN typetarif ON tarif.IDTypeTarif = 4 LIMIT 7");
        $rec->execute();
        $data = $rec->fetchAll(PDO::FETCH_OBJ);
        return $data;
        $rec->closeCursor();
    }
}
function prodForme()
{
    if(require("config.php"))
    {
        $rec=$bdd->prepare("SELECT NomTypeTarif, NomTarif, DescrTarif, PrixTailleCheveuxCTarif, PrixTailleCheveuxMLTarif, PrixTailleCheveuxLTarif FROM tarif INNER JOIN typetarif ON tarif.IDTypeTarif = 5 LIMIT 1");
        $rec->execute();
        $data = $rec->fetchAll(PDO::FETCH_OBJ);
        return $data;
        $rec->closeCursor();
    }
}
function prodSoinCheveux()
{
    if(require("config.php"))
    {
        $rec=$bdd->prepare("SELECT NomTypeTarif, NomTarif, DescrTarif, PrixTailleCheveuxCTarif, PrixTailleCheveuxMLTarif, PrixTailleCheveuxLTarif FROM tarif INNER JOIN typetarif ON tarif.IDTypeTarif = 6 LIMIT 2");
        $rec->execute();
        $data = $rec->fetchAll(PDO::FETCH_OBJ);
        return $data;
        $rec->closeCursor();
    }
}
function prodSoinCheveuxExpert()
{
    if(require("config.php"))
    {
        $rec=$bdd->prepare("SELECT NomTypeTarif, NomTarif, DescrTarif, PrixTailleCheveuxCTarif, PrixTailleCheveuxMLTarif, PrixTailleCheveuxLTarif FROM tarif INNER JOIN typetarif ON tarif.IDTypeTarif = 7 LIMIT 3");
        $rec->execute();
        $data = $rec->fetchAll(PDO::FETCH_OBJ);
        return $data;
        $rec->closeCursor();
    }
}
function prodSoinCuirChevelu()
{
    if(require("config.php"))
    {
        $rec=$bdd->prepare("SELECT NomTypeTarif, NomTarif, DescrTarif, PrixTailleCheveuxCTarif, PrixTailleCheveuxMLTarif, PrixTailleCheveuxLTarif FROM tarif INNER JOIN typetarif ON tarif.IDTypeTarif = 8 LIMIT 4");
        $rec->execute();
        $data = $rec->fetchAll(PDO::FETCH_OBJ);
        return $data;
        $rec->closeCursor();
    }
}
function prodMariage()
{
    if(require("config.php"))
    {
        $rec=$bdd->prepare("SELECT NomTypeTarif, NomTarif, DescrTarif, PrixTailleCheveuxCTarif, PrixTailleCheveuxMLTarif, PrixTailleCheveuxLTarif FROM tarif INNER JOIN typetarif ON tarif.IDTypeTarif = 8 LIMIT 2");
        $rec->execute();
        $data = $rec->fetchAll(PDO::FETCH_OBJ);
        return $data;
        $rec->closeCursor();
    }
}
function prodJunior()
{
    if(require("config.php"))
    {
        $rec=$bdd->prepare("SELECT NomTypeTarif, NomTarif, DescrTarif, PrixTailleCheveuxCTarif, PrixTailleCheveuxMLTarif, PrixTailleCheveuxLTarif FROM tarif INNER JOIN typetarif ON tarif.IDTypeTarif = 10  LIMIT 5");
        $rec->execute();
        $data = $rec->fetchAll(PDO::FETCH_OBJ);
        return $data;
        $rec->closeCursor();
    }
}
function prodPrix()
{
    if(require("config.php"))
    {
        $rec=$bdd->prepare("SELECT PrixTailleCheveuxCTarif, PrixTailleCheveuxMLTarif, PrixTailleCheveuxLTarif FROM tarif LIMIT 9");
        $rec->execute();
        $data = $rec->fetchAll(PDO::FETCH_OBJ);
        return $data;
        $rec->closeCursor();
    }
}
function prodCateg()
{
    if(require("config.php"))
    {
        $rec=$bdd->prepare("SELECT NomTypeTarif FROM typetarif LIMIT 9");
        $rec->execute();
        $data = $rec->fetchAll(PDO::FETCH_OBJ);
        return $data;
        $rec->closeCursor();
    }
}
function prodTarif()
{
    if(require("config.php"))
    {
        $rec=$bdd->prepare("SELECT NomTarif, DescrTarif FROM tarif LIMIT 34");
        $rec->execute();
        $data = $rec->fetchAll(PDO::FETCH_OBJ);
        return $data;
        $rec->closeCursor();
    }
}
function prodHoraire()
{
    if(require("config.php"))
    {
        $rec=$bdd->prepare("SELECT HeureHoraire, JourHoraire FROM horaire LIMIT 8");
        $rec->execute();
        $data = $rec->fetchAll(PDO::FETCH_OBJ);
        return $data;
        $rec->closeCursor();
    }
}
?>