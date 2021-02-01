import UIKit

// Int8は、-128 から 127　までの数値を扱う数値型
var numbers: [Int8] = [127,-128,1]
print(numbers)

// 0を10個持つListを作成
var myArray = [Int](repeating: 0, count: 10)
print(myArray)

// Arrayのインスタンス生成(3パターン) - S
var a: [Int] = []
print(a)
var b : Array<Int> = []
print(b)
var c = [String]()
print(c)
// Arrayのインスタンス生成(3パターン) - E

// append
c.append("Joe")
c += ["Keith", "Jane"]
c.insert("ABC", at: 0)
c.remove(at: 3)
print(c)
