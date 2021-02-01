import UIKit

let month = "January"
let otherMonth = "January"
let lowercaseMonth = "january"

if month == otherMonth {
    print("They are the same")
}

if month != lowercaseMonth {
    print("They are not the same")
}

let name = "Johnny Appleseed"
if name.lowercased() == "joHnnY aPPleseeD".lowercased() {
    print("The two names are equal.")
}

let greeting = "Hello, world!"
print(greeting.hasPrefix("Hello"))
print(greeting.hasSuffix("world!"))

if greeting.contains("world") {
    print("Making an Introduction")
}
print(greeting.count)
