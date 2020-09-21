
//  Article.swift
//  Exercice Article 200918
//
//  Created by Al on 18/09/2020.
//  Copyright © 2020 Cool Apps. All rights reserved.
//
import Foundation

struct Article {
    
    enum Catégorie:String {
        case Inconnu = "Inconnu"
        case Multimedia = "Multimedia"
        case Outil = "Outil"
        case Meuble = "Meuble"
        case Divers = "Divers"
        
        func catégorieToString() -> String {
            return self.rawValue
            }
        }
    
    var nom:String
    var prix:Float
    var catégorie:Catégorie
    //let inc = Categorie.Inconnu.rawValue
   //on n'est appremment pas obligé de les intialiser puisqu'ils le seront par le constructeur
   
    func labelNom() -> String {
        return ("""
                Nom: \(nom)
                """)
         }
    
    func labelPrix() -> String {
        return ("Prix: \(prix)")
        }
    
    func identification() -> String {
        identifiant += 1
        return ("""
                Article: 0000\(identifiant)

                """)
        }
    
    func affiche() {
            print(self.labelNom())
            print(self.labelPrix())
            print("Catégorie: ", (catégorie.catégorieToString()))
            print(self.identification())
            }
    
}
    
//Questions Guillaume:
// 1. où précisément mettre les accolades ?
// 2. On n'est apparemment pas obligé d'intialiser les attributs, est-ce par ce qu'ils le seront par le constructeur
// 3. rawVAlue des case de enum
