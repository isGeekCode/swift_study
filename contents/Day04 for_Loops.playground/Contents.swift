import UIKit


// #1 레인지(범위) 이상 이하
// 0...5
// 0,1,2,3,4,5  총 6자리


// #2 이상 미만
//0..<5
//0,1,2,3,4

// i-> index 혹은 iterate 때문에 i로 쓰는게 일반적
//for index in 0...5 {
// print("index: \(index)")
//}

/*
 index: 0
 index: 1
 index: 2
 index: 3
 index: 4
 index: 5
 */

//for index in 0..<5 {
// print("index: \(index)")
//}
/*
 index: 0
 index: 1
 index: 2
 index: 3
 index: 4
 */

//#4 index에서 짝수만 구하기
//for index in 0..<5 where index % 2 == 0 {
// print("짝수: \(index)")
//}
/*
 짝수: 0
 짝수: 2
 짝수: 4
 */

//#5 빈 배열생성하기
//var randomInts: [Int] = []
var randomInts: [Int] = [Int]()

for _ in 0..<24 {
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}

print("randomInt: \(randomInts)")
//-> randomInt: [21, 12, 11, 83, 49, 53, 75, 93, 38, 94, 78, 62, 0, 32, 18, 70, 88, 24, 42, 81, 22, 35, 18, 49]

