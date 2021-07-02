import UIKit

// array
let john = "John Lennon"
let paul = "Paul McCatney"
let george = "George Harrison"
let ringo = "Ringo Starr"

var beatles = [john, paul, george, ringo]

for member in beatles {
    print(member)
}

print(beatles[0])
print(beatles[3])

let colours = Set(["Red", "green", "blue"])

//tuple
var name = (first: "Taylor", last: "Swift")
var car = (name: "Ford", model: "Fiesta", engine: 3.0, doors: 5, trim: "GTi")

car.engine = 2.5
car.trim = "WRX"
car.doors = 3

let houseMembers = ["Sunjay", "Nina", "Dilber", "Gee-bees"] // array
let houseMembersFoodFav = ["Nina": 42, "Sunjay": 43, "Gia": 5, "Dylan": 3]

var teams = [String: String] ()

teams["Yellow"] = "Gia"
teams["Black"] = "Sunjay"
teams["Black"] = "Nina"  //over write Black with Nina
teams["Black"] = "Dylan" //over write Black with Dylan

print(teams)

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let morning = Activity.running(destination: "to work")
let midmorning = Activity.talking(topic: "Gaming")
let evening = Activity.singing(volume: 11)

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

Planet.earth.rawValue

let pocketMoney = 10 + 2
let remainder = 13 * 3

let songPart = "Welcome to the"
let songPart2 = songPart + " Jungle"

//enum

enum Days: String{
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

let today = Days.Saturday

if today != Days.Saturday && today != Days.Sunday {
    print("Today is a weekday")
}
else {
    print("Today is a weekend")
}

print (today != Days.Saturday && today != Days.Sunday ? "Day is weekday" : "Day is weekend")

// case

let weather = "rain"

switch weather{
case "lightrain":
    fallthrough
case "rain":
    print("Bring an Umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear Sunscreen")
default:
    print("Enjoy your day")
}

let score = 51

switch score{
case 0...50:
    print("failed badly")
case 50...85:
    print("you did well")
default:
    print("well done")
}

//loops

let count = 1...10

for number in count{
    print(number)
}

let bands = ["Metallica", "One Republic", "Metrik", "Queen" ]

for band in bands{
    
    if band[band.index(band.startIndex, offsetBy: 0)] == "M"{
        print("\(band) starts with M")
    }
}

var hideAndSeekCount = 1

while hideAndSeekCount <= 10{
    print(hideAndSeekCount)
    hideAndSeekCount += 1;
}

print("Coming ready or not!")

var countDown = 10

while countDown > 0
{
    print("final Countdown \(countDown)")
    
    if countDown == 4{
        break
    }
    
    countDown -= 1
}
print("launch")

outerloop: for i in 1...10{
    innerLoop: for j in 1...10{
        let prod = i*j
        print ("product \( prod)")
        
        if(prod == 40)
        {
            break outerloop
        }
    }
}

for i in 1...10{
    if i % 2 == 1{
        continue
    }
    print (i)
}

