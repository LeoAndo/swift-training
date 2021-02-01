import UIKit

// 異なるタイプの値を同じコレクションに混在させるには、
// Any型で変数宣言する.
var items : [Any] = [5, "ABC", 2.5, Dog()]

for item in items {
    // キーワード as?でキャストする. キャスト失敗時はnil
    // キーワード as!で強制的にキャストする.
    if let aaa = item as? Int {
        print(aaa)
    } else if let bbb = item as? String {
        print(bbb)
    }
}

struct Dog{}
