//
//  Stock.swift
//  Exercice Article 200918
//
//  Created by Al on 04/10/2020.
//  Copyright © 2020 Cool Apps. All rights reserved.
//

import Foundation

class Stock: Any {
    
    var articles = [Article]()
    
    func addArticle(nom: String, prix: Float, categorie: Article.Categorie) {
        let article = Article(nom: nom, prix: prix, categorie: categorie)
        self.addArticle(article)
    }
    
    func addArticle(_ article: Article) {
        articles.append(article)
        article.affiche()
    }
    
    func affichage() {
        for item in articles {
            item.affiche()
        }
    }
}
