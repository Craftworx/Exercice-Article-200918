//
//  main.swift
//  Exercice Article 200918
//Créer une structure Article qui contient un prix (Float), un nom (String), et un identifiant (Int)
//Cette structure devra être créée dans un autre fichier (Article.swift) pour une question de clareté.
//Créer une fonction (interne à la structure Article) print() qui affichera dans la console:
//
//Article 78
//Nom: Ordinateur
//Prix: 999.99
//
//Créer une instance d'article.
//Utiliser la fonction print() sur cette instance
//
//NOTES:
//La structure Article doit se trouver dans un fichier séparé.

//Voilà une deuxième version qui afffiche le nom et le prix mais pas encore d'incrémentation de l'identifiant

//Il faut s'assurer que le numéro d'article est unique (variable globale incrémenté à l'ajout de nouvel article).
//  Created by Al on 18/09/2020.
//  Copyright © 2020 Cool Apps. All rights reserved.
//

import Foundation

var identifiant = 0

let a1 = Article()
print(a1.print())
print(a1.affichePrix())
print(a1.identifie())

let a2 = Article()
print(a2.print())
print(a2.affichePrix())
print(a2.identifie())

