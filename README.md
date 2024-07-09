![나만의냉장고 인덱스페이지](https://github.com/WonjongYeon/BackEnd/assets/145513973/acb0cd54-2d22-4d1f-a476-e30b41e4efb7)


## 🖼 Overview

> ❓ 냉장고에 있는 식재료들 유통기한이 얼마 안남았는데, 가지고 있는 재료로 뭘 만들 수 있을까?

>💡 내가 지금 갖고 있는 재료로 **요리**를 만들어보자! 


### [My Fridge]

나만의 냉장고.  TV프로그램 **냉장고를** **부탁해**를 모티브로 해서 만든 레시피 사이트


### [개발환경]
- Program Language : `Java`, `JSP`, `Ajax`,`JQuery`,`HTML`, `JS`, `CSS`
- DB: `ORACLE`
- Server: `Apache Tomcat`, `My Batis`
- Development Tool: `Spring`, `Eclipse`, `Bootstrap`
- Collaboration: `GitHub`, `Discord`

  
### [ERD (https://www.erdcloud.com/d/nrxEjGPZRkzZrpYoC)]
![나만의냉장고ERD](https://github.com/WonjongYeon/BackEnd/assets/145513973/a55950e1-6f2a-4c9b-a4ee-7c1f852a4159)

</br>
</br>
### 시스템 흐름도
![시스템흐름도](https://github.com/WonjongYeon/BackEnd/assets/145513973/7a856e61-e8a3-45a3-ba76-ad1471ff217d)


### 💻 주요 기능
</br>
🔑  **아이디/비밀번호찾기**
![아이디비번찾기](https://github.com/WonjongYeon/BackEnd/assets/145513973/8bf844ea-31f3-489e-b53b-111b67a660e8)
</br>
</br>

🔍 **레시피 랭킹/조회**
![레시피랭킹조회](https://github.com/WonjongYeon/BackEnd/assets/145513973/f39c1bf2-ff55-4853-9150-f6779dd2383e)
</br>
</br>

🔍 **레시피 상세보기(기본정보/재료/조리과정/댓글)**
![레시피상세보기](https://github.com/WonjongYeon/BackEnd/assets/145513973/85f86cdf-0b59-458e-8fcc-1fb3286faf99)
</br>
</br>

**나만의 냉장고**
![나만의냉장고](https://github.com/WonjongYeon/BackEnd/assets/145513973/a9885b7a-609a-4b30-a172-a120e6654579)
</br>
</br>

**레시피 등록**
![레시피등록](https://github.com/WonjongYeon/BackEnd/assets/145513973/5b8d8965-23e8-4b90-8bf8-b449e2c3f8b3)
</br>
</br>

📌  **Q&A게시판**
![QNA게시판](https://github.com/WonjongYeon/BackEnd/assets/145513973/ef640279-497a-48b6-83fe-cbf73374f3fd)
</br>
</br>

👤  **마이페이지(회원정보 수정, 나의 문의내역)**
![마이페이지 회원정보수정 문의내역](https://github.com/WonjongYeon/BackEnd/assets/145513973/7bc38ee5-6e9a-4a90-8fee-1c22260ccd43)
</br>
</br>

👤  **마이페이지(레시피)**
![마이페이지 레시피](https://github.com/WonjongYeon/BackEnd/assets/145513973/be36e86c-0380-443d-b10c-8cc0c4304651)
</br>
</br>

👤  **마이페이지(회원탈퇴)**
![마이페이지 회원탈퇴](https://github.com/WonjongYeon/BackEnd/assets/145513973/3bfe48f0-13aa-4eb0-acc4-ccbf65791919)
</br>
</br>

### 🔫 Trouble Shooting
🍪 쿠키
| 문제 상황 | JWT토큰을 클라이언트에 쿠키로 설정(Set-Cookie)할 수 없음 |
| --- | --- |
| 원인 | HTTP 전송을 하면 쿠키의 Secure 옵션을 false, SameSite 옵션을 none 이 아닌 strict나 Lax로 설정해야 하는데, 이 경우 다른 도메인간 쿠키를 전송해야 하는 상황에서 에러 발생 |
| 해결 | 쿠키의 Secure 옵션을 true, SameSite 옵션을 none 으로 설정하고, HTTPS 전송 방식을 도입함으로써 쿠키를 정상 전송 |

📈 N + 1 문제 대응 & nGrinder로 부하 테스트
| 문제 상황 | 게시글을 읽어서 1 : N 매핑된 다른 엔티티를 참조할 때 N + 1 문제 발생 |
| --- | --- |
| 원인 | FE 리턴용 DTO를 만들 때 엔티티 내부의 다른 엔티티를 참조할 때마가 추가 쿼리가 발생 |
| 해결 | DTO에 필요한 정보를 JPQL JOIN 쿼리로 한 번에 가져와서 추가적인 엔티티 참조를 차단 |
- **성능 테스트 결과**
    
     **nGrinder로 리스트 획득 API를 테스트 했을 때 6 ~ 18 TPS의 성능 향상을 확인함.**
    
    (TPS: Transaction Per Second, 초당 트랜잭션 처리량)
    
    게시물 리스트 읽기 API  52.7 TPS   -> **59.0 TPS (+6.3)**
    
    게시물 1개 읽기 API       49.5 TPS   -> **67.1 TPS (+17.6)**
    
    피드 구성 API                43.3 TPS   -> **56.7 TPS (+13.4)**
    
    댓글 리스트 읽기 API     60.8 TPS   -> **70 TPS (+9.2)**
    
    대댓글 리스트 읽기 API  51.6 TPS   -> **64.7 TPS (+13.1)**
    
⚡ 리소스 부족 대응

| 문제 상황 | EC2 서버(t2.micro)에 쓰레드 부족 에러가 발생하면서 서버가 다운됨 |
| --- | --- |
| 원인 | 스케줄링용 스레드는 2개를 만들었는데, 스프링부트 앱에서 4개의 스케쥴러가 동작 |
| 해결 | 소스코드 내 스레드를 다수 사용하는 메소드를 조절. 스레드 개수를 4개에서 2개로 줄임으로써 개수를 맞춰줌. |

⚠️ 카카오 소셜 로그인 
| 문제 상황 | 카카오 로그인한 유저를 이메일로 식별 불가능 |
| --- | --- |
| 원인 | 카카오 서버에서 사용자의 이메일을 선택적으로 받을 수 있는 상황 |
| 해결 | Unique Key에 null이 허용됨을 확인한 후 카카오 로그인 유저의 email은 null로 처리한 다음 사용자는kakaoUserId로 식별 |

| 문제 상황 | 카카오 로그인 유저에 대해 401 UnAuthorized  발생 |
| --- | --- |
| 원인 | 카카오 로그인 유저에 비밀번호를 설정하지않아 생성된 JWT 토큰이 유효하지 않았음 |
| 해결 | 임의의 비밀번호를 사용자에게 설정해서 유효한 JWT 토큰 생성 |


## 👋 Team

### 📜 API doc & Conventions
[API doc](https://dev-traces.notion.site/API-666199dae3824b40bf38279a3aefe35f?pvs=4)<br>
[Code](https://www.notion.so/Code-2300a47af82f41d280d5a0b4957962ef)<br>
[Commit Convention](https://www.notion.so/Commit-Convention-48048f6c01ec4fecb08ad09fb4c8274f)<br>
[Issue](https://www.notion.so/Issue-dff43daa80d14af89880593a3eb39851)<br>
[PR](https://www.notion.so/PR-9bfa3b0d54c3410ebdbaa9ef0df292fb)<br>
[Git Branch](https://www.notion.so/Git-Branch-6b8d978afc424d678949954404896de3)
