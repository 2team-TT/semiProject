# 📕프로젝트 소개
***
**커뮤니티, 쇼핑, 자취정보를 한번에 해결할 수 있는 원스톱 플랫폼으로 1인 가구와 자취하는 인구가 증가하는 현대사회에서 관련된 정보를 찾기 위해 여러 사이트를 들락날락하는 번거로움을 없애고 자취생들을 하나로 통합할 수 있는 목적으로 기획되었습니다.**

# 🕑개발기간
***
* **2024-07-09 ~ 2024-07-15 : 주제, 프로젝트명, 팀장 선정**
* **2024-07-15 ~ 2024-07-22 : 기획의도, 유사사이트 분석, 클라이언트 요구사항분석, UseCase Diagram 작성**
* **2024-07-22 ~ 2024-08-05 : 사이트맵 만들기, 페이지 테마색 정하기, 메인 페이지 화면설계**
* **2024-08-05 ~ 2024-08-12 :DB 테이블 설계, 샘플데이터, ERD 작성**
* **2024-08-12 ~ 2024-08-16 :화면 JSP 생성, 기능구현, JDBC 오라클연동 후 CRUD 최소 1개**
* **2024-08-12 ~ 2024-09-06 : 프로젝트 구현 및 디버깅**
* **2024-09-07 ~ 2024-09-09 : 베타 테스트, 최종 발표자료 준비**

# 🌱구성원 및 역할
***
조장 : 김지영
* **공용 메뉴바**
* **메인 페이지**
* **검색 기능 (검색 영역, 검색 페이지, 인기 검색어 리스트, 로그인 시 최근검색 기록)**
* **커뮤니티 페이지 (게시글 작성/수정/삭제, 게시글 조회 및 상세 페이지, 텍스터 에디터 )**
* **회원가입 페이지(카카오 우편번호 api)**
* **가계부(분기별로 조회, 한달 기준으로 상세조회, 수입/지출 데이터 추가)**
* **채팅**

조원 : 김종열
* **마이 페이지**
* - **기본정보(내 정보, 알림 기능 설정)**
  - **게시글 정보(내 게시글, 내 댓글, 좋아요 한 글 선택/삭제)**
  - **찜한 상품/ 최근 본 상픔(선택/삭제)**
  - **고객센터(문의 내역 확인)**
* **상품 페이지**
* - **전체 상품 베스트**
  - **일반 상품 베스트**
  - **리퍼 상품 베스트**
  - **찜하기**
* **반응형 웹 구현**



# ⚙개발환경
***
* **OS : Windows10**
* **Developer Tools : Eclipse / VS Code / SqlDeveloper**
* **Server : Apach Tomcat 9.0**
* **DBMS : Oracle**
* **Management : Git, GitHub**
* **Front-end : HTML5 / CSS3 / JavaScript / jQuery / AJAX / JSON**
* **BackEnd : Java 11, JSP & Servlet**

