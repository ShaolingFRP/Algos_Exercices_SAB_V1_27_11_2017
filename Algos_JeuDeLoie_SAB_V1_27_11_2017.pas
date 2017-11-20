{Objectif :
1- donner les types de bases en algo

2- donner les métodes d'entrées et de sortie en algo

3- donner la syntaxe du SI en algo, a quoi sert le SI

4- donner la syntaxe de la boucle POUR en algo

5- différence entre POUR, TANTQUE, REPETER JUSQU'A

6- écrire un algo qui permute 3 entiers saisis par l'utilisateur

7- écrire un algo qui demande un nombre compris entre 10 et 20 jusqu'à se que la réponse convienne en cas de réponses supérieur à 20 apparaitre un message "plus petit" et en cas de réponse plus petit que 10 un message "plus grand"

8- algo + pascal : Le jeu de loie le joueur est caractériser par un nombre nommé "place" compris entre  et 66 qui situe sa position sur le jeu de loie sachant qu'après jet des 2 dés on applique les règles suivantes : on avance du nombre de case indiqué par la somme des dés. SI on arrive juste sur la case 66 le jeu est terminé sinon on recule du nombre de points sup a 66.
Une oie toute les 9 cases (9 - 18 - 27 ...) sauf en 63 double le déplacement (Fonction entier aléatoire :  RANDOM (regarder dans documentation pascal)) une tête de mort à la case 58 renvoie a la position de départ (case 0) le jeu se joue SEUL.
On s'éfforceras d'utiliser au maximum l'emploie de constante
Vous devez produire un algorithme et un code lisible et clair (avecespaces, commentaires) vérifier si le jet de dés est valide 
(entre 2 et 12) il est conseiller d'utiliser l'opérateur MODULO pour tester si une case est un multiple de 9.
}


{
ALGORITHME : permutation
//BUT Permuter 3 entiers saisis par l'utilisateur
//ENTREE 3 entiers saisis par l'utilisateur
//SORTIE les 3 entiers permuté
VAR
	nb1,nb2,nb3,nb4,cpt : entier //Les variables

DEBUT
	ECRIRE "Veuillez saisir 3 entiers"
	LIRE nb1,nb2,nb3 //Les affectations des variables pour les modifiers
	nb4 <- nb1
	nb1 <- nb2
	nb2 <- nb3
	nb3 <- nb4

	ECRIRE "Le premier nombre saisis est devenue",nb1,"Le deuxieme nombre saisis est devenue",nb2,"Le troisieme nombre saisis est devenue",nb3 //On montre que les variables ont été permuté
FIN
}

{
ALGORITHME : nombreCompris
//BUT demander un nombre à l'utilisateur compris entre 10 et 20 jusqu'à se que la réponse convienne en cas de réponses supérieur à 20 écrire un message "Plus petit" et en cas de réponse plus petit que 10 ecrire un message "Plus grand"
//ENTREE un nombre saisis par l'utilisateur
//SORTIE dire si le nombre est compris entre 10 et 20 et s'il ne l'est pas aider l'utilisateur à en saisir un correct

VAR
	nb1 : ENTIER 

DEBUT
	ECRIRE "Veuillez saisir un nombre"
	LIRE nb1

	REPETER
		SI (nb1 < 10) ALORS
			ECRIRE "Veuillez entrer un nombre plus grand."
			LIRE nb1
		SINON SI (nb1 > 20) ALORS
			ECRIRE "Veuillez saisir un nombre plus petit."
			LIRE nb1
		FINSI
	JUSQUA ((nb1 > 10) ET (nb1 <20))
		ECRIRE "Votre nombre est bien compris entre 10 et 20."
FIN
}


8- algo + pascal : Le jeu de loie le joueur est caractériser par un nombre nommé "place" compris entre 0 et 66 qui situe sa position sur le jeu de loie sachant qu'après le jet des 2 dés on applique les règles suivantes : on avance du nombre de case indiqué par la somme des dés. SI on arrive juste sur la case 66 le jeu est terminé sinon on recule du nombre de points sup a 66.
Une oie toute les 9 cases (9 - 18 - 27 ...) sauf en 63 double le déplacement (Fonction entier aléatoire :  RANDOM (regarder dans documentation pascal)) une tête de mort à la case 58 renvoie a la position de départ (case 0) le jeu se joue SEUL.
On s'éfforceras d'utiliser au maximum l'emploie de constante
Vous devez produire un algorithme et un code lisible et clair (avec espaces, commentaires) vérifier si le jet de dés est valide 
(entre 2 et 12) il est conseiller d'utiliser l'opérateur MODULO pour tester si une case est un multiple de 9.

ALGORITHME : JeuDELoie
//BUT 