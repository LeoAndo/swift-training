import UIKit



// classのインスタンスを作成し、インスタンス変数のコピーをすると、アドレス参照のコピーになる.
// なので、変数の1つを更新すると、両方の変数が更新されます。
var jack = Person(name: "Jack", age: 20)
var myFriend = jack
jack.age += 1
print("jack: \(jack.age)")
print("myFriend: \(myFriend.age)")

class Person {
    let name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

// struct(構造体)のインスタンスを作成するときは、その変数にリテラル値を割り当てます。
// インスタンス変数のコピーをすると、値の参照コピーになる. 変数の1つを更新すると、その変数のみ更新される
var jack2 = Person2(name: "Jack2", age: 20)
var myFriend2 = jack2
jack2.age += 1
print("jack2: \(jack2.age)")
print("myFriend2: \(myFriend2.age)")

struct Person2 {
    let name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
