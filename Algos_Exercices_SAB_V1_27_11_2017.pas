{Objectif :

6- écrire un algo qui permute 3 entiers saisis par l'utilisateur

7- écrire un algo qui demande un nombre compris entre 10 et 20 jusqu'à se que la réponse convienne en cas de réponses supérieur à 20 apparaitre un message "plus petit" et en cas de réponse plus petit que 10 un message "plus grand"
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
		FINSI
	JUSQUA ((nb1 > 10) ET (nb1 <20))
		ECRIRE "Votre nombre est bien compris entre 10 et 20."
FIN
}

