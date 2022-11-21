---
layout: 가상화(Virtualization)와 하이퍼바이저(Hypervisor) 
title:  "가상화(Virtualization)와 하이퍼바이저(Hypervisor)"
date:   2022-11-18 23:57 +0900
categories: darktemi update
---

<img width ="350" src = "https://img.alicdn.com/tfs/TB1IZBKDVYqK1RjSZLeXXbXppXa-1152-1213.png_.webp"><br><br><br>


---
# 가상화(Virtualization)와 하이퍼바이저(Hypervisor) 개념 정리

---
## 가상화란? 

물리 하드웨어 시스템에서 여러 시뮬레이션 환경이나 전용 리소스를 생성하게 해주는 기술

---
#### '가상화' 한다는 말의 의미 

- 하나의 물리머신상에서 복수의 시스템을 동시운영한다 

- 또다른 cpu,메모리,하드디스크를 논리적으로 생성한다 

- 물리서버 단위가 아닌 애플리케이션(Application)단위로 전환한다

![가상화1][가상화1]

[가상화1]: https://user-images.githubusercontent.com/115456181/202860414-a9bdccd8-71e7-497d-80e3-a618e17ba4d8.jpg

그림에서 보이다시피 **가상화 이전에는**어떤 서비스를 운영하기 위해서는
Application들이 os단위에 올라가 있고,<br>
그 os들은 CPU,메모리,디스크 같은 하드웨어(x86아키텍쳐) 위에 있는 환경으로 구성됨<br>
그래서 간단하게 말하면 하나의 컴퓨터에서는 하나의 App만 운영할 수 있음 


그런데 **가상화 이후에는** 어떤 서비스를 운영하기 위한 Application들이 바로 os위에 올라가는게 아니라 가상머신 위에 올라간다.<br>
그 가상머신에는 이제 여러가지 컴퓨터들을 띄울 수 있는 환경이 됨
그래서 하나의 컴퓨터에서 여러가지 환경을 가진 App을 운영할 수 있음 


---  
**그럼 어떻게 다른 OS들을 사용할 수 있을까?**

**OS마다 '커널'이 존재한다** 

이 커널은 리소스를 관리하고, 명령어 해석하는 역할 

그런데 OS마다 명령어를 해석하는 규칙도 다르다

![가상화2][가상화2]

[가상화2]: https://user-images.githubusercontent.com/115456181/202860415-a384627d-5794-44b4-9613-62d01cc83357.jpg

출처 <https://blog.naver.com/alice_k106/220218878967>

예를 들어 하드웨어는 덧셈연산을 하고 싶다.<br>
하지만 나라마다 언어가 다르듯이 윈도우OS는 'Add' 라고, 레드헷OS은 'ADD'라고, 맥OS는 'add'라고 말한다.

다 같은 의미이긴하지만 게스트OS마다 말하는 다르기 때문에 처리할 명령을 이해할 수 없다. 

그럼 어떻게 이런 명령어들을 이해해서 각각 OS를 구동하게 할까?<br>
<u>하이퍼바이저가 각 OS마다 말하는 명령을 하드웨어가 이해할 수 있게 하나의 명령어로 번역해준다.</u>

![가상화3][가상화3]

[가상화3]: https://user-images.githubusercontent.com/115456181/202860416-c3b757b5-48e8-464f-b9ed-32c193126c14.jpg

출처 <https://blog.naver.com/alice_k106/220218878967>

//이렇게 구동되는 하이퍼바이저 가상화방식 : 전가상화 

---
## 하이버파이저 

이런 가상화를 구현하기 위해 기반이 되는 기술 
호스트에서 여러가상의 GuestOS를 실행하기 위한 플랫폼(?) 이라고 볼 수 있다. 

<u>VM과 하드웨어간의 IO명령을 처리하는 인터페이스</u> 

각종 Application을 실행하기 위한 컴퓨팅 가상환경 (VM: Virtual Machine)이 동작할 수 있도록 해줌 

그래서 위에서처럼 각 VM 위에 올라간 <u>OS들의 명령을 하드웨어가 이해할 수 있게 하나의 명령어로 번역</u>해주고, 

반대로 <u>각 OS들에게 하드웨어의 리소스들을 나눠주면서 조율</u>해준다 

---
### +하이퍼바이저 유형 

![가상화4][가상화4]

[가상화4]: https://user-images.githubusercontent.com/115456181/202860418-1f93b274-4b53-4b27-903c-12c92ab7ea15.jpg

#### TYPE1  

