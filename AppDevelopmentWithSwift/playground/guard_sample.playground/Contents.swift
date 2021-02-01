import UIKit

let birthdayIsToday = true
let invitedGuests = 1
let cakeCandlesLit = true

singHappyBirthday()
processBook(title: "abc", price: 1,pages: 2)


// guardを一つで実装できる
func processBook(title: String?, price: Double?, pages: Int?) {
    guard let theTitle = title, let thePrice = price, let thePages = pages else {return}
    print("theTitle: \(theTitle), thePrice: \(thePrice), thePages: \(thePages)")
}
func processBook_bad(title: String?, price: Double?, pages: Int?) {
    guard title != nil else {return}
    guard price != nil else {return}
    guard pages != nil else {return}

    print("theTitle: \(title!), thePrice: \(price!), thePages: \(pages!)")
}

// 条件を満たさないケースをreturnではじく
func singHappyBirthday() {
    guard birthdayIsToday else {
        print("No one has a birthday today.")
        return
    }
    guard invitedGuests > 0 else {
        print("It's just a family party.")
        return
    }
    guard cakeCandlesLit else {
        print("The cake's candles haven't been lit.")
        return
    }
    print("Happy Birthday to you!")
}

// if文のネストが多くて読みにくい
func singHappyBirthday_bad() {
  if birthdayIsToday {
    if invitedGuests > 0 {
      if cakeCandlesLit {
        print("Happy Birthday to you!")
      } else {
        print("The cake's candles haven't been lit.")
      }
    } else {
      print("It's just a family party.")
    }
  } else {
    print("No one has a birthday today.")
  }
}
