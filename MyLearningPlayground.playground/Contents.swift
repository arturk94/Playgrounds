import Cocoa

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

