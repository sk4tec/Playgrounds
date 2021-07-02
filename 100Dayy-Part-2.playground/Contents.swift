import UIKit

// function

func square(number: Int) -> Int{
    let retVar = number * number
    return retVar
}

let squareValue = square(number: 2)

func combineFirstLast(firstName: String, secondName: String) -> String{
    let space = " "
    let retVal = firstName + space + secondName
    return retVal
}

combineFirstLast(firstName: "Sunjay", secondName: "Kalsi")

func multipleReturn() -> (computed1: String, computed2: String ){
    return ("hello", "how are you")
}

//multiple param names, one internal one external. This gives a name more understandable to the call site and one that makes sense

func sayHello(to name: String){
    print("Hello, \(name)!") // reffering to the argument as name makes sense in the funciton
}

sayHello(to: "Sunjay") //say hello "to" makes sence to the callee


// variadic functions
func squareAllTheNums(number: Int...){
    for number in number{
        print("\(number) squared is \(number * number)")
    }
}

squareAllTheNums(number: 2, 4)

//throws error

enum PasswordError : Error{
    case obvious
}

func checkPasswordIsOk(_ password: String) throws -> Bool {
    if(password == "password"){
        throw PasswordError.obvious
    }
    
    return true
}

do{
    try checkPasswordIsOk("A password")
}
catch{

}

//inout param
func doubleInPlace(number: inout Int){
    number *= number
}

var inputNum = 10
doubleInPlace(number: &inputNum)
print(inputNum)

//closures

let driving = {
    print("I like driving in my car!!")
}

driving()

let typeOfCar = "Ford"

// closure with params
let driving2 = { (place: String) in
    print("I'm going to \(place) in my \(typeOfCar) car")
}

driving2("London")

func travel(action: () -> Void){
    print("I'm getting ready to go!")
    action()
    print("I've arrived")
}

travel(action: driving)

//closue with param
func travel(action: (String) -> Void){
    print("I'm getting ready to go.")
    action("London")
    print("I've arrived")
}

travel { (place: String) in
    print("I'm going to \(place) in my car (using clousure with argument)")
}


//structs
struct Person {
    var name: String!
}

var peoples = [Person]()
peoples.append(Person(name: "Sunjay"))
peoples.append(Person(name: "Nina"))

var person1 = Person(name: "Sunjay")

person1.name = "G"

for person in peoples {
    //person.name = "George" //cannot assign to person as a let constraint
    print(person.name ?? "")
}

struct Sport{
    var name: String
    
    var isAnOlympicSport: Bool
    
    var isOlympicStatus: String{
        if isAnOlympicSport{
            return "\(name) is an Olympic Sport"
        }
        else {
            return "\(name) is NOT an Olympic Sport"
        }
    }
}

var tennis = Sport(name: "Tennis", isAnOlympicSport: true)
tennis.isOlympicStatus

//property observers

struct Progress{
    var task: String
    
    var amount: Int{
        didSet{
            print("Task \(task) is \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading Data", amount: 0)
progress.amount = 30
progress.amount = 40
progress.amount = 50
progress.amount = 60

//struct methods

struct City{
    var population: Int
    
    func collectTaxes() -> Int{
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()

//Structs mutating funcs
struct Person2 {
    var name: String
    
    mutating func MakeAnonymous() {
        name = "Anonymous"
    }
}

let person2 = Person2(name: "Sunjay")
//person2.MakeAnonymous() //can't do this as we let it rahter than var
var person3 = Person2(name: "Sunjay")
person3.MakeAnonymous() // this is ok as we var it

//strings are structs... who knew

let myString = "Do or do not, there is no try!"
print(myString.count)
print(myString.hasPrefix("Do"))
print(myString.uppercased())

//turns out that arrays are also structs
var toys = ["Woody", "Buzz"]
print(toys.count)
print(toys.sorted())

//structs initializers

struct User{
    var username: String
    var age: Int
    
    init(username: String, age: Int){
        self.username = username
        self.age = age
    }
    
    init()
    {
        self.username = ""
        self.age = 0
    }
}

var user = User(username: "Sunjay", age: 43)
var anotherUser = User()


//lazy property

struct FamilyTree{
    init() {
        print("Creating FamilyTree instance")
    }
}

struct Person4{
    lazy var familyTree = FamilyTree()
    let name: String
    
    init(name: String){
        self.name = name
    }
}

var Person4Instance = Person4(name: "Sunjay")
Person4Instance.familyTree

//classes
class Dog {
    var name: String
    var breed: String
    
    func makeNoise() {
        print("Woof Woof")
    }
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

var dog = Dog(name: "Gizmo", breed: "Poodle")

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    
    override func makeNoise() {
        print("Peep peep!" )
    }
}

let poodleDoggy = Poodle(name: "Mr Poodle")
poodleDoggy.name
poodleDoggy.breed
poodleDoggy.makeNoise()
