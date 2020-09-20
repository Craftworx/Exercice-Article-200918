
//  Article.swift
//  Exercice Article 200918
//
//  Created by Al on 18/09/2020.
//  Copyright © 2020 Cool Apps. All rights reserved.
//

import Foundation


public struct Article {
    
    var prix:Float = 35.0
    var nom:String = " Poupée "
    //var identifiant:Int = 1
    
    func print() -> String {
        return ("""
                Nom: \(nom)
                """)
         }
    func affichePrix() -> String {
        return ("Prix: \(prix)")
    }
    
    func identifie() -> String {
        identifiant += 1
        return ("Article: \(identifiant)")
    }
}
    


