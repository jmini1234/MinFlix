# Apply Flutter Device Preview in VSCode

- 참고 사이트

[device_preview | Flutter Package](https://pub.dev/packages/device_preview)

---

1. **pubspec.yaml > dependencies 에 추가**
    
    ```dart
    dependencies:
      flutter:
        sdk: flutter
      **device_preview:**
    ```
    
2. **main.dart**
    1. root widget을 runApp을 DevicePreview 위젯으로 감싼 후 아래의 조건을 만족시켜야 함 
        1.  `useInheritedMediaQuery` to `true`.
        2. `builder`
         to `DevicePreview.appBuilder`
        3.  `locale` to `DevicePreview.locale(context)`
        
    2. 그 외 코드 개념들
        - `kReleaseMode/ kDebugMode`
            
            Flutter에서 Debug 인지 Release인지 파악하는 모듈 (foundation.dart 모듈)
            
        - `Context 의미`
            
            각각의 위젯은 고유의 BuildContext를 가지고 있음
            
            buider를 사용해서 각각의 context를 하나의 위젯이 사용
            
            부모 element에 대한 참조
            
    
    ```dart
    import 'package:device_preview/device_preview.dart';
    
    import 'package:flutter/foundation.dart';
    
    void main() => runApp(
          DevicePreview(
    				// debug 모드에서만 보이기 위해
            enabled: !kReleaseMode,
            builder: (context) => MyApp()
          ),
        );
    
    class _MyAppState extends State<MyApp> {
      late TabController controller;
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          darkTheme: ThemeData.dark(),
          title: "MinFlix",
          theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.black),
          home: DefaultTabController(
            length: 4,
            child: Scaffold(
              body: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  HomeScreen(),
                  Container(
                    child: Center(
                      child: Text('search'),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text('save'),
                    ),
                  ),
                  MoreScreen(),
                ],
              ),
              bottomNavigationBar: Bottom(),
            ),
          ),
        );
      }
    }
    ```
    
    ---
    
    - 결과
        - `IOS/Android/Window/MacOS` 의 다양한 모델 지원
        - Device Preview 토글 여부도 존재
    
    ![simulator_screenshot_69C0D468-4015-4A8B-A89F-794F6C53699F.png](Apply%20Flutter%20Device%20Preview%20in%20VSCode%202e74ee224f4c4b788839ba3139dc895c/simulator_screenshot_69C0D468-4015-4A8B-A89F-794F6C53699F.png)
    
    ![simulator_screenshot_E1BFAE86-C534-4BD5-BC17-EDF10D311990.png](Apply%20Flutter%20Device%20Preview%20in%20VSCode%202e74ee224f4c4b788839ba3139dc895c/simulator_screenshot_E1BFAE86-C534-4BD5-BC17-EDF10D311990.png)
    
    ![simulator_screenshot_E41D4857-9FF9-46A5-88A6-638616FD0E92.png](Apply%20Flutter%20Device%20Preview%20in%20VSCode%202e74ee224f4c4b788839ba3139dc895c/simulator_screenshot_E41D4857-9FF9-46A5-88A6-638616FD0E92.png)
    
    - 참고
        - device preview를 사용하면 반응형 디자인이 적용되므로 그 과정에서
            
            오류가 발생할 수 있음 (처음부터 제대로 고려 안하면 …)
            

**🚨 [ERROR MSG]**

`A RenderFlex overflowed by 2.0 pixels on the bottom.` 

![Untitled](Apply%20Flutter%20Device%20Preview%20in%20VSCode%202e74ee224f4c4b788839ba3139dc895c/Untitled.png)

**👩🏻‍💻 [RESOLVE]**

멀티 플랫폼을 적용하기위해서는 당연하겠지만 `Flexible` 하게 코드를 작성해야 함

~~자세한 내용은 천천히 알아보기~~

[A RenderFlex overflowed by 40 pixels on the bottom. Flutter](https://stackoverflow.com/questions/62443718/a-renderflex-overflowed-by-40-pixels-on-the-bottom-flutter)

```dart
Tab(
	...
   child: Text(
         '저장한 컨텐츠 목록',
          style: TextStyle(fontSize: 9),
          **overflow: TextOverflow.ellipsis,**
	        ),
	...
),
```