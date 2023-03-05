//: [Previous](@previous)

/*:
# 배열 출력할 때 괄호 없애기
이것저것 찾아본 결과 3개의 방법을 사용해 볼 수 있었다.

### 1. for_in
이 경우는 set이 아닌 array에서 사용할 수 있었다. if문을 통해서 마지막 인덱스는 출력 시 쉼표가 없도록 하기 위해서였다.
```swift
if matchWithLuckyNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for index in matchWithLuckyNumbers {
            if index != matchWithLuckyNumbers[matchWithLuckyNumbers.count - 1] {
                print (index,terminator: ", ")
            } else {
                print (index, terminator: " ")
            }
        }
        print("입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
```

### 2. joined
배열의 문자열들을 하나로 연결해서 반환시켜주는 메소드이다. 이때 map을 사용해서 Int 타입을 string 타입으로 변환한다. joined를 사용하려면 string 타입이어야 하기 때문에!
```swift
print(matchWithLuckyNumbers.map {(number:Int) -> String in return String(number)}.joined(separator: ", "), terminator: " 입니다!")
```

### 3. trimingCharacters
description을 통해 전체를 문자열로 바꾼 다음, trimingCharacters로 괄호를 제거해준다.
```swift
if matchWithLuckyNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        print(matchWithLuckyNumbers.description.trimmingCharacters(in: ["[", "]"]), terminator: " 입니다!")
```

### 그 외...
공부 속도가 좀 느려진 것 같다. 빨리 몸을 회복해서 더 힘을 내봐야 할 텐데. 스위프트의 세계는 정말 무궁무진하구만.
 */

//: [Next](@next)
