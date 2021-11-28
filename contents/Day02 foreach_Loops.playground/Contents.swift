import UIKit

// 콜렉션 : 데이터를 모아둔 것
// 배열, 셋, 딕셔너리, 튜플(은 제외)
// 배열
//var myArray : [Int] = []
// 숫자라는 데이터를 길게 늘어놓은 형태
var myArray : [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//
////foreach는 데이터의 수만큼 반복을 돌리는 것
for item in myArray {
    print("item: \(item)")
}
/* ->
 item: 0
 item: 1
 item: 2
 item: 3
 item: 4
 item: 5
 item: 6
 item: 7
 item: 8
 item: 9
 item: 10
 */

for item in myArray where item > 5 {
    print("item: \(item)")
}
/*
 item: 6
 item: 7
 item: 8
 item: 9
 item: 10

 */

for item in myArray where item % 2 == 0 {
    print("짝수: \(item)")
}

/*
 짝수: 0
 짝수: 2
 짝수: 4
 짝수: 6
 짝수: 8
 짝수: 10
 */

for item in myArray where item % 2 != 0 {
    print("홀수: \(item)")
}

/*
 홀수: 1
 홀수: 3
 홀수: 5
 홀수: 7
 홀수: 9
 */
