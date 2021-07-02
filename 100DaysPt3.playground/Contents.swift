import UIKit

//protocols and extensions (like interfaces)
protocol Identifiable{
    var id: Int { get set }
}

struct IdentifiableUser: Identifiable
{
    var name: String
    var id: Int
    
    init(name: String, id: Int) {
        self.name = name
        self.id = id
    }
}

func printIdentifiable(thing: Identifiable){
    print(thing.id)
}

var user = IdentifiableUser(name: "Sunjay", id: 147)

printIdentifiable(thing: user)

//extension
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

let age = 43
age.isEven

//optionals

var name: String? = nil
name = "Sunjay"

if let unwrapped = name{
    print(unwrapped)
}
else{
    print("its nil")
}

func greet(_ name: String?)
{
    guard let unwrapped = name else{
        print("You didn't provide a name!")
        return
    }
    
    print("Hello, \(unwrapped)")
}

greet(nil)
greet("Sunjay")

let str = "5"
let num = Int(str)

func username(_ id: Int) -> String?{
    if id == 1{
        return "Taylor Swift"
    }
    else{
        return nil
    }
}

let user2 = username(1) ?? "Unknown"
