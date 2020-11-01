//A partir de l'exercice 04, réaliser une application console qui demandera à l'utilisateur d'entrer un nom d'article et son prix.
//Une fois les informations récupérées, créer une instance de la structure structure Article et l'ajouter à l'array d'articles (voir NOTES).
//Il doit etre possible d'entrer un nombre d'artcile à l'infini (tant que le programme tourne).
//
//Exemple de sortie:
//  -
//Indiquez le nom de l'article
//Couteau
//Indiquez le prix de l'article
//2.99
//
//L'article 'Couteau' a été ajouté avec le numéro d'article 0.
//
//Indiquez le nom de l'article
//Stylo bille
//Indiquez le prix de l'article
//0.99
//
//l'article 'Stylo bille' a été ajouté avec le numéro d'article 1
//
//NOTES:
//Il faut s'assurer que le numéro d'article est unique (variable globale incrémenté à la création d'un nouvel article).
//Un array d'article se défini comme suit:
//
//var articles = [Article]()
//
//L'ajout d'un article à cet array se fait comme suit:
//
//articles.append(article)
//
//où article est une instance d' Article
//
//


//

import Foundation

let stock = Stock()

while(true) {
    
    print("Souhaitez-vous quitter l'application console qui vous permet d'enregister des articles ? Tapez o (oui) pour quitter, sinon tapez n'importe quelle touche pour enregistrer un article")
    
    if let input0 = readLine() {
        if input0 == "o" {
            break
        } else {
            print("Indiquez le nom de l'article, s'il vous plaît: ")
            let input1 = readLine()
            print("Et son prix ? C'est obligatoire, merci ")
            let input2 = readLine()
            
            if let articleString = input1, let prixString = input2 {
                if  let prixFloat = Float(prixString) {
//                   let a1 = Article(nom: articleString, prix: prixFloat, categorie:.Divers)
//                    stock.addArticle(a1)
                   stock.addArticle(nom: articleString, prix: prixFloat, categorie: .Inconnu)
                    
                } else {
                    print("les données du prix n'ont pas été rentrées correctement")
                    //on met le else ici car il est impossible de ne pas rentrer un String en réponse à readLine, en effet même si on tape juste Enter, cela donnera la variable String "".
                }
            }
        }
    }
}     

print("Pour visualiser les articles enregistrés, touchez n'importe quelle touche ?")
    if readLine() != nil {
        stock.affichage()
    }

// afficher les 10 premiers items de l'array


//

//
//let a2 = Article(nom: "brol", prix: 12.0, categorie:.Multimedia)
//a2.affiche()
//
//let a3 = Article(nom: "livre", prix: 13)
//a3.affiche()
//
//var a4 = Article(nom: "essuie-patates", prix: 2453.99)
//a4.affiche()

//marche pas, pas moyen de créer un article optionnel



