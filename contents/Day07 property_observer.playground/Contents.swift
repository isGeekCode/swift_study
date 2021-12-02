import UIKit

var myAge = 0 {
    willSet{
        print("값이 설정될 예정이다. my Age: \(myAge)")
    }
    didSet{
        print("값이 설정되었다. my Age: \(myAge)")
    }
}

myAge = 10
/*
 값이 설정될 예정이다. my Age: 0
 값이 설정되었다. my Age: 10
 */
myAge = 20
/*
 값이 설정될 예정이다. my Age: 10
 값이 설정되었다. my Age: 20
 */
