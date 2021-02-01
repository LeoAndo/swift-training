import UIKit

for index in 1...3 {
    print(index)
}

// 値の割り当てをスキップする
for _ in 1...3 {
    print("Hello!")
}

let names = ["A","B","C"]
for name in names {
    print(name)
    if name == "B" {
        break
    }
}

var i = 0
while i < 3 {
    print(i)
    i += 1
}
