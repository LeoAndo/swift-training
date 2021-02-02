import UIKit

/*
 「この次の例では、関数のローカルスコープ内とforループのローカルスコープ内の2つの異なる場所にあるpointsという変数を定義しています。 これはvariable shadowing(可変シャドウイング)と呼ばれます。
 これは有効なSwiftコードですが、コードが実行されたときに何が起こるか明らかでないコーディング。」
 */
func printComplexScope() {
    var points = 100
    print(points)
    
    for index in 1...3 {
        var points = 200
        print("Loop \(index): \(points+index)")
    }
    print(points)
}

printComplexScope()

var name: String? = "Brady"

if let name = name {
    print("My name is \(name)")
}
