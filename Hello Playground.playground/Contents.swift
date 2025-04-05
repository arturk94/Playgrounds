import UIKit

var string = "Hello, playground"
string = "Hi!"

var currentValue = 50
var targetValue = 55

var difference = currentValue - targetValue

if difference < 0 {
    difference *= -1
}

print(difference)



let age1 = 42
let age2 = 21
let avg1 = (Double(age1) + Double(age2)) / 2

let firstName = "Artur"
let lastName = "Knothe"
let fullName = firstName + " " + lastName
let myDetails = "Hello, my name is \(fullName)"


var dateAndTemperature = (day: 1, month: 1, year: 1974, averageTemperature: -10.5)

var (day, _, _, averageTemperature) = dateAndTemperature


dateAndTemperature.averageTemperature = 11.0


let coordinates = (2, 3)
let namedCoordinate = (row:1, column: 1)



let count = 10
var sum = 0
for i in 1...count {
    sum += i
}



func printFullName(_ firstName: String, _ lastName: String) {
    print(firstName + " " + lastName)
}

func calculateFullName(_ firstName: String, _ lastName: String) -> (fullName: String, length: Int) {
    let fullName = firstName + " " + lastName
    return (fullName, fullName.count)
}

printFullName("Artur", "Knothe")
let myFullName = calculateFullName("Artur", "Knothe").fullName
let myFullNameLength = calculateFullName("Artur", "Knothe").length


for index in stride(from: 10.0, through: 9.0, by: 0.1) {
    print(index)
}


func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
    if number % divisor == 0 {
        return true
    } else { return false }
}

func isPrime(_ number: Int) -> Bool {
    for i in 2..<number {
        if isNumberDivisible(number, by: i) {
            return false
        }
    }
    return true
}

isPrime(6) // false
isPrime(13) // true
isPrime(8893) // true


func fibonacci(_ number: Int) -> Int {
    if number < 0 {
        return 0
    }
    
    if number <= 2 {
        return 1
    }
    
    return fibonacci(number - 1) + fibonacci(number - 2)
}

fibonacci(1)  // = 1
fibonacci(2)  // = 1
fibonacci(3)  // = 2
fibonacci(4)  // = 3
fibonacci(5)  // = 5
fibonacci(10) // = 55

let myFavoriteSong : String? = nil
let parsedInt = Int("dog")

if let myFavoriteSong = myFavoriteSong {
    print(myFavoriteSong)
} else {
    print("I don't have a favorite song")
}




func calculateNumberOfSides(shape: String) -> Int? {
    switch shape {
    case "Triangle":
        return 3
    case "Square":
        return 4
    case "Rectangle":
        return 4
    case "Pentagon":
        return 5
    case "Hexagon":
        return 6
    default:
        return nil
    } }

func maybePrintSides(shape: String) {
    guard let sides = calculateNumberOfSides(shape: shape) else {
        print("I don't know the number of sides for \(shape).")
        return
    }
    print("A \(shape) has \(sides) sides.")
}

maybePrintSides(shape: "Triangle")


var optionalInt: Int? = 10
var mustHaveResult = optionalInt ?? 0
optionalInt = nil
mustHaveResult = optionalInt ?? 0

var name: String? = "Ray"
var age: Int? = nil
let distance: Float = 26.7
var middleName: String? = nil


func divideIfWhole(_ number : Int, by divider : Int) -> Int? {
    if number % divider == 0 {
        return number / divider
    } else {
        return nil
    }
}

func maybeDividesSeveralTimes(_ number: Int, _ divider: Int) {
    guard let answer = divideIfWhole(number, by: divider) else {
        print("Not divisible :[")
        return
    }
    print("Yep, it divides \(answer) times")
}

maybeDividesSeveralTimes(10, 2)
maybeDividesSeveralTimes(10, 3)



let number: Int??? = 10
print(number)
// Optional(Optional(Optional(10)))
print(number!)
// Optional(Optional(10))
print(number!!)
// Optional(10)
print(number!!!)
// 10

func unwrapNumber()
if let unwrappedNumber = number, let unwrappedUnwrappedNumber = unwrappedNumber, let unwrappedUnwrappedUnwrappedNumber = unwrappedUnwrappedNumber {
    print(unwrappedUnwrappedUnwrappedNumber)
} else {
    print("nil")
}

printNumber (_ number : Int???) {
    guard let toPrint = else {
        print("Not a number")
        return
    }
    print(toPrint)
}
