//: [Previous](@previous)

/*
전역변수를 사용해서 문제가 생겼다.
스텝 2의 파일에 있던 함수와 변수가 전역이라 그대로 다음 파일에 이어서 사용하다보니 타인이 코드를 읽을 때 어려움이 생기는 일이..! 학습도우미님께서 이러한 일들 때문에 전역변수 사용을 지양하는 것이라고 하셨다. 그래서 이번에도 class로 해결한,, 나는 나름 step2의 파일에 있는 걸 그대로 받아써서 편하다고 생각했는데 그게 전부가 아니었던,,, 나 혼자 하는 일이 아니기에.. 반성 또 반성.
그래서 범위 Scope에 대한 공부를 더 해보았다.
- 동일한 범위에서는 이전에 선언되어 있는 변수와 상수에 접근할 수 있다.
- 상위 범위에서는 하위 범위에 선언되어 있는 변수, 상수에 접근할 수 없다. (반대는 가능)
- 서로 다른 범위에는 같은 이름이 존재할 수 있으며, 이때 이 이름을 사용 시 더 가까운 범위에 있는 것에 접근한다.
- brace {} 는 변수와 상수의 Life Cycler과도 관련이 있다.
- struct {} 안은 선언 범위 Declaration Scope이다.
 */

//: [Next](@next)
