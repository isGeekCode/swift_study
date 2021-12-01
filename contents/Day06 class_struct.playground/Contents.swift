import UIKit


// 변수라는 공간에 데이터를 담는 것은 한도가 있다.
// 모델이라는 곳에 덩어리로 묶어둔다. ex) 모델(이름, 영상, 조회수)
// 변수하나하나를 묶는 방법이 클래스와 스트럭트 두가지가 있다.


// 유튜버 (데이터) 모델 - struct / 구조체
struct YoutuberStruct {
    var name : String
    var subscribersCount: Int
}
// 메모리에 올리는데 name과 subscribersCount를 쓰라고 정함
var devGikko = YoutuberStruct(name: "기꼬", subscribersCount: 99999)
var devGikkoClone = devGikko

print("====== struct ======")

print("값 넣기 전 devGikkoClone.name : \(devGikkoClone.name)")
// -> 값 넣기 전 devGikkoClone.name : 기꼬
devGikkoClone.name = "호롤롤로"

// 값 복사이기 때문에 둘의 값이 다르다
print("값 넣은 후 devGikkoClone.name : \(devGikkoClone.name)")
print("값 넣은 후 devGikko.name : \(devGikko.name)")
// -> 값 넣은 후 devGikkoClone.name : 호롤롤로
// -> 값 넣은 후 devGikko.name : 기꼬

// #2 클래스 : 스트럭트처럼 데이터들의 모음이다.
// -> 생성자를 만들어 주어야한다. -> 생성: 메모리에 올린다 (init)
class YoutuberClass {
    var name : String
    var subscribersCount: Int
// 처음에 메모리에 올리려면 위의 name과 subscribersCount에 대한 값이 없는 상태이기 때문에 외부에서 데이터를 넘겨준다.
// init으로 매개변수를 가진 생성자 메소드를 만들어야 매개변수를 넣어서 그 값을 가진 객체(object)를 만들 수 있다.
    init(name: String, subscribersCount: Int){
// 내가 가지고 있는 이름을 외부에서 들어온 name으로 넣겠다.외부의 subscribersCount를 subscribersCount에 넣겠다.
// 매개변수를 넣을 때 이름을 쓰지 않고 "_"로 사용가능
        self.name = name
        self.subscribersCount = subscribersCount
        
    }
}

var gikko = YoutuberClass(name: "기꼬", subscribersCount: 99999)
var gikkoClone = gikko

print("====== class ======")

print("값 넣기 전 gikkoClone.name : \(gikkoClone.name)")
gikkoClone.name = "호롤롤롤로"
 
print("값 넣은 후 gikkoClone.name : \(gikkoClone.name)")
print("값 넣은 후 gikko.name : \(gikko.name)")

/*
 ====== struct ======
 값 넣기 전 devGikkoClone.name : 기꼬
 값 넣은 후 devGikkoClone.name : 호롤롤로
 값 넣은 후 devGikko.name : 기꼬
 ====== class ======
 값 넣기 전 gikkoClone.name : 기꼬
 값 넣은 후 gikkoClone.name : 호롤롤롤로
 값 넣은 후 gikko.name : 호롤롤롤로
 */
