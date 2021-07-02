//print(letterAreUnique(input: "No duplicates"))
//print(letterAreUnique(input: "abcdefghijklmnopqrstuvwxyz"))
//print(letterAreUnique(input: "AaBbCc"))
//print(letterAreUnique(input: "Hello, world"))


func letterAreUnique(input: String) -> Bool {
    var charsUsed: [Character] = []
    
    for index in input.indices {
        if charsUsed.contains(input[index]) {
            return false
        }

        charsUsed.append(input[index]) //stored the used char
    }
    return true
}

//print(letterAreUniqueUsingSet(input: "No duplicates"))
//print(letterAreUniqueUsingSet(input: "abcdefghijklmnopqrstuvwxyz"))
//print(letterAreUniqueUsingSet(input: "AaBbCc"))
//print(letterAreUniqueUsingSet(input: "Hello, world"))

func letterAreUniqueUsingSet(input: String) -> Bool {
    return Set(input).count == input.count
}

//print(palindrome(input: "rotator")) //true
//print(palindrome(input: "Rats live on no evil star")) //true
//print(palindrome(input: "Never odd or even")) //false spaces are different
//print(palindrome(input: "Hello, world")) // false


func palindrome(input: String) -> Bool {
    let lowercased = input.lowercased()
    return String(lowercased.reversed()) == lowercased
}

print(doTwoStringsContainSameChars(input1: "abca", input2: "abca")) //true
print(doTwoStringsContainSameChars(input1: "abc", input2: "bca")) //true
print(doTwoStringsContainSameChars(input1: " al b2 ", input2: " bl a2 ")) //true
print(doTwoStringsContainSameChars(input1: "abc", input2: "abca")) //false
print(doTwoStringsContainSameChars(input1: "abc", input2: "Abc")) //true
print(doTwoStringsContainSameChars(input1: "abc", input2: "cbAa")) //false
print(doTwoStringsContainSameChars(input1: "abcc", input2: "abca")) //false

func doTwoStringsContainSameChars(input1: String, input2: String) -> Bool {
    let val1 = input1.lowercased().sorted()
    let val2 = input2.lowercased().sorted()
    
    return val1 == val2
    
}
