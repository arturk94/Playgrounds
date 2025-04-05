import UIKit

//enum Rank: Int, CaseIterable {
//    case ace = 1
//    case two, three, four, five, six, seven, eight, nine, ten
//    case jack, queen, king
//
//    func simpleDescription() -> String {
//        switch self {
//        case .ace:
//            return "ace"
//        case .jack:
//            return "jack"
//        case .queen:
//            return "queen"
//        case .king:
//            return "king"
//        default:
//            return String(self.rawValue)
//        }
//    }
//}
//
//enum Suit: String, CaseIterable {
//    case spades, hearts, diamonds, clubs
//
//    func simpleDescription() -> String {
//        switch self {
//        case .spades:
//            return "spades"
//        case .hearts:
//            return "hearts"
//        case .diamonds:
//            return "diamonds"
//        case .clubs:
//            return "clubs"
//        }
//    }
//}
//
//struct Card {
//    var rank: Rank
//    var suit: Suit
//    func simpleDescription() -> String {
//        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
//    }
//
////    static func deckOfCards() -> [Card] {
////        var cards: [Card] = []
////
////        Suit.allCases.forEach {
////            let suit = $0
////            Rank.allCases.forEach{
////                let rank = $0
////                cards.append(Card(rank: rank, suit: suit))
////            }
////        }
//
////        return cards
////    }
//}
//
//
//
//let ace = Rank.ace
//let aceRawValue = ace.rawValue
//let hearts = Suit.hearts
//let heartsDescription = hearts.simpleDescription()
//let threeOfSpades = Card(rank: .three, suit: .spades)
//let threeOfSpadesDescription = threeOfSpades.simpleDescription()
//let cards = Card.deckOfCards()



protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription


let age = 0
//assert(age >= 0, "A person's age can't be less than zero.")

if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if age >= 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than zero.")
}


(1, "zebra") < (2, "apple")   // true because 1 is less than 2; "zebra" and "apple" aren't compared
(3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"

let threeMoreDoubleQuotationMarks = #"""
Here are three more double quotes: """
"""#

let extendedDelimiters = ###"Line1\###nLine2"###
