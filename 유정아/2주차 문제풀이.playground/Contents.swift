import UIKit

/* Zay
 1번
 빈 딕셔너리를 생성하고 주어진 영단어 "tyrannosaurus"에 구성된 철자들을 key로,
 해당 철자가 사용된 횟수를 value로 저장하여 출력하는 코드를 작성해보세요.
 
 
 예시)
 
 var word = "tyrannosaurus"
 Console:
 ["o": 1, "s": 2, "n": 2, "t": 1, "y": 1, "r": 2, "a": 2, "u": 2]
 */

var word = "tyrannosaurus"
var dict: [Character:Int] = [:]

for chr in word {
    if dict[chr] == nil {
        dict[chr] = 1
    } else {
        dict[chr]! += 1
    }
}
print(dict)

/*
 2번
 열거형에서 원시값과 연관값에 차이점에 대해 간략하게 서술해보세요.
 
 원시값: 열거형 case에 매칭되어진 값. 주로 Int, String 사용. 선언시점에 원시값을 저장함
 연관값: case에 추가적인 정보를 저장. 정보가 바뀔때 마다 케이스를 만들어내고 싶을 때 사용. 인스턴스를 생성할 때 연관값을 저장함
 */


/* Rocky
 1. 두 수를 입력하면 비교결과를 출력해주는 함수를 작성하시오.
 func twoNumCompare(num1: Int, num2: Int) {
 
 }
 // 출력 예시
 53 > 40
 13 < 20
 20 == 20
 }
 */

func twoNumCompare(num1: Int, num2: Int) {
    if num1 > num2 {
        print("\(num1) > \(num2)")
    } else if num1 < num2 {
        print("\(num1) < \(num2)")
    } else {
        print("\(num1) == \(num2)")
    }
}

twoNumCompare(num1: 53, num2: 40)
twoNumCompare(num1: 13, num2: 20)
twoNumCompare(num1: 20, num2: 20)

/*
2. 현재 가격을 입력 받아 상한가(30%)를 리턴하는 upperPrice 함수를 작성하시오.
 */
func upperPrice(_ price: Double) -> Double {
    return price * 1.3
}
var item = upperPrice(10000)
print(item)

//출력 결과: 13000.0

/* Joe
1. 옵셔널 바인딩을 사용해서 아래 예제 변수의 옵셔널 타입 해제 후 해당 변수를 출력해주세요.
 */
// if문을 사용해주세요.
var name: String? = "김병두"
if let name = name {
    print(name)
}

// guard문을 사용해주세요.
var weight: Double? = 125.5

func printWeight(weight: Double?) {
    guard let num = weight else { return }
    print(num)
}

printWeight(weight: weight)

//2. 배열과 딕셔너리의 차이점을 아는대로 서술해주세요.
/*
 배열: 순서 O, 중복 O. 한 배열에는 같은 데이터 타입만 저장
 딕셔너리: 순서 X, 중복 X. 키 - 값의 쌍으로 저장. 값만 검색할수 X
 */
