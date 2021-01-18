import UIKit

let character = "z"

switch character {
case "a", "e", "i", "o":
    print("This character is a vowel.")
default:
    print("This character is a consonant.")
}

let distance = 10

switch distance {
case 0...9:
    print("distance is 0 - 9")
case 10...99:
    print("distance is 10 - 99")
default:
    print("Are you sure you want to travel this far?")
}
