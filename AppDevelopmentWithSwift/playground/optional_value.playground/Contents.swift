import UIKit

// ?をつけると、nullableな変数宣言ができる
var str: String? = nil
print(str)

str = "abc"
if str != nil {
    // !は強制アンラップ
    let unwrapvalue = str!
    print(unwrapvalue)
}
