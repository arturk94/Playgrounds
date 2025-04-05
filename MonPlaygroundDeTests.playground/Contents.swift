//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
import XCTest

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()

class A {
    let a: String
    let b: String
    
    init(a: String, b: String) {
        self.a = a
        self.b = b
    }
}


class B: A {
    let c: String
    
    init(a: String, b: String, c: String) {
        self.c = c
        super.init(a: a, b: b)
    }
    
    convenience init() {
        self.init(a: "0",b: "0",c: "0")
    }
}

let b = B()
let bprime = B(a: "1", b: "1", c: "1")



var hubId = "FRHBFR1234567890"
var pilotsList = ["FRHBFR1*"]
//var pilotsList = ["FRHBFR123456789", "FRHBFR012345678", "FRHBFR9012345678", "FRHBFR8901234567", "FRHBFR7890123456", "FRHBFR6789012345", "FRHBFR5678901234", "FRHBFR4567890123", "FRHBFR3456789012", "FRHBFR2345678901"]
//var pilotsList: [String] = []
//var pilotsList: [String] = ["*"]

var isOnBelugPilot = pilotsList.contains(
                                        where:{
                                                hubId.contains($0.replacingOccurrences(of: "*", with: "")) ||
                                                $0.replacingOccurrences(of: "*", with: "").isEmpty
                                        }
                                )
print(isOnBelugPilot)
