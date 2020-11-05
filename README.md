# Coordinator

<br>

[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fdev-Lena%2FCoordinator&count_bg=%238588A2&title_bg=%237D3CCF&icon=&icon_color=%23E7E7E7&title=hits%E2%9C%A8&edge_flat=false)](https://hits.seeyoufarm.com)


👉🏻 [간단한 예제로 살펴보는 iOS Design/Architecture Pattern: Coordinator - Basic](https://lena-chamna.netlify.app/post/ios_design_pattern_coordinator_basic/)  


👉🏻 [간단한 예제로 살펴보는 iOS Design/Architecture Pattern: Coordinator - Advanced](https://lena-chamna.netlify.app/post/ios_design_pattern_coordinator_advanced/)  


## Coordinator란?

*Soroush Khanlou*가 NSSpain conference 2015에서 iOS 커뮤니티에 소개한 패턴으로 [Soroush Khanlou](https://khanlou.com/2015/10/coordinators-redux/) 의 글에 보면 코디네이터(Coordinator)를 이렇게 소개하고 있습니다.<br>

> So what is a coordinator? ***A coordinator is an object that bosses one or more view controllers around.*** Taking all of the driving logic out of your view controllers, and moving that stuff one layer up is gonna make your life a lot more awesome.

> 코디네이터란? ***코디네이터는 하나 이상의 뷰 컨트롤러에게 지시를 내리는 객체입니다***.
> ... 이하 생략<br>



여기서 말하는 지시는 화면 전환에 대한 지시를 말합니다. **Coordinator 패턴에서는 현재 View Controller에서 다음 View Controller로 이동할 때 직접 push / present 등의 화면 전환을 하는 대신 모든 화면 내비게이션을 코디네이터가 관리합니다.**  즉, View Controller에서 Navigation의 책임을 다른 클래스로 분리합니다. 따라서 View Controller들이 서로 분리될 수 있고 쉽게 재사용될 수 있습니다. <br>

### Coordinator 특징<br>

- coordinator 별로 하나 또는 그 이상의 View Controller를 보유합니다. 
- 각 coordinator는 일반적으로 “**start**”라고 불리는 메서드를 사용하여 View Controller를 표시합니다.
- 각 View Controller에는 coordinator에 대한 **delegate** reference가 있습니다.
- 각 coordinator는 **child** coordinators 배열을 가지고 있습니다.
- 각 child coordinator는 **parent** coordinator에 대한 delegate reference가 있습니다.

<br>더 자세한 내용은 [블로그](https://lena-chamna.netlify.app/post/ios_design_pattern_coordinator_basic/)에 적어놨습니다.

<br><br>

### 예시 화면

![alt text](https://github.com/dev-Lena/Coordinator/blob/main/Media/coordinator_basic.gif)

* 이 예제는 [How to use the coordinator pattern in iOS apps](https://www.hackingwithswift.com/articles/71/how-to-use-the-coordinator-pattern-in-ios-apps) 와 [Advanced coordinators in iOS](https://www.hackingwithswift.com/articles/175/advanced-coordinator-pattern-tutorial-ios)를 참고하여 만들었습니다.
* ViewController의 UI는 Main.Storyboard에 구현했으며 storyboardID를 사용합니다.
* Navigation Controller을 기반으로 화면을 전환합니다.  
<br>
<u><span style="color:orange">하나의 Coordinator를 사용하는 방법은 Basic을, 여러 개의 Coordinator를 사용하는 방법은 Advanced를 확인해주세요.</span></u>

<br><br>

### Coordinator - Basic

<img src="https://user-images.githubusercontent.com/52783516/98215889-b2772500-1f8b-11eb-82be-9ffafb32d36e.png" alt="image" style="zoom:67%;" />

* 구현 과정은 [PR](https://github.com/dev-Lena/Coordinator/pull/2) 에 커밋으로 남겨놓았습니다.
* Basic에서는 childCoordinators를 사용하지 않고 하나의 Coordinator를 사용합니다.



👉🏻 [간단한 예제로 살펴보는 iOS Design/Architecture Pattern: Coordinator - Basic](https://lena-chamna.netlify.app/post/ios_design_pattern_coordinator_basic/)

<br>

### Coordinator - Advanced

<img src="https://user-images.githubusercontent.com/52783516/98220027-18b27680-1f91-11eb-87aa-7fb3b8e12448.png" alt="image" style="zoom:67%;" />

* 구현 과정은 [PR](https://github.com/dev-Lena/Coordinator/pull/7) 에 커밋으로 남겨놓았습니다.

* Advanced에서는 두 개이상의 Coordinator를 사용하는 방법을 간단하게 소개합니다. Coordinator 객체 간 child와 parent 관계 정리하는 방법이 소개되어 있습니다.

  

👉🏻 [간단한 예제로 살펴보는 iOS Design/Architecture Pattern: Coordinator - Advanced](https://lena-chamna.netlify.app/post/ios_design_pattern_coordinator_advanced/)
