import UIKit

let foo = Foo(color: "Color1", hasLaces: true)
let bar = Bar(color: "Color2", hasLaces: false)
print(foo)
print(bar)

let aaa = Fooo(firstName: "abc", lastName: "def")
let bbb = Fooo(firstName: "ghi", lastName: "jkl")
let ccc = Fooo(firstName: "abc", lastName: "def")

if aaa == bbb {
    print("aaa == bbb")
}
if aaa < bbb {
    print("aaa < bbb")
}

if aaa == ccc {
    print("aaa == ccc")
}
if aaa < ccc {
    print("aaa < ccc")
}

aaa.sayFullName()
bbb.sayFullName()
ccc.sayFullName()

// ソート処理
let list = [aaa,bbb,ccc]
let sortedList = list.sorted(by: <)
for element in sortedList {
    print(element)
}

// CustomStringConvertible を実装すると インスタンスをprintした時の出力文字を変えることができる.
class Foo : CustomStringConvertible {
    var description: String {
        return "desc: \(color)"
    }
    let color: String
    let hasLaces: Bool
    
    init(color: String, hasLaces: Bool) {
        self.color = color
        self.hasLaces = hasLaces
    }
}

class Bar {
    let color: String
    let hasLaces: Bool
    init(color: String, hasLaces: Bool) {
        self.color = color
        self.hasLaces = hasLaces
    }
}

struct Fooo: Equatable, Comparable, FullyNamed {
    var fullName: String {
        return self.firstName + " " + self.lastName
    }
    
    func sayFullName() {
        print("sayFullName: \(fullName)")
    }
    
    let firstName: String
    let lastName: String
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName
    }
    static func < (lhs: Fooo, rhs: Fooo) -> Bool {
        return lhs.lastName < rhs.lastName
    }
}


protocol FullyNamed {
    var fullName: String { get }
    func sayFullName()
}