# ✔설계 
***
ERD Cloud : [ERD Cloud](https://www.erdcloud.com/d/oNPhvb358vH8eqLWH)

# 📽프로젝트 구현
***
**조장 : 김지영**
* **메인 페이지**

  
![Document - Chrome 2024-09-10 12-05-13](https://github.com/user-attachments/assets/1f3052ae-f276-4bce-b233-2a1c9fff477c)


* **회원가입**

  
![Document - Chrome 2024-09-10 12-05-13](https://github.com/user-attachments/assets/03232c4a-f106-4322-b40c-f32bf1f2f13d)

* **아이디/비밀번호 찾기**
  
![Document - Chrome 2024-09-10 12-15-34](https://github.com/user-attachments/assets/17dcfee1-97ff-4420-9d1f-c6e9ed5e6c78)



* **검색**
  
![Document - Chrome 2024-09-10 12-13-09](https://github.com/user-attachments/assets/e9291248-48bf-4e61-a460-9acefc274b77)

* **게시글**

  
![Document - Chrome 2024-09-10 12-28-34](https://github.com/user-attachments/assets/3a738d1c-324e-4b7d-b17d-bed661c79d17)

* **가계부**

  
![Document - Chrome 2024-09-10 12-35-43](https://github.com/user-attachments/assets/444a3b63-8b4c-4a22-a046-3eec923e3c6f)

* **채팅**

  
![Document - Chrome 2024-09-10 12-39-46](https://github.com/user-attachments/assets/d8951667-6528-40fc-be04-e2faaa56fd7c)


![Document - Chrome 2024-09-10 12-40-39](https://github.com/user-attachments/assets/61671492-60dd-4986-b1cc-0e5ae74927c0)



**조원 : 김종열**
* **마이 페이지**
- AJAX 활용한 페이징 처리<br/>

  <img src="https://github.com/2team-TT/semiProject/blob/main/assets/gifs/AJAX%EB%A5%BC%EC%9D%B4%EC%9A%A9%ED%95%9C%ED%8E%98%EC%9D%B4%EC%A7%95%EB%B0%94(%EC%9E%90%EB%A7%89%2C50%25).gif">

<br/><br/>
- 클릭시 해당 글 가기 <br/>

  <img src="https://github.com/2team-TT/semiProject/blob/main/assets/gifs/%ED%81%B4%EB%A6%AD%EC%8B%9C%20%ED%95%B4%EB%8B%B9%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EA%B0%80%EA%B8%B0(50%25).gif" alt="클릭시 해당 글 가기">

<br/><br/>
- 체크된 글 단일, 다중 삭제 <br/>

  <img src="https://github.com/2team-TT/semiProject/blob/main/assets/gifs/%EC%B2%B4%ED%81%AC%EB%90%9C%20%EA%B8%80%20%EB%8B%A8%EC%9D%BC%2C%EB%8B%A4%EC%A4%91%20%EC%82%AD%EC%A0%9C(50%25).gif" alt="체크된 글 단일, 다중 삭제">

<br/><br/>
- 찜하기 게시글 가기&취소하기 <br/>

  <img src="https://github.com/2team-TT/semiProject/blob/main/assets/gifs/%EC%B0%9C%ED%95%98%EA%B8%B0%20%EA%B2%8C%EC%8B%9C%EA%B8%80%EA%B0%80%EA%B8%B0%26%EC%B7%A8%EC%86%8C(50%25).gif" alt="찜하기 게시글 가기&취소하기">
  
<br/><br/>

- 알림 체크 저장 <br/>
  <img src="https://github.com/2team-TT/semiProject/blob/main/assets/gifs/%EC%95%8C%EB%A6%BC%20%EC%B2%B4%ED%81%AC%20%EC%A0%80%EC%9E%A5(50%25).gif" alt="알림 체크 저장">

<br/><br/>

- 고객 센터 <br/>
  <img src="https://github.com/2team-TT/semiProject/blob/main/assets/gifs/%EC%95%84%EC%BD%94%EB%94%94%EC%96%B8%EB%B0%A9%EC%8B%9D%20%EA%B3%A0%EA%B0%9D%EC%84%BC%ED%84%B0(50%25).gif" alt="고객 센터">

<br/><br/>

**상품 페이지**

- 비로그인 찜하기 <br/>

  <img src="https://github.com/2team-TT/semiProject/blob/main/assets/gifs/%EB%B9%84%EB%A1%9C%EA%B7%B8%EC%9D%B8%EC%B0%9C%ED%95%98%EA%B8%B0(50%25).gif" alt="비로그인 찜하기">

<br/><br/>

- 로그인 찜하기 <br/>

  <img src="https://github.com/2team-TT/semiProject/blob/main/assets/gifs/%EB%A1%9C%EA%B7%B8%EC%9D%B8%EC%B0%9C%ED%95%98%EA%B8%B0(50%25).gif" alt="로그인 찜하기">

<br/><br/>

- 더보기 </br>
  <img src="https://github.com/2team-TT/semiProject/blob/main/assets/gifs/%EB%8D%94%EB%B3%B4%EA%B8%B0(%EC%9E%90%EB%A7%89%EC%88%98%EC%A0%95%2C50%25).gif" alt="더보기">

<br/><br/>

**반응형 웹 구현**
- 반응형 웹 </br>
  <img src="https://github.com/2team-TT/semiProject/blob/main/assets/gifs/%EB%B0%98%EC%9D%91%ED%98%95%EC%9B%B9%ED%95%A9%EB%B3%B8(%ED%81%AC%EA%B8%B050%25).gif" alt="반응형웹">

<br/><br/>

# 📚최종보고서

최종 보고서 : [세미 최종보고서.pdf](https://github.com/user-attachments/files/16939530/1.pdf)







  
