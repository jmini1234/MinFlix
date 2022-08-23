# # Day 1

- 코드 구조 (편한 방식으로 수정 가능)
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

<img width="1440" alt="스크린샷 2022-08-23 오후 11 51 56" src="https://user-images.githubusercontent.com/37237145/186193650-21a4044e-52ee-48b1-b1e7-0e6913a400f5.png">
