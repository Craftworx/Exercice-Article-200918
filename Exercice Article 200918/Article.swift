
//  Article.swift
//  Exercice Article 200918
//
//  Created by Al on 18/09/2020.
//  Copyright © 2020 Cool Apps. All rights reserved.
//
import Foundation

struct Article {
    
    enum Categorie:String {
        case Inconnu = "Inconnu"
        case Multimedia = "Multimedia"
        case Outil = "Outil"
        case Meuble = "Meuble"
        case Divers = "Divers"
        
        func categorieToString() -> String {
            return self.rawValue
            }
        }
   
    //Une variable static est une variable qui est commune à toutes les instances d'Article
    //Sa valeur est commune à toute les instances d'Article, important à comprendre
    static var n_article = 0
    
    // on pourrait ajouter que la variable est private c'est à dire qu'elle ne peut pas être modifiée ne dehors du programme (mais elle peut être lue, je crois
    
    static func nombreDarticle() -> Int {
        return Article.n_article
    }
    
    var nom:String
    var prix:Float
    var categorie:Categorie
    var id:Int = 0
   
    //le constructeur de base est surchargé par les deux définitions suivantes
    init(nom: String, prix: Float) {
        // c'est ici qu'on va incrémenter la variable statique, et ce qui est important c'est d'écrire que la variable est celle de la structure, pas de l'instance: Article.n_article
        
        Article.n_article += 1
        self.id = Article.n_article
        self.categorie = .Inconnu
        self.nom = nom
        self.prix = prix
    }
    
    init(nom: String, prix: Float, categorie: Categorie) {
        self.init(nom: nom, prix: prix)
        self.categorie = categorie
    }
    
    func affiche() {
        print("""
            Nom: \(self.nom)
            Prix: \(self.prix)
            Catégorie:  \(categorie.categorieToString())
            ID: \(self.id)
            
            """)

    }
    
}
    
//Questions Guillaume:
// 1. où précisément mettre les accolades ?
// 2. On n'est apparemment pas obligé d'intialiser les attributs, est-ce par ce qu'ils le seront par le constructeur
// 3. rawValue des case de enum ?
