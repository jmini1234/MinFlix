# Futter UI 개발 맛보기 (정리)

[Flutter UI 개발 맛보기](https://tv.naver.com/v/23583418)

- Flutter 는 기본적으로 `Widget` 단위 기반으로 레고처럼 조립해가는 언어

→ Widget을 효율적으로 만들어 나가는 것이 중요

1. **직접 생성**
    1. `레이아웃 치트 시트` 
        
        [Flutter Layout Cheat Sheet](https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e)
        
        필요할때마다 찾아보면서 참고하기 !!!
        
        - Row, Column, Stack 등의 위젯 사용법 & UI에 대해 설명되어 있음
        - 검색하기 귀찮으니 항상 펴보기
    2. `Device Preview 플러그인`
        - 다양한 디바이스에서 UI가 제대로 보이는지 체크
        - 여러 시뮬레이터를 켜고 빌드할 필요 없음
            
            [VS Code 도입 방법](wiki/FlutterDevicePreview.md)
            
    3. `Dev Tools`
        - 성능 체크와 디버깅을 위한 강력한 도구
        - 위젯 디버깅을 할 때 굉장히 유용
        - VSCode > Widget Inspector
            
            계층을 알아보기 쉽다
            
        - 좀 더 자세히 알아보기
2. **자동 생성**
    
    Flutter 플러그인을 설치하면 개발자/디자이너 협업 가능
    
    1. Zeplin
        1. 이미지가 포함된 것은 인식이 잘 안될 수도 있음
    2. Figma
        1. 사이드 프로젝트 할 때 사용하면 편리함
3. **재활용**
    
    💡 유용한 정보 사이트
    
    1. **Flutter Gems**
        1. 유용한 패키지들을 카테고리별로 큐레이션
    2. **Awesome Flutter**
        1. 깃헙기반
        2. flutter 전반적인 정보 있음
    3. **Flutter Tab**
        1. Flutter News Letter
