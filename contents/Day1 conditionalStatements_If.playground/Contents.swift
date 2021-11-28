import UIKit

var isDarkMode : Bool = true
//var isDarkMode : Bool = false
// 다크모드 여부

//if (isDarkMode == true ) {
//    print("다크모드 입니다")
//} else {
//    print("다크모드가 아닙니다")
//}

//if (isDarkMode != true ) {
//    print("다크모드 입니다")
//} else {
//    print("다크모드가 아닙니다")
//}
//// -> 다크모드가 아닙니다

//if isDarkMode != true {
//    print("다크모드 입니다")
//} else {
//    print("다크모드가 아닙니다")
//}
//// -> 다크모드가 아닙니다

//if isDarkMode {
//    print("다크모드 입니다")
//} else {
//    print("다크모드가 아닙니다")
//}
//// -> 다크모드입니다


//if !isDarkMode {
//    print("다크모드 입니다")
//} else {
//    print("다크모드가 아닙니다")
//}
//// -> 다크모드가 아닙니다


//삼항연산
//var title : String = isDarkMode == true ? "다크모드 입니다" : "다크모드가 아닙니다"
// isDarkMode == true라는 조건이 참인경우
//// ? 이전이 조건   오른쪽이 참 : 이후가 else
//print(title)
//// -> 다크모드입니다


var title : String = isDarkMode ? "다크모드 입니다" : "다크모드가 아닙니다"
//isDarkMode가 참인경우
print("title: \(title)")
// -> title: 다크모드 입니다
