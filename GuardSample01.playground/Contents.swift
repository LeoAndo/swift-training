
func someFunction() {
    // let a: Any = "abc"
    let a: Any = 100
    
    guard let intValue = a as? Int else {
        print("Early return!!!")
        return
    }
    print("\(intValue)")
}

someFunction()
