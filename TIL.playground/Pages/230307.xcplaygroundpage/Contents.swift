//: [Previous](@previous)

/*:
## 로직의 흐름
일단, 사람과 커피숍 타입을 만들고 함수를 만들 때 나는 이러한 구조를 생각했다.
1. 사람이 주문을 한다.
2. 주문이 가능한지 확인한다.
_ 1. 손님이 충분한 돈이 있는지
_ 2. 가게에 메뉴가 존재하는지
3. 주문을 받아서 픽업대에 올려 놓는다.
4. 손님을 호출한다.
5. 가게 매출액이 올라간다.

처음 사람이 주문을 하는 부분에서 나는 이것이 사람이 보는 주문 화면이라고 생각해서 메뉴, 가격을 매개변수로 받게 하였다. 그런데 이렇게 되니 손님이 카페에 가서 "아메리카노 0원에 주세요!" 가 되서 수정이 필요했다. 손님이 메뉴만 고르면 그 정보들이 커피숍으로 넘어가서 진행해야 했다.

### Person 타입에 있는 정보 넘기기.
이 부분에 고민을 많이 했다.
1. Person 타입에 있는 주문 메소드에 반환값을 두어 CoffeeShop에서 호출
2. Person 타입에 있는 주문 메소드에서 CoffeeShop을 호출

이러한 방법 중 하나로 주문한 커피의 정보를 넘기려고 했는데 매개변수가 꼬이고 하면서 문제가 생겼다. 고민하고 또 고민하다가 Person 타입에 프로퍼티를 하나 더 만들었다. 있을수도 있고 없을 수도 있는 옵셔널로!
```Swift
class Person {
    var money: Int
    var nickname: String
    var myOrder: Coffee?
    
    init(money: Int, nickname: String) {
        self.money = money
        self.nickname = nickname
    }
    
    func order(_ coffee: Coffee) {
        myOrder = coffee
    }
}
```
그리고 주문 메서드에서 손님이 주문한 커피의 정보를 할당하게 했다. 그 후 CaffeeShop의 주문 확인 메서드에 매개변수의 타입을 Person으로 주어 손님의 정보, 즉 손님의 이름과 돈 그리고 주문 정보를 받을 수 있게 했다. 참고로 Person을 Class로 한 이유는 후에 값을 지불하면 손님이 가진 돈의 정보가 바뀔 것이라 그렇게 하였다.

### 주문을 받아서 확인하고 처리하기
이때 나는 메서드를 두개로 나누었다.
1. 주문을 받아서 가능한지 확인하고 값을 주고받는 메서드
2. 값까지 다 지불해서 만든 커피 주문을 픽업대에 올린 후 손님을 부르는 말을 프린트하는 메서드

주문이 가능하고 값까지 지불한 경우만 커피를 만들어 픽업대에 올려야 하기 때문에 if 함수들을 중첩시켜 모든 조건에 충족한 경우에만 그 다음 2번 메서드를 호출하게 했다. 또 마지막으로 이 경우에만 2번 메서드를 호출해야하기에 private로 2번 메서드를 감춰주었다.

재미있다..!!!
 */

//: [Next](@next)