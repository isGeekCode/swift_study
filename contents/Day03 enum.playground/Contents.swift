import UIKit
// #1
// 학교 - 초, 중, 고
enum School {
//    case elementary
//    case middle
//    case high
    case elementary, middle, high
}

let yourSchool = School.high
print("yourSchool : \(yourSchool)")
//print("yourSchool:", yourSchool)
//-> yourSchool: high

//#2 enum은 값을 가질 수 있다.
enum Grade: Int {
    case first = 1
    case second = 2
}

//let yourGrade = Grade.second
//print("yourGrade : \(yourGrade)")
// -> yourGrade : second

//let yourGrade = Grade.second
//print("yourGrade : \(yourGrade.rawValue)")
// -> yourGrade : 2

let yourGrade = Grade.second.rawValue
print("yourGrade : \(yourGrade)")
// -> yourGrade : 2


//#3 case에 파라미터를 넣어서 가져올 수 있다.
enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    case high(name: String)
    
    
    //나 자신의 케이스의 값을 가져올 수 있다.
    // 만약에 나 자신이 @@이라면? @@ 하겠다.
    func getName() -> String {
        switch self {
        case.elementary(let name):
            return name
        case let .middle(name):
            return name
        case .high(let name):
            return name
        }
    }
}

let yourMiddleSchoolName = SchoolDetail.middle(name: "기꼬중학교")
print("yourMiddleSchoolName: \(yourMiddleSchoolName)")
//-> yourMiddleSchoolName: middle(name: "기꼬중학교")

// 이름을 그냥 가져올 수 없을까? -> enum 안에 있는 함수를 가져올 수 있다.
let yourHighSchoolName = SchoolDetail.high(name: "기꼬고등학교")
print("yourHighSchoolName: \(yourHighSchoolName.getName())")
// -> yourHighSchoolName: 기꼬고등학교


