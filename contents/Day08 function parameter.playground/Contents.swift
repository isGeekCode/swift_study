import UIKit

// #함수 매개변수 이름 function parameter



// 함수, 메소드 정의
func myFunction(name: String) -> String {
    return "안녕하세요? \(name)입니다!"
}
// 함수, 메소드를 호출한다. call
myFunction(name: "기꼬")
// -> "안녕하세요? 기꼬입니다!"


// 함수, 메소드 정의
func myFunctionSecond(with name: String) -> String {
    return "안녕하세요? \(name)입니다!"
}
myFunctionSecond(with: "호롤롤로")
// -> "안녕하세요? 호롤롤로입니다!"



// 함수, 메소드 정의
func myFunctionThird(_ name: String) -> String {
    return "안녕하세요? \(name)입니다!"
}
myFunctionThird("하하하하")
// -> "안녕하세요? 하하하하입니다!"
