import UIKit

// 初期化(4パターン) -S
var scores = ["Richard": 500, "Luke": 400, "Cheryl": 800]
var mydictionary = [String: Int]()
var mydictionary2 = Dictionary<String, Int>()
var mydictionary3: [String: Int] = [:]
print(scores)
print(mydictionary)
print(mydictionary2)
print(mydictionary3)
// 初期化(4パターン) -E


// Add , Update - S
// ハイスコアの辞書に新しいスコアを追加します。 キー「Oli」がDictionaryにすでに存在する場合、このコードは古い値を新しい値に置き換えます。
scores["Oli"] = 399
print(scores)
if let oldValue = scores.updateValue(100, forKey: "Richard") {
    print("oldValue: \(oldValue)") // 元のデータ無ければ nil
}
// Add , Update - E

// Remove - S
scores["Richard"] = nil // Richardを削除する
print(scores)
if let oldValue = scores.removeValue(forKey: "Luke") {
    print(scores)
}
// Remove - E

// Key , Valueを抽出する
var scores2 = ["Richard": 500, "Luke": 400, "Cheryl": 800]
let players = Array(scores2.keys)
let points = Array(scores2.values)
print("players: \(players)")
print("points: \(points)")
