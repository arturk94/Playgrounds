/*: 
 ## Exercice – Que puis-je stocker sur mon iPhone ?
 
 Dans cet exercice, vous allez essayer de répondre à la question que tout le monde se pose : quelle quantité de contenu puis-je stocker sur mon iPhone ?
 
 Contrairement aux exercices précédents, aucun code ne vous sera fourni. Voici quelques informations qui pourront vous aider :
 
 
 - La capacité de stockage de l’iPhone est mesurée en **gigaoctets** (Go).
 - Dans cet exemple, l’iPhone dispose d’une capacité de 8 Go.
 - Un gigaoctet représente environ **1 000 mégaoctets** (Mo).
 - **3 Go** sont déjà occupés.
 - **Une minute** de vidéo représente **150 Mo** d’espace.
 
 - callout(Exercise):
(Exercice) :\
 Combien de minutes de vidéo faudra-t-il pour remplir le téléphone ?\
 _Conseil_ : effectuez tous vos calculs en mégaoctets (Mo).
*/
let capacitéStockageTotale = 8 * 1000
let capaciteStockageOccupee = 3 * 1000
let capaciteStockageRestante = capacitéStockageTotale - capaciteStockageOccupee
let quantitéMinutesVideoMax = capaciteStockageRestante / 150




//:[Précédent](@previous)  |  page 12 sur 14  |  [Suivant : Exercice – Organiser vos matinées](@next)
