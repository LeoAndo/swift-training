import UIKit

var str = "Hello, playground"

triple(value: 10)
multiply(firstNumber: 1, secondNumber: 5)
sayHello(firstName: str)
sayHello(to: "Tanaka", and: "Yoshida")
display(teamName: "Lakers", score: 100)
display(teamName: "Lakers")
let result = multiply2(firstNumber: 1, secondNumber: 5)
print("result: \(result)")

let result2 = multiply3(1, secondNumber: 5)
print("result2: \(result2)")

func triple(value: Int) {
    let result = value * 3
    print("If you multiply \(value) by 3, you'll get \(result).")
}

func multiply(firstNumber: Int, secondNumber: Int) {
    let result = firstNumber * secondNumber
    print("The result is \(result).")
}

func multiply2(firstNumber: Int, secondNumber: Int) -> Int {
    let result = firstNumber * secondNumber
    return result
}

// _ をつけると呼び出し元でparam指定しなくて大丈夫.
func multiply3(_ firstNumber: Int, secondNumber: Int) -> Int {
    let result = firstNumber * secondNumber
    return result
}

func sayHello(firstName: String) {
    print("Hello, \(firstName)!.")
}

// 関数内の定数の名前を引数ラベルと異なるものにする場合は、
// ローカル名の前に外部名を指定できる
func sayHello(to person: String, and anotherPerson: String) {
    print("Hello, \(person) and \(anotherPerson)")
}

func display(teamName: String, score: Int = 10) {
    print("\(teamName): \(score)")
}
