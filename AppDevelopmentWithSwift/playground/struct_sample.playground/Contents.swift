import UIKit

var str = "Hello, playground"

let firstPerson = Person(name: "Jasmine")
print(firstPerson.name)
firstPerson.sayHello()

// initializers インスタンス生成
var string = String.init() // ""
var integer = Int.init() // 0
var bool = Bool.init() // false

//var string = String()
//var integer = Int()
//var bool = Bool()

let currentTemperature = Temperature(celsius: 18.5)
let boiling = Temperature(fahrenheit: 212.0)
let freezing = Temperature(kelvin: 273.15)
print(currentTemperature.celsius)
print(boiling.celsius)
print(freezing.celsius)


let currentTemperature2 = Temperature2(celsius: 0.0)
print("currentTemperature2: \(currentTemperature2.fahrenheit)")
print("currentTemperature2: \(currentTemperature2.kelvin)")
print("currentTemperature2 boilingPoint: \(Temperature2.boilingPoint)")

var odometer = Odometer()
odometer.increment()
odometer.increment(by: 15)
odometer.reset()

var stepCounter = StepCounter()
stepCounter.totalSteps = 40
stepCounter.totalSteps = 100

var firstCar = Car(make: "makeee", year: 2021, topSpeed: 100)
firstCar.make = "m"

struct Person {
    var name: String
    var count: Int = 10 // デフォルト値: 10
    func sayHello() {
        print("Hello, there! My name is \(name)!")
    }
}

struct Temperature {
    var celsius: Double
    
    init(celsius: Double) {
        self.celsius = celsius
    }
    
    init(fahrenheit: Double) {
        celsius = (fahrenheit - 32) / 1.8
    }
    init(kelvin: Double) {
        celsius = kelvin - 273.15
    }
}

struct Temperature2 {
    static let boilingPoint = 100 // クラス変数
    var celsius: Double
    var fahrenheit: Double {
        return celsius * 1.8 + 32
    }
    var kelvin: Double {
        return celsius + 273.15
    }
}

// インスタンスメソッド内でメンバ変数の更新をしたい場合は、mutatingキーワードをメソッドにつける
// mutatingキーワードつけないと、count変数の値が変更不可能.
struct Odometer {
    var count: Int = 0
    
    mutating func increment() {
        count += 1
        print("\(count)")
    }
    
    mutating func increment(by amount: Int) {
        count += amount
        print("\(count)")
    }
    
    mutating func reset() {
        count = 0
        print("\(count)")
    }
}

// メンバ変数の変更をobserve
struct StepCounter {
    var totalSteps: Int = 0 {
        // totalStepsが変更されるたびに、willSetが最初に呼び出される.
        willSet {
            print("About to set totalSteps to \(newValue)") // 値変更前
        }
        // プロパティの値が更新されると、didSetが呼び出され、oldValueを使用して以前のプロパティ値にアクセス可能
        didSet {
            if totalSteps > oldValue{
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

struct Car {
  var make:String
  var year:Int
  var topSpeed:Int
}
