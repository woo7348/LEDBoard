# LEDBoard

## 버튼으로 배경색을 변하게하는 LED Board


- 코드로 구현된 화면 전환방법에서 데이터 전달
  
  ViewController instance property 에 전달한 데이터를 set 해주는 방법으로 데이터 전달.

- 세그웨이로 구현된 화면 전환 방법에서 데이터 전달

  prepare method를 override 하여 method안에서 전환하려는 view controller instance를 가져오고 property에 접근하여 데이터를 전달
  
- Delegate 패턴을 이용하여 이전 화면으로 데이터 전달

  
## 에셋 카탈로그에 이미지 리소스 추가

  1x2x3x의 이미지를 추가하는이유는 다양한 해상도에서 깨지지않는 리소스를 제공하기 위함이다.
