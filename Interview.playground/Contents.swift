import UIKit

let tryNum = 2 //prime number is a number that is divisble by 1 and itself

print(isPrime(limit: 89))

func isPrime(limit: Int, numToTry: Int = 0) -> Bool {
    var numToTry = numToTry
    
    if numToTry == 0 {
        numToTry = limit
        numToTry -= 1
    }
    
    if numToTry == 1 {
        return true
    }
    
    if limit % numToTry != 0 {
        numToTry-=1
        return isPrime(limit: limit, numToTry: numToTry)
    } else {
        return false
    }
}

let val = calcFactorial(inputVal: 5) //5 * 4 * 3 * 2 * 1
print(val)

func calcFactorial(inputVal: Int) -> Int {
    if inputVal == 1 {
        return inputVal
    }
    
    return inputVal * calcFactorial(inputVal: inputVal - 1)
}

var zero = 0

let output = isPrime2(numToTest: 97, numToTry: &zero)
print(output)

func isPrime2(numToTest: Int, numToTry: inout Int) -> Bool {
    if numToTry == 0 {
        numToTry = numToTest
        numToTry -= 1 // divisible by 1 and itself
    }
    
    if numToTry == 1 {
        return true
    }
    
    if numToTest % numToTry != 0 {
        numToTry -= 1
        return isPrime2(numToTest: numToTest, numToTry: &numToTry)
    } else {
        return false
    }
    
}
