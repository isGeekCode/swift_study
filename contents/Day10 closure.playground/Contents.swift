import UIKit
//클로저
//클로저 자체는 메소드를 실행하게 되는 것


//#1 String을 반환하는 클로저
let myName : String = {
    // myName 으로 들어간다
    return "기꼬"
}()
print(myName)
// -> 기꼬

//#2 매개변수가 있는 클로저만들기
// 클로저 정의
//let myRealName = { (name: String) -> String in
//    return "개발하는 \(name)"
//}

//클로저 정의
//myRealName이라는 클로저를 실행하게 되면, String자료형의 name이라는 매개변수로 받아서 최종적으로 String을 내뱉는 클로저
let myRealName : (String) -> String = { (name: String) -> String in
    return "개발하는 \(name)"
}

myRealName("기꼬")
// -> "개발하는 기꼬"

// #3 반환값이 없는 클로저

// 따로 반환값을 뱉지 않고 매개변수를 가지면서 아래 로직을 담을 수도 있다.
// String을 담아서 내뱉는 것은 없고 실제로 name이라는 String을 받아서 아무런 처리도 하지 않는다.
let myRealNameLogic : (String) -> Void = { (name: String) in
    print("개발하는 \(name)")
}

myRealNameLogic("기꼬 호롤롤로")
// -> 개발하는 기꼬 호롤롤로