native 혹은 bare-metal(베어메탈)이라 불리는 가상화 방식 (어떤 소프트웨어도 담겨져 있지 않은 하드웨어, 빈깡통) <u>HOST OS가 없음 (ex : Vmware)</u><br>
하이퍼바이저가 os에 종속되지 않고 하드웨어에 직접 설치되는 구조 -> 위에서 말한 내용<br> 
<u>하이퍼바이저가 다수의 VM을 관리하는 형태</u><br>
VM에 설치된 게스트OS들은 하드웨어 바로 위에 구동됨<br> 
<u>TYPE2보다는 성능향상되지만, 여러 하드웨어 드라이버를 세팅해야됨</u><Br>

---
### 전가상화 VS 반가상화 

#### (1) 전가상화 

![가상화5][가상화5]

[가상화5]: https://user-images.githubusercontent.com/115456181/202860420-cf958e16-251c-4830-85a8-c779f515b943.jpg

출처 : <http://pyrasis.com/book/TheArtOfAmazonWebServices/Chapter01/01>


하드웨어 전체를 가상화하는 방식 
OS의 제약없이 사용할 수 있음 
Guest는 자신이 가상화 위에 동작하고 있다는 것을 인식할 수 없음  
Guest OS에서 물리자원을 직접 접근불가 

##### **즉, 하이퍼바이저의 역할(전가상화)** 

• 각기 다른 OS들의 명령방식을 하드웨어가 이해할 수 있도록 '번역'하고 전달해줌 
• 하드웨어의 리소스들(명령을 해석한 결과)을 OS들에게 제공 

---
#### (2) 반가상화

![가상화6][가상화6]

[가상화6]: https://user-images.githubusercontent.com/115456181/202860421-b7745d08-a511-4558-9570-23010dcddc2f.jpg

출처 : <http://pyrasis.com/book/TheArtOfAmazonWebServices/Chapter01/01>

- 게스트OS가 자신이 가상머신 위에 동작하고 있다는걸 인식할 수 있음 
- OS의 제약이 있다 
- Guest OS에서 물리자원을 직접 접근가능 

위에서 말한 전가상화에서 하이퍼바이저의 '번역'의 역할을 가상머신에서 처리함 
그래서 하이퍼바이저는 각 OS에게 리소스를 전달해주기만 하면 된다. 


##### **즉, 하이퍼바이저의 역할(반가상화)**

- 각기 다른 게스트 OS들의 명령방식을 하드웨어가 이해할 수 있도록 '번역'하고 전달해줌 --> 가상머신 역할 
- 하드웨어의 리소스들(명령을 해석한 결과)을 VM위에 올라간 각 게스트OS들에게 제공 

Guest os의 명령어를 하나의 하이퍼바이저가 해석하는게 아니라 
<u>명령어을 던지는 사람이 직접 번역(Hyper-Call)을 해서 하이퍼바이저에게 요청을 보냄</u>

이때 더해라! 라고 하는 부분이 **Hyper-Call**

그런데 각 os의 커널 이걸 직접 못해서 OS커널을 직접 수정해야함(확성기를 만들어줘야함) 
그래서 리눅스같은 오픈소스os를 사용해서 반가상화 방식 이용 

![가상화7][가상화7]

[가상화7]: https://user-images.githubusercontent.com/115456181/202860422-2027d451-801f-4f41-b1e9-69f1e4ac98a4.jpg

출처 : <https://itholic.github.io/hypervisor>

---
#### TYPE2

일반적으로 사용하는 가상화방식(호스트형가상화) 
<u>HOST OS위에 하이퍼바이저가 실행되고, 그 위에 Guest OS를 올리는 방식 (ex: Xen방식)</u>
<u>기존 컴퓨터환경에서 하이버파이저를 활용해서 설치용이, 구성편리, TYPE1보다 성능이 낮음</u> 

예를 들어, 윈도우에서 리눅스환경을 쓰고 싶을때 Virtual box설치하는거에 비유하면 
윈도우가 설치된 환겨에서(host OS) 
virtual box 설치하고(하이퍼바이저), 
실행시킴(가상머신) 
그 안에서 리눅스OS사용(게스트OS) 

---

출처 <https://augustines.tistory.com/142>
<https://itholic.github.io/hypervisor>
<https://blog.naver.com/alice_k106/220218878967>
<http://blog.naver.com/PostView.nhn?blogId=shakey7&logNo=221599135601&parentCategoryNo=&categoryNo=22&viewDate=&isShowPopularPosts=true&from=search>
<http://blog.naver.com/PostView.nhn?blogId=shakey7&logNo=221472286783&from=search&redirect=Log&widgetTypeCall=true&directAccess=false>
