import UIKit

// 型推論が使える.-START
let cityName = "San Francisco"
// "San Francisco" is obviously a `String`, so the compiler
// automatically assigns the type of cityName to a `String`.

let pi = 3.1415927
// 3.1415927 is a number with decimal points, so the compiler
print("\(cityName) \(pi)")
// 型推論が使える.-END

let firstName: String
firstName = "ABC"
print(firstName)
