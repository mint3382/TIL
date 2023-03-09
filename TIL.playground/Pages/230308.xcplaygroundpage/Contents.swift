//: [Previous](@previous)

/*:
## STEP 02
### 메서드 매개변수 지정

이번 스텝 2의 과제에서 명시한 것들은 그 전에 구현했던 스텝 1과는 조금 차이가 있었다. 나는 Person을 매개변수로 받아왔었는데, 커피숍의 make 뒤의 매개변수가 Coffee 타입의 커피와 String 타입의 이름으로 지정되어 있었기에.

```swift
//내 것
func takeOrder(from customer: Person)

//문제에서 제시된 것
func make(_ coffee: Coffee, from name: String)
```

### 메서드 실행 후 다른 메서드 호출

또한 문제에서는 missKim이 Order() 메서드를 실행하면 후에 yagombucks의 make 메서드를 호출하도록 구현하라고 명시하고 있었다.

→ Person에 Coffeeshop 프로퍼티 추가

그래서 그전과 반대로 Person에서 Coffeeshop에 접근해 보았다.

### Person 설정

1. 카페에 들어가서 (missKim.cafe = yagombucks)
2. order 메서드를 실행해서 주문 (missKim.order(.americano)
3. order 메서드에서 주문이 들어간 카페에 있는지 확인
4. 있으면 가지고 있는 돈이 가격보다 많은지 확인
5. 많으면 가격 지불 (money -= price)
6. 들어간 카페의 make 메서드 호출 (cafe?.make(coffee, from: nickname))

### CoffeeShop 설정

인스턴스들은 그 전 step1과 똑같이 두었다.

다만 make 메서드의 매개변수가 달라져서 메서드 내용이 조금 생략되었다.

또한 처음에 CoffeeShop을 struct, Person을 class로 했었는데

CoffeeShop → Person으로 접근하던 것을

Person → CoffeeShop으로 접근하도록 바꾸니까

후에 pickUPTable에 추가하는 것도 그렇고, totalSales에 값을 더하는 것도 그렇고 밖의 main 파일에서 출력해 보았을 때 변화가 없었다. 그래서 class와 struct도 서로 바꿔주었다.

#### 내 생각..
class는 값은 참조해서 전달하는 거고 struct는 값을 복사해서 전달하는 거라 Person에서 struct CoffeeShop의 값을 바꾼 후에 그 struct CoffeeShop을 호출해서 값을 확인해도 값이 바뀌지 않는거로 생각했는데 픽업대에 추가하는 거나 총매출액을 변경하는 건 strust CoffeeShop 내부에 있는 make 메서드에서 실행했는데도 변화가 없다는 게 의아하다. 그래서 생각한게 struct CoffeeShop 내부에 있는 make 메서드라 할지라도 그 메서드를 Person에서 값 복사해서 한 cafe?.make로 호출해서 그렇다는 것. 음... 질문을 해 놓아야겠다.

마지막으로 make 메서드를 main에서 따로 호출이 불가능하게 만들어 주고 싶은데 Person에서는 호출할 수 있어야 하니 고민하다 fileprivate라고 같은 파일 내에서만 사용할 수 있다는 것을 알아서 그렇게 했다.

### 추가적인 부분

guard에 대해 알게 되었다. if 문보다 이렇게 앞에서 아니면 따로 빼주도록 작성한 후 그 후로는 관련된 인자들을 자유롭게 쓰니 더 코드가 깔끔하고 편해진 것 같다.

### class의 초기화 barista

바리스타의 경우는 미리 선언해놓을 수가 없어서 옵셔널 타입으로 바꿨다. 바리스타가 반드시 필요하다고는 생각하는데 하나만 초기화할수가 없어서...ㅜ 고민해봐야겠다.
 */

//: [Next](@next)
