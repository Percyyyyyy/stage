-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 10 juin 2022 à 08:06
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `coraliepalfray`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `IDCategorie` tinyint(4) NOT NULL,
  `NomCatégorie` varchar(50) NOT NULL,
  `IDGamme` tinyint(4) NOT NULL,
  PRIMARY KEY (`IDCategorie`),
  KEY `IDGamme` (`IDGamme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`IDCategorie`, `NomCatégorie`, `IDGamme`) VALUES
(1, 'Styling', 0),
(2, 'Corps & Visages', 0),
(3, 'Cheveux', 0),
(4, 'Make-Up', 0);

-- --------------------------------------------------------

--
-- Structure de la table `horaire`
--

DROP TABLE IF EXISTS `horaire`;
CREATE TABLE IF NOT EXISTS `horaire` (
  `IDHoraire` int(11) NOT NULL AUTO_INCREMENT,
  `JourHoraire` varchar(15) NOT NULL,
  `HeureHoraire` varchar(15) NOT NULL,
  PRIMARY KEY (`IDHoraire`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `horaire`
--

INSERT INTO `horaire` (`IDHoraire`, `JourHoraire`, `HeureHoraire`) VALUES
(1, 'Lundi', '09h00 - 18h30'),
(2, 'Mardi', '09h00 - 18h30'),
(3, 'Mercredi', 'Fermé'),
(4, 'Jeudi', '09h00 - 18h30'),
(5, 'Jeudi', '09h00 - 18h30'),
(6, 'Vendredi', '09h00 - 18h30'),
(7, 'Samedi', '08h00 - 17h00'),
(8, 'Dimanche', 'Fermé');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `IDProduit` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NomProduit` varchar(50) NOT NULL,
  `DescProduit` varchar(350) NOT NULL,
  `PhotoProduit` varchar(500) NOT NULL,
  `VolumeProduit` varchar(5) NOT NULL,
  `PrixProduit` float NOT NULL,
  `IDCategorie` tinyint(4) NOT NULL,
  PRIMARY KEY (`IDProduit`),
  KEY `IDCategorie` (`IDCategorie`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`IDProduit`, `NomProduit`, `DescProduit`, `PhotoProduit`, `VolumeProduit`, `PrixProduit`, `IDCategorie`) VALUES
(1, 'HOMME / Hair & Scalp Tonic', 'Lotion tonifiante pour stimuler le cuir chevelu et fortifier les cheveux.\r\n', 'photoProduit\\Cheveux\\Homme-Hair&ScalpTonic150Ml', '150ML', 17, 3),
(2, 'HOMME / Hair Beard Body Wash', 'Pour la peau, les cheveux et la barbe : gel de douche énergisant qui nettoie en douceur, hydrate et protège la peau et les cheveux du dessèchement.\r\n', 'photoProduit\\Cheveux\\Homme-HairBeardBodyWash', '200ML', 19, 3),
(3, 'Volume Powder', 'Poudre capillaire pour plus de volume et de tenue.', 'photoProduit\\Styling\\VolumePowder14g', '14G', 22.5, 1),
(4, 'HOMME / Matt Grip Paste', 'Pâte coiffante pour texture modulable et flexible.', 'photoProduit\\Styling\\Homme-MattGripPaste75Ml', '75ML', 30, 1),
(5, 'HOMME / Shaving Gel', 'Pour un rasage parfait : hydrogel légèrement moussant contenant de précieux actifs qui prennent soin de la peau dès le rasage.\r\n', 'photoProduit\\C&V\\Homme-ShavingGel150Ml', '150ML', 16, 2),
(6, 'HOMME / Styling Gel', 'Pour une coiffure parfaite : gel coiffant hydratant pour une durée moyenne à forte.', 'photoProduit\\Cheveux\\Homme-StylingGel100Ml', '100Ml', 15.5, 3),
(7, 'HOMME / Texture Pomade', 'Pommade à base d’eau pour une texture maîtrisée.', 'photoProduit\\Styling\\Homme-TexturePomade75Ml', '75ML', 24, 1),
(8, 'HOMME / After Shave Face & Beard', 'Soin 3 en 1 : after-shave, soin du visage revitalisant et soin de la barbe pour bien prendre soin de sa barbe et sa peau après le rasage.\r\n', 'photoProduit\\C&V\\Homme-AfterShaveFace&Beard75Ml', '75ML', 22, 2),
(9, 'Soft Texture Spray', 'Ce spray soignant transforme sans effort la chevelure en une matière décontractée et un look décoiffé.\r\n', 'photoProduit\\Styling\\SoftTextureSpray150Ml', '150ML', 23, 1),
(10, 'Modulator', 'Pâte de modelage structurante pour une tenue flexible sans brillance artificielle.', 'photoProduit\\Styling\\Modulator75Ml', '75ML', 24, 1),
(12, 'Heat Protector', 'Spray protecteur anti-chaleur pour des cheveux lisses et brillants.', 'photoProduit\\Styling\\HeatProtector100Ml', '100ML', 23, 1),
(13, 'Thickening Cream', 'Visiblement plus de volume et plus de matière au toucher en un instant. L’épaisseur de chaque cheveu est augmentée de près de 10 % de manière prouvée. Les cheveux restent naturels, conservent leur mouvement et sont faciles à coiffer.\r\n\r\n', 'photoProduit\\Styling\\ThickeningCream125Ml', '125ML', 30, 1),
(14, 'Volumiser', 'Gel aérien pour des cheveux plus malléables et volumineux.\r\n', 'photoProduit\\Styling\\Volumiser150Ml', '150ML', 28.6, 1),
(15, 'Volumising Lotion', 'Lotion de séchage pour plus de volume et une bonne tenue.', 'photoProduit\\Styling\\VolumisingLotion100Ml', '100ML', 24, 1),
(16, 'Curl Control Mousse', 'Mousse pour cheveux bouclés et gel hydratant deux en un pour des boucles de rêve.', 'photoProduit\\Styling\\CurlControlMousse100Ml', '100ML', 22, 1),
(17, 'Fixateur Mousse', 'Mousse capillaire créatrice de volume pour une tenue moyenne ou longue durée.', 'photoProduit\\Styling\\FixateurMousse200Ml', '200ML', 19, 1),
(18, 'Formule Laque Ultra Strong', 'Spray capillaire fin en aérosol pour du volume et une tenue ultralégère.', 'photoProduit\\Styling\\FormuleLaqueUltraStrong300Ml', '300ML', 20, 1),
(19, 'Spray Artistique', 'Laque capillaire sans aérosol pour une fixation extra-forte et un coiffage créatif.', 'photoProduit\\Styling\\SprayArtistique250Ml', '250ML', 21, 1),
(20, 'Glossing Spray', 'Spray brillance en aérosol pour une brillance resplendissante.\r\n', 'photoProduit\\Styling\\GlossingSpray150Ml', '150ML', 28, 1),
(21, 'SPA / Le Lait', 'Lait bien-être pour une peau ultra-douce.', 'photoProduit\\C&V\\SpaLeLait250Ml', '250ML', 19.5, 2),
(22, 'SPA / Le Bain', 'Crème de bain bien-être rafraîchissante pour la peau et les cheveux.\r\n', 'photoProduit\\C&V\\SpaLeBain250Ml', '250ML', 19.5, 2),
(23, 'SPA / Citromycine', 'Pour des mains lisses et douces. Crème intense bien-être pour les mains aux actifs précieux.', 'photoProduit\\C&V\\SpaCitromycine50Ml', '50ML', 19.5, 2),
(24, 'GLAM COLOR NO YELLOW SHAMPP /.07 Crystal', 'Shampooing sans sulfate avec Complexe Protection Couleur pour les cheveux naturellement blonds, colorés, décolorés aux reflets froids.\r\n', 'photoProduit\\Cheveux\\GlamColorNoYellowShampp.07Crystal250Ml', '250ML', 26.5, 3),
(25, 'PROTECTION COULEUR / Vital', 'Shampooing protection couleur pour cheveux fragilisés avec l’innovant Complexe Protection Couleur.\r\n', 'photoProduit\\Cheveux\\ShampooVitalProtectionCouleur250Ml', '250ML', 22.5, 3),
(26, 'PROTECTION COULEUR / Conditionneur .32 BLONDE', 'Soin rapide pour cheveux blonds et décolorés dans des tonalités dorées et chaudes avec le Complexe Brillance UV et le Complexe Protection Couleur.', 'photoProduit\\Cheveux\\ProtectionCouleurConditionneurBlonde.32-150Ml', '150ML', 22, 3),
(27, 'PROTECTION COULEUR / Conditionneur .24 CHOCOLATE', 'Répare, restructure et nourrit intensément les cheveux bruns ou teints en brun, leur apporte une hydratation ultime et intensifie leurs chatoyants reflets brun chocolat et chauds.', 'photoProduit\\Cheveux\\ProtectionCouleurConditionneurChocolate.24-150Ml', '150ML', 22, 3),
(28, 'PROTECTION COULEUR / Lait', 'Lait bien-être pour une peau ultra-douce.', 'photoProduit\\Cheveux\\ProtectionCouleurLait200Ml', '200ML', 26.5, 2),
(29, 'GLAM COLOR HAIR MASK /.40 Copper', 'Soin ravivant la couleur pour des cheveux rouge cuivré ou colorés en cuivré aux reflets lumineux.', 'photoProduit\\Cheveux\\GlamColorHairMask.40Copper200Ml', '200ML', 35, 3),
(30, 'GLAM COLOR TONER /.11 Steel Gray', 'Coloration pour sublimer les cheveux gris.', 'photoProduit\\Cheveux\\GlamColorTonerSteelGray.11-200Ml', '', 43, 3),
(31, 'PROTECTION CHEVEUX / Complexe 3 Mask Volume', 'Stabilise et renforce le cheveu.', 'photoProduit\\Cheveux\\ProtectionCheveuxComplexe3MaskVolume100Ml', '100ML', 20, 3),
(32, 'OIL THERPY / Conditioning Spray', 'Pour un démêlage et une brillance optimale.', 'photoProduit\\Cheveux\\OilTherapyConditioningSpray150Ml', '150ML', 27, 3),
(33, 'OIL THERAPY / Therapy Cream', 'Pour une douceur et une brillance optimale.', 'photoProduit\\Cheveux\\OilTherapyCream100Ml', '100ML', 38, 3),
(34, 'BEAUTÉ / Conditionneur douceur', 'Soin express douceur et brillance.\r\n', 'photoProduit\\Cheveux\\BeautéConditionneurDouceur200Ml', '200ML', 22, 3),
(35, 'BEAUTÉ / Essence de Protéine', 'Répare immédiatement les cheveux abimés. Empêche les cheveux de devenir cassants.', 'photoProduit\\Cheveux\\EssenceDeProtéine200Ml', '200ML', 27, 3),
(36, 'BEAUTÉ / Shampooing', 'Shampooing au parfum élégant à usage quotidien.\r\n', 'photoProduit\\Cheveux\\ShampooingBeauté250Ml', '250ML', 15.5, 3),
(37, 'BEAUTÉ / Shampooing', 'Shampooing au parfum élégant à usage quotidien.', 'photoProduit\\Cheveux\\ShampooingBeauté450Ml', '450ML', 24.5, 3),
(38, 'DRY HAIR / Shampooing', 'Shampooing doux, hydratant et nourrissant pour les cheveux secs, abîmés et ternes.\r\n', 'photoProduit\\Cheveux\\ShampooDryHair250Ml', '250ML', 24, 3),
(39, 'FINE HAIR / Cream', 'Masque pour les cheveux fins, bouclés.', 'photoProduit\\Cheveux\\CreamFineHair100Ml', '100ML', 20.5, 3),
(40, 'ANTI-FRIZZ / Styling Balm', 'Pour une tenue souple. Pour une brillance soyeuse et des cheveux plus faciles à coiffer.', 'photoProduit\\Cheveux\\StylingBalmAntiFrizz150Ml', '', 19, 3),
(41, 'FRIZZ CONTROL / Smoothing Conditioner', 'Donne de la souplesse. Lisse les cheveux.', 'photoProduit\\Cheveux\\FrizzControlSmoothingConditioner150Ml', '', 24, 3),
(42, 'FRIZZ CONTROL/ Smoothing Shampoo', 'Dompte les cheveux rebelles et indiscipliné. Donne aux cheveux une brillance soyeuse.', 'photoProduit\\Cheveux\\FrizzControlSmoothingShampoo250Ml', '250ML', 23, 3),
(43, 'CURL / Curl Activating Conditioning Spray', 'Active l\'élasticité des boucles.', 'photoProduit\\Cheveux\\CurlActivatingConditioningSpray200Ml', '200ML', 23, 3),
(44, 'CURL / Curl Defining Styling Fluid', 'Prend soin, contrôle et offre une brillance intense.', 'photoProduit\\Cheveux\\CurlDefiningStylingFluid125Ml', '125ML', 25, 3),
(45, 'CURL / Shampoo', 'Nettoie en douceur et hydrate. Discipline les cheveux dès le lavage.', 'photoProduit\\Cheveux\\CurlShampoo250Ml', '250ML', 22.5, 3),
(46, 'LONG HAIR / Protective Glossing Essence', 'Essence nourrissante, protectrice et créatrice de brillance.', 'photoProduit\\Cheveux\\LongHairProtectiveGlossingEssence250Ml', '250ML', 0, 3),
(47, 'LONG HAIR / Protective Volumising Shampoo', 'Nettoie en douceur, offre force et volume aux cheveux fins et longs.', 'photoProduit\\Cheveux\\LongHairProtectiveVolumisingShampoo250Ml', '250ML', 28.5, 3),
(48, 'LONG HAIR / Protective Softening Shampoo', 'Nettoie en douceur, offre force et souplesse aux cheveux longs sensibilisés.', 'photoProduit\\Cheveux\\LongHairProtectiveSofteningShampoo250Ml', '250ML', 27, 3),
(49, 'LONG HAIR / Refreshing Dry Shampoo', 'Rafraîchit les cheveux et offre une sensation de propreté sans les laver.', 'photoProduit\\Cheveux\\LongHairRefreshingDryShampoo200Ml', '200ML', 27.5, 3),
(50, 'LONG HAIR / Protective Repair Mask', 'Protection efficace contre la casse et les fourches.', 'photoProduit\\Cheveux\\LongHairProtectiveRepairMask150Ml', '150ML', 37, 3),
(51, 'LONG HAIR / Protective Conditioning Fluid', 'Apporte hydration et protection aux cheveux, procure une brillance soyeuse.', 'photoProduit\\Cheveux\\LongHairProtectiveConditioningFluid100Ml', '100ML', 27.3, 3),
(52, 'LONG HAIR / Weighless Conditioning Oil', 'Apporte brillance et douceur sans alourdir.', 'photoProduit\\Cheveux\\LongHairWeightlessConditioningOil100Ml', '100ML', 42, 3),
(53, 'LONG HAIR / Growth Booster', 'Stimule l\'activité des cellules de croissance capillaire et accélère la pousse.', 'photoProduit\\Cheveux\\LongHairGrowthBooster95Ml', '95ML', 63, 3),
(54, 'LONG HAIR / Detangler', 'Apaise, hydrate et démêle les cheveux longs.', 'photoProduit\\Cheveux\\LongHairDetangler150Ml', '150ML', 38, 3),
(55, 'SOLEIL / After Sun Hair&Body Shampoo', 'Nettoie en douceur et élimine les résidus de sel. Protège la couleur.', 'photoProduit\\Cheveux\\AfterSunHair&BodyShampoo250Ml', '250ML', 23, 3),
(56, 'SOLEIL / After Sun Hydrating Hair Mask', 'Apaise, soigne et répare les cheveux après l\'exposition. Protège contre les méfaits du soleil.', 'photoProduit\\Cheveux\\AfterSunHydratingHairMask125Ml', '125ML', 23, 3),
(57, 'SOLEIL / Self Tanning Drops', 'Pour un hâle sur mesure.', 'photoProduit\\C&V\\SelfTanningDrops30Ml', '30ML', 27, 2),
(58, 'SOLEIL / Hydrating Tan Activating Bodylotion', 'Favorise un bronzage rapide et uniforme.', 'photoProduit\\C&V\\HydratingTanActivatingBodylotion200Ml', '200ML', 34, 2),
(59, 'VOLUME / Strengthening Shampoo', 'Shampooing fortifiant, créateur de volume.', 'photoProduit\\Cheveux\\VolumeStrengtheningShampoo250Ml', '250ML', 25.5, 3),
(60, 'VOLUME / Weightless Conditioner', 'Soin capillaire aérien express.', 'photoProduit\\Cheveux\\VolumeWeightlessConditioner150Ml', '150ML', 28.5, 3),
(61, 'VOLUME / Strengthening Repair Mask', 'Masque capillaire fortifiant, restructurant.', 'photoProduit\\Cheveux\\VolumeStrengtheningRepairMask100Ml', '100ML', 27, 3),
(62, 'VOLUME / Strengthening Conditioning Spray', 'Spray capillaire nourrissant fortifiant.', 'photoProduit\\Cheveux\\VolumeStrengtheningConditioningSpray150Ml.jpg', '150ML', 30, 3),
(63, 'ANTI-PELLICULAIRE / Shamppoing Apaisant', 'Élimine les pellicules en douceur et en profondeur. Atténue immédiatement les irritations et les démangeaisons. ', 'photoProduit\\Cheveux\\ShampooingApaisant200Ml', '200ML', 29.5, 3),
(64, 'ANTI-PELLICULAIRE / Lotion Apaisante', 'Réduit de manière prouvée la formation de nouvelles pellicules. Atténue les irritations et les démangeaisons.', 'photoProduit\\Cheveux\\LotionApaisante100Ml', '100ML', 30.5, 3),
(65, 'ANTI-AGE / Shampooing Actif', 'Ralentit le vieillissement prématuré des cheveux. Offre un volume palpable.', 'photoProduit\\Cheveux\\ShampooingActif200Ml', '200ML', 31.5, 3),
(66, 'Shampooing Lipokérine E', 'Revitalise les cheveux fatigués. Soulage les irritations.', 'photoProduit\\Cheveux\\ShampooingLipokérineE250Ml', '250ML', 23, 3),
(67, 'Visarôme Dynamiqque', 'Détend et apaise le cuir chevelu et les sens. Stimule la croissance capillaire.', 'photoProduit\\Cheveux\\VisarômeDynamiqueE30Ml', '30ML', 33.5, 3),
(68, 'Lotion Stopil P', 'Idéal en complément du shampooing quotidien. Pour des cheveux resplendissants et pleins d\'énergie.', 'photoProduit\\Cheveux\\LotionStopilP250Ml', '250ML', 31, 3),
(69, 'Babybios', 'Offre aux cheveux souplesse et brilliance.', 'photoProduit\\Cheveux\\Babybios250Ml', '250ML', 31, 3),
(70, 'Shampooing Lipokérine B', 'Nourrit les cheveux fatigués. Offre souplesse et brillance aux cheveux.', 'photoProduit\\Cheveux\\ShampooingLipokérineB250Ml', '250ML', 23, 3),
(71, 'Visarôme Dynamique B', 'Favorise la circulation sanguine et exerce une action stimulante. Pour un cuir chevelu rapide.', 'photoProduit\\Cheveux\\VisarômeDynamiqueB30Ml', '30ML', 33.5, 3),
(72, 'Visarôme Dynamique EN', 'Revitalise et stimule le cuir chevelu et les sens. Améliore la croissance capillaire.', 'photoProduit\\Cheveux\\VisarômeDynamiqueEN30Ml', '30ML', 33.5, 3),
(73, 'Génésicap Plus', 'Soulage les sensations de traitement. Apaise les irritations.', 'photoProduit\\Cheveux\\GénésicapPlus15Ml', '15ML', 35.5, 3),
(74, 'Shampooing Bio Fanelan', 'Stimule le fonctionnement du cuir chevelu. Prépare les cheveux au traitement antichute.', 'photoProduit\\Cheveux\\ShampooingBioFanelan250Ml', '250ML', 29.5, 3),
(75, 'Visarôme Dynamique R', 'Simule le cuir chevelu. Optimise les conditions de croissance des cheveux.', 'photoProduit\\Cheveux\\VisarômeDynamiqueR30Ml', '30ML', 34, 3),
(76, 'Shampooing Hydrotoxa', 'Empêche les cheveux de mécher. Rend les cheveux frais.', 'photoProduit\\Cheveux\\ShampooingHydrotoxa250Ml', '250ML', 22.5, 3),
(77, 'Shampooing Lipokérine A', 'Empêche les cheveux de regraisser trop vite. Pour un cuir chevelu sain et purifié.', 'photoProduit\\Cheveux\\ShampooingLipokérineA250Ml', '250ML', 22.5, 3);

-- --------------------------------------------------------

--
-- Structure de la table `realisation`
--

DROP TABLE IF EXISTS `realisation`;
CREATE TABLE IF NOT EXISTS `realisation` (
  `IDRealisation` smallint(4) NOT NULL AUTO_INCREMENT,
  `PhotoRealisation` varchar(500) NOT NULL,
  PRIMARY KEY (`IDRealisation`)
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `realisation`
--

INSERT INTO `realisation` (`IDRealisation`, `PhotoRealisation`) VALUES
(1, 'photo\\real1.jpg'),
(2, 'photo\\real2.jpg'),
(3, 'photo\\real3.jpg'),
(4, 'photo\\real4.jpg'),
(5, 'photo\\real5.jpg'),
(6, 'photo\\real6.jpg'),
(7, 'photo\\real7.jpg'),
(8, 'photo\\real8.jpg'),
(9, 'photo\\real9.jpg'),
(10, 'photo\\real10.jpg'),
(11, 'photo\\real11.jpg'),
(12, 'photo\\real12.jpg'),
(13, 'photo\\real13.jpg'),
(14, 'photo\\real14.jpg'),
(15, 'photo\\real15.jpg'),
(16, 'photo\\real16.jpg'),
(17, 'photo\\real17.jpg'),
(18, 'photo\\real18.jpg'),
(19, 'photo\\real19.jpg'),
(20, 'photo\\real20.jpg'),
(21, 'photo\\real21.jpg'),
(22, 'photo\\real22.jpg'),
(23, 'photo\\real23.jpg'),
(24, 'photo\\real24.jpg'),
(25, 'photo\\real25.jpg'),
(26, 'photo\\real26.jpg'),
(27, 'photo\\real27.jpg'),
(28, 'photo\\real28.jpg'),
(29, 'photo\\real29.jpg'),
(30, 'photo\\real30.jpg'),
(31, 'photo\\real31.jpg'),
(32, 'photo\\real32.jpg'),
(33, 'photo\\real33.jpg'),
(34, 'photo\\real34.jpg'),
(35, 'photo\\real35.jpg'),
(36, 'photo\\real36.jpg'),
(37, 'photo\\real37.jpg'),
(38, 'photo\\real38.jpg'),
(39, 'photo\\real39.jpg'),
(40, 'photo\\real40.jpg'),
(41, 'photo\\real41.jpg'),
(42, 'photo\\real42.jpg'),
(43, 'photo\\real43.jpg'),
(44, 'photo\\real44.jpg'),
(45, 'photo\\real45.jpg'),
(46, 'photo\\real46.jpg'),
(47, 'photo\\real47.jpg'),
(48, 'photo\\real48.jpg'),
(49, 'photo\\real49.jpg'),
(50, 'photo\\real50.jpg'),
(51, 'photo\\real51.jpg'),
(52, 'photo\\real52.jpg'),
(53, 'photo\\real53.jpg'),
(54, 'photo\\real54.jpg'),
(55, 'photo\\real55.jpg'),
(56, 'photo\\real56.jpg'),
(57, 'photo\\real57.jpg'),
(58, 'photo\\real58.jpg'),
(59, 'photo\\real59.jpg'),
(60, 'photo\\real60.jpg'),
(61, 'photo\\real61.jpg'),
(62, 'photo\\real62.jpg'),
(63, 'photo\\real63.jpg'),
(64, 'photo\\real64.jpg'),
(65, 'photo\\real65.jpg'),
(66, 'photo\\real66.jpg'),
(67, 'photo\\real67.jpg'),
(68, 'photo\\real68.jpg'),
(69, 'photo\\real69.jpg'),
(70, 'photo\\real70.jpg'),
(71, 'photo\\real71.jpg'),
(72, 'photo\\real72.jpg'),
(73, 'photo\\real73.jpg'),
(74, 'photo\\real74.jpg'),
(75, 'photo\\real75.jpg'),
(76, 'photo\\real76.jpg'),
(77, 'photo\\real77.jpg'),
(78, 'photo\\real78.jpg'),
(79, 'photo\\real79.jpg'),
(80, 'photo\\real80.jpg'),
(81, 'photo\\real81.jpg'),
(82, 'photo\\real82.jpg'),
(83, 'photo\\real83.jpg'),
(84, 'photo\\real84.jpg'),
(85, 'photo\\real85.jpg'),
(86, 'photo\\real86.jpg'),
(87, 'photo\\real87.jpg'),
(88, 'photo\\real88.jpg'),
(89, 'photo\\real89.jpg'),
(90, 'photo\\real90.jpg'),
(91, 'photo\\real91.jpg'),
(92, 'photo\\real92.jpg'),
(93, 'photo\\real93.jpg'),
(94, 'photo\\real94.jpg'),
(95, 'photo\\real95.jpg'),
(96, 'photo\\real96.jpg'),
(97, 'photo\\real97.jpg'),
(98, 'photo\\real98.jpg'),
(99, 'photo\\real99.jpg'),
(100, 'photo\\real100.jpg'),
(101, 'photo\\real101.jpg'),
(102, 'photo\\real102.jpg'),
(103, 'photo\\real103.jpg'),
(104, 'photo\\real104.jpg'),
(105, 'photo\\real105.jpg'),
(106, 'photo\\real106.jpg'),
(107, 'photo\\real107.jpg'),
(108, 'photo\\real108.jpg'),
(109, 'photo\\real109.jpg'),
(110, 'photo\\real110.jpg'),
(111, 'photo\\real111.jpg'),
(112, 'photo\\real112.jpg'),
(113, 'photo\\real113.jpg'),
(114, 'photo\\real114.jpg'),
(115, 'photo\\real115.jpg'),
(116, 'photo\\real116.jpg'),
(117, 'photo\\real117.jpg'),
(118, 'photo\\real118.jpg'),
(119, 'photo\\real119.jpg'),
(120, 'photo\\real120.jpg'),
(121, 'photo\\real121.jpg'),
(122, 'photo\\real122.jpg'),
(123, 'photo\\real123.jpg'),
(124, 'photo\\real124.jpg'),
(125, 'photo\\real125.jpg'),
(126, 'photo\\real126.jpg'),
(127, 'photo\\real127.jpg'),
(128, 'photo\\real128.jpg'),
(129, 'photo\\real129.jpg'),
(130, 'photo\\real130.jpg'),
(131, 'photo\\real131.jpg'),
(132, 'photo\\real132.jpg'),
(133, 'photo\\real133.jpg'),
(134, 'photo\\real134.jpg'),
(135, 'photo\\real135.jpg'),
(136, 'photo\\real136.jpg'),
(137, 'photo\\real137.jpg'),
(138, 'photo\\real138.jpg'),
(139, 'photo\\real139.jpg'),
(140, 'photo\\real140.jpg'),
(141, 'photo\\real141.jpg'),
(142, 'photo\\real142.jpg'),
(143, 'photo\\real143.jpg'),
(144, 'photo\\real144.jpg'),
(145, 'photo\\real145.jpg'),
(146, 'photo\\real146.jpg'),
(147, 'photo\\real147.jpg'),
(148, 'photo\\real148.jpg'),
(149, 'photo\\real149.jpg'),
(150, 'photo\\real150.jpg'),
(151, 'photo\\real151.jpg'),
(152, 'photo\\real152.jpg'),
(153, 'photo\\real153.jpg'),
(154, 'photo\\real154.jpg'),
(155, 'photo\\real155.jpg'),
(156, 'photo\\real156.jpg'),
(157, 'photo\\real157.jpg'),
(158, 'photo\\real158.jpg'),
(159, 'photo\\real159.jpg'),
(160, 'photo\\real160.jpg'),
(161, 'photo\\real161.jpg'),
(162, 'photo\\real162.jpg'),
(163, 'photo\\real163.jpg'),
(164, 'photo\\real164.jpg'),
(165, 'photo\\real165.jpg'),
(166, 'photo\\real166.jpg'),
(167, 'photo\\real167.jpg'),
(168, 'photo\\real168.jpg'),
(169, 'photo\\real169.jpg'),
(170, 'photo\\real170.jpg'),
(171, 'photo\\real171.jpg'),
(172, 'photo\\real172.jpg'),
(173, 'photo\\real173.jpg'),
(174, 'photo\\real174.jpg'),
(175, 'photo\\real175.jpg'),
(176, 'photo\\real176.jpg'),
(177, 'photo\\real177.jpg'),
(178, 'photo\\real178.jpg'),
(179, 'photo\\real179.jpg'),
(180, 'photo\\real180.jpg'),
(181, 'photo\\real181.jpg'),
(182, 'photo\\real182.jpg'),
(183, 'photo\\real183.jpg'),
(184, 'photo\\real184.jpg'),
(185, 'photo\\real185.jpg'),
(186, 'photo\\real186.jpg'),
(187, 'photo\\real187.jpg'),
(188, 'photo\\real188.jpg'),
(189, 'photo\\real189.jpg'),
(190, 'photo\\real190.jpg'),
(191, 'photo\\real191.jpg'),
(192, 'photo\\real192.jpg'),
(193, 'photo\\real193.jpg'),
(194, 'photo\\real194.jpg'),
(195, 'photo\\real195.jpg'),
(196, 'photo\\real196.jpg'),
(197, 'photo\\real197.jpg'),
(198, 'photo\\real198.jpg'),
(199, 'photo\\real199.jpg'),
(200, 'photo\\real200.jpg'),
(201, 'photo\\real201.jpg'),
(202, 'photo\\real202.jpg'),
(203, 'photo\\real203.jpg'),
(204, 'photo\\real204.jpg'),
(205, 'photo\\real205.jpg'),
(206, 'photo\\real206.jpg'),
(207, 'photo\\real207.jpg'),
(208, 'photo\\real208.jpg'),
(209, 'photo\\real209.jpg'),
(210, 'photo\\real210.jpg'),
(211, 'photo\\real211.jpg'),
(212, 'photo\\real212.jpg'),
(213, 'photo\\real213.jpg'),
(214, 'photo\\real214.jpg'),
(215, 'photo\\real215.jpg'),
(216, 'photo\\real216.jpg'),
(217, 'photo\\real217.jpg'),
(218, 'photo\\real218.jpg'),
(219, 'photo\\real219.jpg'),
(220, 'photo\\real220.jpg'),
(221, 'photo\\real221.jpg'),
(222, 'photo\\real222.jpg'),
(223, 'photo\\real223.jpg'),
(224, 'photo\\real224.jpg'),
(225, 'photo\\real225.jpg'),
(226, 'photo\\real226.jpg'),
(227, 'photo\\real227.jpg'),
(228, 'photo\\real228.jpg'),
(229, 'photo\\real229.jpg'),
(230, 'photo\\real230.jpg'),
(231, 'photo\\real231.jpg'),
(232, 'photo\\real232.jpg'),
(233, 'photo\\real233.jpg'),
(234, 'photo\\real234.jpg'),
(235, 'photo\\real235.jpg'),
(236, 'photo\\real236.jpg'),
(237, 'photo\\real237.jpg'),
(238, 'photo\\real238.jpg'),
(239, 'photo\\real239.jpg'),
(240, 'photo\\real240.jpg'),
(241, 'photo\\real241.jpg'),
(242, 'photo\\real242.jpg'),
(243, 'photo\\real243.jpg'),
(244, 'photo\\real244.jpg'),
(245, 'photo\\real245.jpg'),
(246, 'photo\\real246.jpg'),
(247, 'photo\\real247.jpg'),
(248, 'photo\\real248.jpg'),
(249, 'photo\\real249.jpg'),
(250, 'photo\\real250.jpg'),
(251, 'photo\\real251.jpg'),
(252, 'photo\\real252.jpg'),
(253, 'photo\\real253.jpg'),
(254, 'photo\\real254.jpg'),
(255, 'photo\\real255.jpg'),
(256, 'photo\\real256.jpg'),
(257, 'photo\\real257.jpg'),
(258, 'photo\\real258.jpg'),
(259, 'photo\\real259.jpg'),
(260, 'photo\\real260.jpg'),
(261, 'photo\\real261.jpg'),
(262, 'photo\\real262.jpg'),
(263, 'photo\\real263.jpg'),
(264, 'photo\\real264.jpg'),
(265, 'photo\\real265.jpg'),
(266, 'photo\\real266.jpg'),
(267, 'photo\\real267.jpg'),
(268, 'photo\\real268.jpg'),
(269, 'photo\\real269.jpg'),
(270, 'photo\\real270.jpg'),
(271, 'photo\\real271.jpg'),
(272, 'photo\\real272.jpg'),
(273, 'photo\\real273.jpg'),
(274, 'photo\\real274.jpg'),
(275, 'photo\\real275.jpg'),
(276, 'photo\\real276.jpg'),
(277, 'photo\\real277.jpg'),
(278, 'photo\\real278.jpg'),
(279, 'photo\\real279.jpg'),
(280, 'photo\\real280.jpg'),
(281, 'photo\\real281.jpg'),
(282, 'photo\\real282.jpg'),
(283, 'photo\\real283.jpg'),
(284, 'photo\\real284.jpg'),
(285, 'photo\\real285.jpg'),
(286, 'photo\\real286.jpg'),
(287, 'photo\\real287.jpg'),
(288, 'photo\\real288.jpg'),
(289, 'photo\\real289.jpg'),
(290, 'photo\\real290.jpg'),
(291, 'photo\\real291.jpg'),
(292, 'photo\\real292.jpg'),
(293, 'photo\\real293.jpg'),
(294, 'photo\\real294.jpg'),
(295, 'photo\\real295.jpg'),
(296, 'photo\\real296.jpg'),
(297, 'photo\\real297.jpg'),
(298, 'photo\\real298.jpg'),
(299, 'photo\\real299.jpg'),
(300, 'photo\\real300.jpg'),
(301, 'photo\\real301.jpg'),
(302, 'photo\\real302.jpg'),
(303, 'photo\\real303.jpg'),
(304, 'photo\\real304.jpg'),
(305, 'photo\\real305.jpg'),
(306, 'photo\\real306.jpg'),
(307, 'photo\\real307.jpg'),
(308, 'photo\\real308.jpg'),
(309, 'photo\\real309.jpg'),
(310, 'photo\\real310.jpg'),
(311, 'photo\\real311.jpg'),
(312, 'photo\\real312.jpg'),
(313, 'photo\\real313.jpg'),
(314, 'photo\\real314.jpg'),
(315, 'photo\\real315.jpg'),
(316, 'photo\\real316.jpg'),
(317, 'photo\\real317.jpg'),
(318, 'photo\\real318.jpg'),
(319, 'photo\\real319.jpg'),
(320, 'photo\\real320.jpg'),
(321, 'photo\\real321.jpg'),
(322, 'photo\\real322.jpg'),
(323, 'photo\\real323.jpg'),
(324, 'photo\\real324.jpg'),
(325, 'photo\\real325.jpg'),
(326, 'photo\\real326.jpg'),
(327, 'photo\\real327.jpg'),
(328, 'photo\\real328.jpg'),
(329, 'photo\\real329.jpg'),
(330, 'photo\\real330.jpg'),
(331, 'photo\\real331.jpg'),
(332, 'photo\\real332.jpg'),
(333, 'photo\\real333.jpg'),
(334, 'photo\\real334.jpg'),
(335, 'photo\\real335.jpg'),
(336, 'photo\\real336.jpg'),
(337, 'photo\\real337.jpg'),
(338, 'photo\\real338.jpg'),
(339, 'photo\\real339.jpg'),
(340, 'photo\\real340.jpg'),
(341, 'photo\\real341.jpg'),
(342, 'photo\\real342.jpg'),
(343, 'photo\\real343.jpg'),
(344, 'photo\\real344.jpg'),
(345, 'photo\\real345.jpg'),
(346, 'photo\\real346.jpg'),
(347, 'photo\\real347.jpg'),
(348, 'photo\\real348.jpg'),
(349, 'photo\\real349.jpg'),
(350, 'photo\\real350.jpg'),
(351, 'photo\\real351.jpg'),
(352, 'photo\\real352.jpg'),
(353, 'photo\\real353.jpg'),
(354, 'photo\\real354.jpg'),
(355, 'photo\\real355.jpg'),
(356, 'photo\\real356.jpg'),
(357, 'photo\\real357.jpg'),
(358, 'photo\\real358.jpg'),
(359, 'photo\\real359.jpg'),
(360, 'photo\\real360.jpg'),
(361, 'photo\\real361.jpg'),
(362, 'photo\\real362.jpg'),
(363, 'photo\\real363.jpg'),
(364, 'photo\\real364.jpg'),
(365, 'photo\\real365.jpg'),
(366, 'photo\\real366.jpg'),
(367, 'photo\\real367.jpg'),
(368, 'photo\\real368.jpg'),
(369, 'photo\\real369.jpg'),
(370, 'photo\\real370.jpg'),
(371, 'photo\\real371.jpg'),
(372, 'photo\\real372.jpg'),
(373, 'photo\\real373.jpg'),
(374, 'photo\\real374.jpg'),
(375, 'photo\\real375.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `tarif`
--

DROP TABLE IF EXISTS `tarif`;
CREATE TABLE IF NOT EXISTS `tarif` (
  `IDTarif` tinyint(4) NOT NULL AUTO_INCREMENT,
  `NomTarif` varchar(30) NOT NULL,
  `DescrTarif` varchar(400) NOT NULL,
  `PrixTailleCheveuxCTarif` float NOT NULL,
  `PrixTailleCheveuxMLTarif` float NOT NULL,
  `PrixTailleCheveuxLTarif` float NOT NULL,
  `IDTypeTarif` tinyint(4) NOT NULL,
  PRIMARY KEY (`IDTarif`),
  KEY `IDTypeTarif` (`IDTypeTarif`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tarif`
--

INSERT INTO `tarif` (`IDTarif`, `NomTarif`, `DescrTarif`, `PrixTailleCheveuxCTarif`, `PrixTailleCheveuxMLTarif`, `PrixTailleCheveuxLTarif`, `IDTypeTarif`) VALUES
(1, 'Création Coupe & Brushing', 'Conseil personnalisé - Diagnostic beauté du cuir chevelu et des cheveux - Arôma service - Shampooing spécifique La Biosthétique - Coupe & Brushing', 40, 42, 44, 2),
(2, 'Création Brushing ', 'Conseil personnalisé - Diagnostic beauté du cuir chevelu et des cheveux - Arôma service - Shampooing spécifique La Biosthétique - Coiffage', 21, 24, 27, 2),
(3, 'Service Homme', 'Conseil personnalisé - Diagnostic beauté du cuir chevelu et des cheveux - Arôma service - Shampooing spécifique La Biosthétique - Coupe & Coifage', 22, 22, 22, 1),
(4, 'Moustache', '', 4, 4, 4, 3),
(5, 'Taille express', '', 8, 8, 8, 3),
(6, 'Rasage Traditionnel', '', 25, 25, 25, 3),
(7, 'Coloration', '', 8, 8, 8, 4),
(8, 'Dose supplémentaire', '', 32, 32, 32, 4),
(9, 'Coloration ton sur ton', '', 32, 32, 32, 4),
(10, 'Mèches & Balayage', '', 50, 55, 60, 4),
(11, 'Mèches partielles, la mèche', '', 2, 2, 2, 4),
(12, 'Patine', '', 20, 20, 20, 4),
(13, 'Shine & Ton / Glam Color', '', 20, 20, 20, 4),
(14, 'Boucles & Volumes', 'Conseil personnalisé - Protection des longueurs - Soin durcisseur de kératine', 30, 35, 40, 5),
(15, 'Soin express', 'Soin brilliance rapide qui protège entre deux shampooings', 8, 8, 8, 6),
(16, 'Soin intense', 'Soin spécifique pour une régénération intense des cheveux, pour plus de brillance, de volume.', 12, 12, 12, 6),
(17, 'Soin intense de luxe ', 'Soin aux substances actives naturelles et précieuses pour des cheveux plus brillants, plus résistants.', 21, 21, 21, 7),
(18, 'Soin expert oil therapy', 'Soin 2 phases à base d\'huile pour une régénération de la structure capillaire. Les cheveux retrouvent souplesse, force brillance et un volume soyeux.', 27, 27, 27, 7),
(19, 'Soin expert PCC', 'Soin trois phases pour restructurer, préserver et protéger vos cheveux lors de votre couleur.', 30, 30, 30, 7),
(20, 'Lotion Spécifique', 'Application d\'une lotion adaptée à la nature et aux besoins du cuir chevelu. Rituel détente.', 5, 5, 5, 8),
(21, 'Soin intensif antipelliculaire', 'Gommage du cuir chevelu - Shampooing spécifique - Baume apaisant - Lotion apaisante antipelliculaire avec rituel détente du cuir chevelu', 18, 18, 18, 8),
(22, 'Ampoule Energisante/Anti-chute', 'Application d\'une ampoule en fonction du cuir chevelu.', 8, 8, 8, 8),
(23, 'Genesicap', 'Huile régénérante et apaisante pour un confort extrême du cuir chevelu très sec. Permet une croissance optimale du cheveu.', 13, 13, 13, 8),
(24, 'Forfait mariage', 'Cérémonial détente - Essai chignon - Préparation des cheveux la veille - Chignon jour J', 100, 100, 100, 9),
(25, 'Création chignon ', '', 55, 55, 55, 9),
(26, 'Chignon express', '', 40, 40, 40, 9),
(27, 'Chignon enfant', '', 30, 30, 30, 9),
(28, 'Tresse simple', '', 10, 10, 10, 9),
(29, 'Supplément tresse', '', 10, 10, 10, 9),
(30, 'Bambino', '', 8, 8, 8, 10),
(31, 'Garçon - 12 ans', '', 16, 16, 16, 10),
(32, 'Fille - 12 ans', '', 20, 20, 20, 10),
(33, 'Étudiant ', '', 20, 20, 20, 10),
(34, 'Étudiante', '', 32, 32, 32, 10);

-- --------------------------------------------------------

--
-- Structure de la table `typetarif`
--

DROP TABLE IF EXISTS `typetarif`;
CREATE TABLE IF NOT EXISTS `typetarif` (
  `IDTypeTarif` tinyint(4) NOT NULL AUTO_INCREMENT,
  `NomTypeTarif` varchar(40) NOT NULL,
  PRIMARY KEY (`IDTypeTarif`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `typetarif`
--

INSERT INTO `typetarif` (`IDTypeTarif`, `NomTypeTarif`) VALUES
(1, 'Homme'),
(2, 'Femme'),
(3, 'Service barbier'),
(4, 'Coloration'),
(5, 'Forme'),
(6, 'Soins des cheveux'),
(7, 'Soins cheveux experts'),
(8, 'Soins du cuir chevelu'),
(9, 'Mariages & Chignons'),
(10, 'Junior');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`IDCategorie`) REFERENCES `categorie` (`IDCategorie`);

--
-- Contraintes pour la table `tarif`
--
ALTER TABLE `tarif`
  ADD CONSTRAINT `tarif_ibfk_1` FOREIGN KEY (`IDTypeTarif`) REFERENCES `typetarif` (`IDTypeTarif`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
