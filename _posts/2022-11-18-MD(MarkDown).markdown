---
layout: MD(MarkDown)란 무엇인가?
title:  "MD(MarkDown)란 무엇인가?"
date:   2022-11-18 23:58 +0900
categories: darktemi update
---

<br><br>
<img src = "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Markdown-mark.svg/300px-Markdown-mark.svg.png"><br><br>


# MD(MarkDown)란 무엇인가?<br>

---
## **마크다운(MarkDown)** 이란<Br>

**README.md**와 같은 ***.md**라는 파일확장자를 가지며, 마크다운 문법으로 작성된 파일을 의미합니다.<Br>
사용법이 매우 쉽고, 빠르게 문서를 정리할 수 있습니다.<br>
물론 <u>모든 HTML 마크업을 대신할 수 없기 때문에</u> 지나친 의존보다는 쉽고 빠르게 작성하는 용도로 사용하게 됩니다.<br>
마크다운과 비슷한 형태로 문법이 좀 더 복잡하지만 확장자가 `.adoc`인 `AsciiDoc` 문법도 있습니다.<br>
좀 더 다양한 형태의 문서를 만들 수 있지만, 문법이 좀 더 복잡하고 지원 플랫폼이 적습니다.<br><br><br>

---
## **마크다운(MarkDown)**에 대해서<br><br>

### **● 마크다운의 장점**<br>


**문법이 쉽다.**<br>
**관리가 쉽다.**<br>
**지원 가능한 플랫폼과 프로그램이 다양하다.**<br><br>

### **● 마크다운의 단점**<br>

**표준이 없어 사용자마다 문법이 상이할 수 있다.**<Br>
**모든 HTML 마크업을 대신하지 못한다.**<br><br>

---
## 마크다운의 사용<Br>

메모장부터 전용 에디터까지 많은 곳에서 활용할 수 있습니다.<br>
문법이 쉽기 때문에 꼭 전용 에디터를 사용할 필요는 없습니다만,<br>
<u>마크다운 코드의 하이라이트 효과를 원한다면 전용 에디터를 사용 해야만 합니다.</u><Br>
혹은 마크다운 문법을 지원하는 모든 곳에서 사용할 수 있으며,<br>
일반 블로그나 워드프레스 외 **Slack**이나 **Trello** 같은 서비스에서 메세지를 작성하듯 사용할 수도 있습니다.<br>
화면에 표현되는 스타일**(CSS)**은 설정에 따라 달라집니다.<br>
HTML과 마찬가지로 눈에 보이는 스타일은 무시하고 각 문법의 의미로 사용하세요.<br><br>

---
# 마크다운 문법(syntax)<br><br>

## 제목(Header)<br>

'h1' 부터 'h6' 태그 까지 제목을 표현할 수 있습니다.<br><br><br>

![제목1][title]<br><br>

# 제목 1
## 제목 2
### 제목 3
#### 제목 4
##### 제목 5
###### 제목 6

---
## 강조(Emphasis)<br>

각각 'em', 'strong', 'del' 태그로 변환됩니다.

밑줄을 입력하고 싶다면 'u'~~'/u' 태그를 사용하세요.<br><br><br>
![강조][Emphasis]<br><br>

이텔릭체는 *별표(asterisks)* 혹은 *언더바(underscore)*를 사용하세요.<br>
두껍게는 **별표(asterisks)** 혹은 **언더바(underscore)**를 사용하세요.<br>
**_이텔릭체와 두껍게_**를 같이 사용할 수 있습니다.<br>
취소선은 ~~물결표시(tilde)~~를 사용하세요.<br>
<U>밑줄</u>은 'u'~~'/u' 태그를 사용하세요.<br>

---
## 목록(List)<br>

'ol', 'ul' 목록 태그로 변환됩니다.<br><br><br>

![목록][List]<br><Br>

1. 순서가 필요한 목록 1
1. 순서가 필요한 목록 2
    - 순서가 필요하지 않은 목록 1
    - 순서가 필요하지 않은 목록 2
1. 순서가 필요한 목록 3
    1. 순서가 필요한 목록(서브 1)
    1. 순서가 필요한 목록(서브 2)
1. 순서가 필요한 목록 4

- 순서가 필요하지 않은 목록에 사용 가능한 기호
    - 대쉬 (Hyphen)
    * 별표 (Asterisks)
    + 더하기 (Plus Sign)

---
## 링크(Link)<br>

'a' 태그로 변환됩니다.<br><br><br>
![링크][Link]<br><Br>

[Google][google]<br>
[Naver][naver]<br>
[상대적 참고][상대적 참고]<br>
[Dribbble][dribbble link]<br>
[Github][1]<br><br>

문서 안에서 [참조 링크]를 그대로 사용할 수도 있습니다.

다음과 같이 문서 내 일반 URL이나 꺾쇠 괄호(< >, Angle Brackets)안의 URL은 자동으로 링크를 사용합니다.

구글 홈페이지: <https://google.com>
네이버 홈페이지: <https://naver.com> "네이버로 이동합니다."

---

## 이미지(Image)<br>

'img'로 변환됩니다.<br>
링크과 비슷하지만 앞에 !가 붙습니다.<br><br><br>

![이미지][이미지]<br>

![2][사진1]

![3][사진2]

---
## 이미지에 링크<br>

마크다운 이미지 코드를 링크 코드로 묶어 줍니다.<br><br><br>

![이미지에 링크][이미지에 링크]

[![github][github]](https:/github.com)

---
## 수평선(Horizontal Rule)<br>

각 기호를 3개 이상 입력하세요.<br><br><br>

![수평선][수평선]<br><br><Br>



출처 : <[출처]>









[title]: https://user-images.githubusercontent.com/115456181/202827126-091a46ef-18f4-4676-8438-7985db27523c.jpg

[Emphasis]: https://user-images.githubusercontent.com/115456181/202827107-15d4b82c-c05c-42d6-a311-f034871c8b31.jpg
[List]: https://user-images.githubusercontent.com/115456181/202827110-99229150-55ab-40bb-a7c9-88c3b7f9c457.jpg
[Link]: https://user-images.githubusercontent.com/115456181/202827109-957ddd90-cb5b-4300-aa97-1ec4365ed550.jpg
[google]: https://google.com
[naver]: https://naver.com
[상대적 참고]: ../users/login
[Dribbble link]: https://dribbble.com
[1]: https://github.com
[이미지]: https://user-images.githubusercontent.com/115456181/202827119-5ee6b3c5-d77f-477f-9847-a77d3194ec42.jpg
[사진1]: https://user-images.githubusercontent.com/115456181/202846393-f6dee840-da9a-4167-8edc-4dbffe607a2c.jpg
[사진2]: https://user-images.githubusercontent.com/115456181/202846395-b74e32d1-90d5-40e3-b591-df1abde07a00.jpg
[이미지에 링크]: https://user-images.githubusercontent.com/115456181/202827121-43313be1-d9b4-4cc9-88a3-7d66ed4cacdf.jpg
[수평선]: https://user-images.githubusercontent.com/115456181/202827113-8dd34a3f-4def-47cd-8323-c7c9d38c84d1.jpg
[출처]: ttps://heropy.blog/2017/09/30/markdown
[def]: https://cdn-icons-png.flaticon.com/512/25/25231.png