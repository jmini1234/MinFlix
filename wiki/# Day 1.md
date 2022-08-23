# # Day 1

- 코드 구조 (편한 방식으로 수정해도 됨)
    - lib
        - model  : database 관련
        - screen : 화면별 파일
        - widget : 여러 번 반복되는 것들
        

> 변수 앞에 _(언더바)가 붙는 경우에는 외부함수에서 접근이 불가능한 private 변수이다.
> 

- **MaterialApp Class**
    - Material Design을 사용할 수 있게 해주는 Class
    - 하위 페이지나 구성요소를 최상단에서 담는 그릇을 뜻함, `앱으로서 기능`을 할 수 있도록 해주는 뼈대
    - 옵션 상세 참고 → [https://api.flutter.dev/flutter/material/MaterialApp-class.html](https://api.flutter.dev/flutter/material/MaterialApp-class.html)
    
- **Scaffold**
    - 뜻 : 발판, 배게 …
    - 기본 Material Design visual layout 구조를 구현하는데 사용, `디자인적 뼈대`를 구성하는 위젯
    - 앱의 최상위에서 주로 사용하며 전역적인 UI Layout 구성

- **Output**

![스크린샷 2022-08-23 오후 11.52.04.png](#%20Day%201%202597000c98bf427fba72f571902a5c76/%25E1%2584%2589%25E1%2585%25B3%25E1%2584%258F%25E1%2585%25B3%25E1%2584%2585%25E1%2585%25B5%25E1%2586%25AB%25E1%2584%2589%25E1%2585%25A3%25E1%2586%25BA_2022-08-23_%25E1%2584%258B%25E1%2585%25A9%25E1%2584%2592%25E1%2585%25AE_11.52.04.png)