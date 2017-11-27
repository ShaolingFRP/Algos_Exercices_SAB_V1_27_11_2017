{Objectif :

8- algo + pascal : Le jeu de loie le joueur est caractériser par un nombre nommé "place" compris entre 0 et 66 qui situe sa position sur le jeu de loie sachant qu'après le jet des 2 dés on applique les règles suivantes : on avance du nombre de case i
ndiqué par la somme des dés. SI on arrive juste sur la case 66 le jeu est terminé sinon on recule du nombre de points sup a 66.
Une oie toute les 9 cases (9 - 18 - 27 ...) sauf en 63 double le déplacement (Fonction entier aléatoire :  RANDOM (regarder dans documentation pascal)) une tête de mort à la case 58 renvoie à la position de depart (case 0) le jeu se joue SEUL.
On s'éfforceras d'utiliser au maximum l'emploie de constante
Vous devez produire un algorithme et un code lisible et clair (avec espaces, commentaires).
il est conseillé d'utiliser l'opérateur MODULO pour tester si une case est un multiple de 9.


ALGORITHME : JeuDELoie
//BUT Jeu de L'Oie solo
//ENTREE le joueur appuie sur entrée
//SORTIE Affichage du placement de la l'oie et affichage du nombre de cases avancer



CONST
	depart <- 0  		: ENTIER
	fin <- 66  			: ENTIER
	mort <- 58			: ENTIER
	max <- 10			: ENTIER

VAR
	place,des			: ENTIER


DEBUT
	place <- 0
	des <- 0

	REPETER
		ECRIRE "Vous etes sur la case ",place," Veuillez lancer votre des en appuyant sur Entrer"								//On dit a l'utilisateur comment avancer et sur qu'elle case il se trouve actuellement.
		LIRE
		des <- ALEA(2,12) 																										//On lance un dés à 11 faces (de 2 à 12 pour correspondre aux deux dés a 6 faces demandé)

		SI (((place + des) MOD double = 0) ET ((place + des)<> nondouble)) ALORS															//Si l'emplacement ou le joueur devrais être est 9/18/27/36/45 ou 54 le joueurs vois ses points doublés
			ECRIRE "Vous avancer de ",(des * 2)," cases et vous vous trouver donc sur la case ",((place) + (des * 2))
			place <- ((place) + (des*2))

		SINON
			ECRIRE "Vous avancer de ",(des)," cases et vous vous trouver donc sur la case ",(place + des)						//Sinon il avance simplement du nombre de cases normal (que les dés indiquent)
			place <- (place + des)
		FINSI

		SI ((place + des) = (mort)) ALORS																					//Si le joueur arrive sur la case 58 il retourne à la case depart
			ECRIRE "Vous retournez a la case depart"
			place <- depart
		FINSI

		SI (place > fin) ALORS																									//Si sa place actuelle + les points acquis le déplace sur un emplacement plus loin que 66 on lui indique que ses points sont trop élevés et ont lui indique sa nouvelle position
			ECRIRE "Votre place est plus eleve que 66 donc vous reculez de : ",(place - fin)," cases"
			place <- (fin - (place - fin))
		FINSI

	JUSQUA (place = fin)																										//La partie se termine donc quand le joueur atteint 66 points
	ECRIRE "Fin de la partie."
FIN
}


PROGRAM JeuDELoie;

USES crt;

CONST
	depart = 0;
	fin = 66;
	double = 9;
	nondouble = 63;
	mort = 58;

	alea = 11;

VAR
	place,des	:INTEGER;


BEGIN
	clrscr;

	place := 0;
	des := 0;

	REPEAT
		WRITELN('Vous etes sur la case ',place,' Veuillez lancer votre des en appuyant sur Entrer');
		READLN;
		RANDOMIZE;
		des := (RANDOM(alea)+2);

		IF (((place + des) MOD double = 0) AND ((place + des) <> nondouble)) THEN

			BEGIN
				WRITELN('Bonus x2 ! : Vous avancer de ',des,' cases, X2 donc de ',(des * 2),' cases et vous vous trouver donc sur la case ',((place) + (des * 2)));
				place := ((place) + (des*2))
			END

		ELSE

			BEGIN
				WRITELN('Vous avancer de ',(des),' cases et vous vous trouver donc sur la case ',(place + des));
				place := (place + des);
			END;


		IF ((place) = (mort)) THEN

			BEGIN
				WRITELN('Malus tete de mort ! : Vous retournez a la case depart');
				place := depart;
			END;

		IF (place > fin) THEN

			BEGIN
				WRITELN('Votre place est plus eleve que 66 donc vous reculez de : ',(place - fin),' cases en partant de 66');
				place := (fin - (place - fin));
			END;

	UNTIL (place = fin);
	WRITELN('Fin de la partie.');
	readln;
END.
