import UIKit


// 옵셔널이란?
// 옵션이 있을 수도 있고 없을 수도 있다
// -> 값이 있을 수도 없을 지 모른다.
var someVariable: Int? = nil
// ?가 있으면 값이 없다는 뜻

if someVariable == nil {
    someVariable = 90
}

print("someVariable: ", someVariable)
//-> someVariable:  Optional(90)

// optional(90)로 표기되어 나옴 -> 보기 불편
// 확실하게 하기위해 unwrap과정을 가짐
// 언래핑 -> 감싸져 있는 것을 벗기는 것

//#1 if let
//만약 값이 있다면 otherVariable에 넣어 사용하겠습니다.
if let otherVariable = someVariable {
    print("언래핑되었다. 즉 값이 있다. otherVariable: \(otherVariable)")
} else {
    print("값이 없다.")
}
// -> 언래핑되었다. 즉 값이 있다. otherVariable: 90

someVariable = nil
//someVariable이 비어있으면 -> 값이 없으면 기본값으로 이것을 넣겠다.
let myValue = someVariable ?? 10
print("myValue: \(myValue)")
//-> myValue: 10


//#2 guard let

func unwrap(parameter: Int?){
    print("unwrap() called")
    // 값이 없으면 리턴해버리겠다.
    // 즉 지나간다.
    guard let unWrappedParam = parameter else {
        return
    }
    print("unWrappedParam: \(unWrappedParam)")
}

var firstValue : Int? = 30
var secondValue : Int? = 50
print("firstValue: \(firstValue)")
print("secondValue: \(secondValue)")

unwrap(parameter: firstValue)
unwrap(parameter: secondValue)
