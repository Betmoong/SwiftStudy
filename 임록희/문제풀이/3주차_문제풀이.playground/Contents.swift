import UIKit

/*
 Zay
 1번) 다음 중 class의 특징으로 알맞지 않은 것은?
 ① 메서드 내에서 속성 변경이 가능하다.
 ② 상속이 가능하다.
 ③ 모든 데이터를 Stack에 저장한다.
 ④ 편의 생성자가 존재한다.

답: 3번
*/

/*
 2번) Zay의 1주차 문제 1번 코드를 참고하여 다음 프로그램을 클래스와 저장/계산(get만 사용) 속성을 사용하여 구현해 보세요.
 근무 시간과 시급으로 급여를 계산하여 출력하는 프로그램을 작성해보세요. (단, 40시간을 초과하는 근무 시간에 대해서는 1.5배의 시급을 적용합니다.)
*/

class Working {
    var hours: Double = 0
    var rate: Double = 0
    var pay: Double {
        get {
            var value: Double
            if self.hours > 40 {
                value = (40 * self.rate) + ((self.hours - 40) * self.rate * 1.5)
                return value
            }
            else {
                value = self.hours * self.rate
                return value
            }
        }
        
    }
}

var partTimeJob = Working()
partTimeJob.hours = 45
partTimeJob.rate = 10000

print("총 급여는 \(partTimeJob.pay)원 입니다.")


/*
 Jade
 1번) 객체지향 프로그래밍(OOP)의 4대 특징은?
 답: 추상화, 캡슐화, 상속성, 다형성
*/


// 2-1번) 휴대폰 정보를 저장하는 클래스 ‘Phone’에 한국의 국가번호 “+82”를 타입속성 으로 추가해 주세요.

class Phone {
    static let koreaNumber: String = "+82"
    
    let identification = "010"    // 식별 번호
    var myNumber = "12345678"     // 나의 번호
    
    // 2-2번 계산속성 추가
    var fullNumber: String {
        return Phone.koreaNumber + self.identification + self.myNumber
    }
}


// 2-2번) 위에서 작성한 ‘Phone’ 클래스 내부에 국가번호(countryCode), 식별번호(identification), 나의 번호(myNumber)를 차례대로 더한 전체번호(fullNumber) 변수를 계산속성으로 정의하고 출력해주세요.

var phone = Phone()
print(phone.fullNumber)



/*
 Joe
 1번) 클래스와 구조체 중 구조체의 사용을 권장하는 경우를 서술해주세요.
 답: 일반적인 경우 구조체 사용 권장. 그러나 상속이 필요한 경우 클래스 사용
*/

/*
 2번) 아래 지문을 읽고 속성 감시자를 사용해서 코드를 구현해주세요.
 
 StepCounter라는 구조체를 만들고, totalSteps(총 걸음 수)의 값을 감시합니다.
 총 걸음 수가 변경되면 현재까지 걸은 수를 출력하고 만약 총 걸음 수가 이전보다 증가한 경우 추가된 발걸음 수를 출력합니다.
 (말을 좀 어렵게 한 것 같은데 출력 예시를 보시면 더 이해하기 쉬울 것 같습니다..)
*/

struct StepCounter {
    var totalSteps: Int = 0 {
        // 나머지 코드 작성 (willSet, didSet을 모두 사용해주세요.)
        willSet {
            print("지금까지 걸은 나의 걸음 \(newValue)")
        }
        didSet {
            if totalSteps - oldValue > 0 {
                print("추가로 걸은 수 \(totalSteps - oldValue) 걸음")
            }
        }
    }
}

var myStepCounter = StepCounter()
myStepCounter.totalSteps = 971
myStepCounter.totalSteps = 1289
