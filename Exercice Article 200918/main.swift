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
//Il faut s'assurer que le numéro d'article est unique (variable globale incrémenté à l'ajout de nouvel article).
//  Created by Al on 18/09/2020.
//  Copyright © 2020 Cool Apps. All rights reserved.
//

import Foundation
//import Article

struct Article {
    //var prix:Float = 0
    var nom:String = " "
    //var identifiant:Int = 1
    //var serialNumber: Int=1
    
    func print() -> String {
        return (" Salut: \(nom)")
        //serialNumber += 1
        //return identifiant
        }
    
    }
    

let a1 = Article()
print(a1.print())



