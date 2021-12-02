import UIKit

// 제네릭 : 어떤 자료형이라든지 받을 수 있다.
// <> : 제네릭 표기

//보통은 SomeElement가 아닌 "T"로 입력한다.
struct MyArray<SomeElement>{
    // 제네릭을 담은 빈 배열
    var elements : [SomeElement] = [SomeElement]()
    // SomeElement는 형태가 없음
    
    
    // struct는 생성자가 없어도 되는데 편의상 만들었음
    // 생성자
    init(_ elements: [SomeElement]){
    //elements가 들어오게 되면 내가 갖고 있는 elements에 넣어줌
        self.elements = elements
    }
}

struct Friend {
    var name: String
}

struct PpakCoder {
    var name: String
}

// MyArray를 생성할 때 안에 어떤 것이든 넣을 수 있다.
var mySomeArrray = MyArray([1,2,3])
print("mySomeArrray : \(mySomeArrray)")
// -> mySomeArrray : MyArray<Int>(elements: [1, 2, 3])

var myStringArrray = MyArray(["가", "나", "다"])
print("myStringArrray : \(myStringArrray)")
// -> myStringArrray : MyArray<String>(elements: ["가", "나", "다"])

let friend_01 = Friend(name: "철수")
let friend_02 = Friend(name: "영희")
let friend_03 = Friend(name: "수진")

var myFriendsArrray = MyArray([friend_01,friend_02,friend_03])
print("myFriendsArrray : \(myFriendsArrray)")
