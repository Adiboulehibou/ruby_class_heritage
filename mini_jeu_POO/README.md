Architecture du repo :

				mini_jeu_POO
				├── lib
				│   ├── player.rb
				│   └── game.rb
				├── Gemfile
				├── Gemfile.lock
				├── app.rb
				├── app_2.rb
				├── app_3.rb
				├── README.md


La programmation orientée objet (POO), ou programmation par objet, est un paradigme de programmation informatique. Il consiste en la définition et l'interaction de briques logicielles appelées objets ; un objet représente un concept, une idée ou toute entité du monde physique, comme une voiture, une personne ou encore une page d'un livre. Il possède une structure interne et un comportement, et il sait interagir avec ses pairs. Il s'agit donc de représenter ces objets et leurs relations ; l'interaction entre les objets via leurs relations permet de concevoir et réaliser les fonctionnalités attendues, de mieux résoudre le ou les problèmes. Dès lors, l'étape de modélisation revêt une importance majeure et nécessaire pour la POO. C'est elle qui permet de transcrire les éléments du réel sous forme virtuelle.

 Version 1.0 : coder un combat entre 2 joueurs

 =>	Quand on s'attaque à un gros morceau comme Fortnite, il y a un max de fonctionnalités qu'on peut avoir envie de coder. Alors pour ne pas se perdre, commençons par quelque chose qui soit à la fois relativement simple à coder et central au jeu. Ici, j'ai choisi de te faire commencer par un combat. Tout simplement. Si on est pas capable de coder un combat entre 2 personnages, on ne saura pas coder ce jeu : commençons donc par ça !

Que faut-il pour faire un combat ? Moi j'ai en tête qu'il faut a minima :

    2 joueurs ;
    Que chaque joueur ait un niveau de vie donné ;
    Que ce niveau de vie baisse à chaque attaque subie ;
    Si la vie atteint zéro, le personnage est mort.


Version 2.0 : créer un nouveau type de joueur

=>	Nous allons maintenant créer un nouveau type de joueur qui va disposer de plus de compétences et de plus de choix : il sera joué par un humain. 

Version 3.0 : un jeu mieux organisé et plus d'ennemis