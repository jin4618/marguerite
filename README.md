## :pushpin: marguerite
>쇼핑몰 웹 사이트 


</br>

### 1.제작기간&참여 인원
* 2023.02.13. ~ 2023.03.04.   
* 팀프로젝트(3인)

</br>

### 2.사용기술
* JAVA11   
* ORACLE   
* JAVASCRIPT   
* AJAX

</br>

### 3.ERD
<img src="img/ERD.png" width="700" height="350">

</br>

### 4.핵심기능
>Admin  ( 회원 목록 조회, 주문 목록 조회 )
- 회원 목록을 조회할 수 있다.
- 주문 목록을 조회할 수 있다.
>Client ( 회원가입, 로그인, 회원정보 수정 / 탈퇴, 상품 검색, 장바구니, 상품 결제 및 주문 확인 )   
1. 비회원   
- 상품 검색 및 상품 조회를 할 수 있다.
2. 회원   
- 상품 검색 및 상품 조회를 할 수 있다.
- 고민하고 있는 상품을 장바구니에 담아 저장할 수 있다.
- 상품을 바로 결제하거나 장바구니에 담은 상품을 결제를 할 수 있다.
- 주문한 정보를 조회할 수 있다.
- 회원 정보를 수정하거나 탈퇴할 수 있다.


</br>

<details>
<summary>상세설명 펼치기</summary>
</br>

#### 4-1. 전체흐름

<img src="img/프로젝트구조.png" width="600" height="300">
</br>
</br>

<!--
#### 4-2. Connection ✔️ [코드확인](https://github.com/jin4618/cafesmartorder/blob/4ce1b1a21be77d43740bc542db8b9ff976e21174/src/connection/Connection1.java#L3-L23)
-	JDBC를 활용한 OracleDB 연결

</br>

#### 4-3. 메인 화면

<img src="img/Main.png" width="600" height="300">
</br>

-	오늘의 인기메뉴</br>
 => 결제할 때마다 주문 내역을 ‘total’ 테이블에 메뉴와 수량을 저장하여 가장 많이 팔린 메뉴 출력 ✔️ [코드확인](https://github.com/jin4618/cafesmartorder/blob/671901a5c604aab8d1ec731f939ebe9a8a34c87f/src/total/TotalDAO.java#L41-L64)

-	회원생성 버튼</br>
-	메뉴 버튼</br>
-	결제 버튼</br>
-	취소 버튼 (추가한 메뉴들 초기화)</br>
-	회원 탈퇴 버튼</br>

</br>

#### 4-4. 회원가입 및 탈퇴 ✔️ [코드확인](https://github.com/jin4618/cafesmartorder/blob/77eb38e12f8fdd77cdf12e8586e39f07396a9116/src/member/MemberDAO.java#L20-L52)

<img src="img/Member.png" width="600" height="300">
</br>

- 가입 번호(핸드폰 번호 뒤 4자리) 입력 => DB에서 'member1' 테이블에 insert
- 회원 번호(핸드폰 번호 뒤 4자리) 입력 => DB에서 'member1' 테이블에서 데이터를 조회하여 delete
</br>

#### 4-5. 주문

<img src="img/Order.png" width="600" height="300">
</br>

-	수량 입력
-	메뉴 추가할 때마다 추가한 메뉴, 수량 및 가격 출력 => DB에서 ‘CafeTable’ 테이블에 저장 ✔️ [코드확인](https://github.com/jin4618/cafesmartorder/blob/671901a5c604aab8d1ec731f939ebe9a8a34c87f/src/order/OrderDAO.java#L130-L196) </br>
</br>

#### 4-6. 포인트 적립 및 결제

<img src="img/Pay.png" width="600" height="300">
</br>

- 총 주문 내역 출력 -> DB에 ‘CafeTable’ 테이블에서 데이터를 조회하여 불러옴 ✔️ [코드확인](https://github.com/jin4618/cafesmartorder/blob/671901a5c604aab8d1ec731f939ebe9a8a34c87f/src/menu/Count.java#L78-L94) </br>
-	Yes 버튼 누를 시 포인트 적립 창으로 이동</br>
- 포인트 적립을 원할 경우 회원 번호를 입력 받아 적립</br>
=> DB에 'member1' 테이블에서 데이터를 조회하고 회원번호가 맞는지 확인 ✔️ [코드확인](https://github.com/jin4618/cafesmartorder/blob/671901a5c604aab8d1ec731f939ebe9a8a34c87f/src/point/PointDAO.java#L56-L77) </br>
=> 현재 포인트 내역 출력 / 5개 모일 시 아메리카노 쿠폰 증정 (포인트 초기화) ✔️ [코드확인](https://github.com/jin4618/cafesmartorder/blob/671901a5c604aab8d1ec731f939ebe9a8a34c87f/src/point/Point_1.java#L52-L91) ✔️ [코드확인](https://github.com/jin4618/cafesmartorder/blob/671901a5c604aab8d1ec731f939ebe9a8a34c87f/src/point/PointDAO.java#L81-L121)</br>
- 적립을 원하지 않을 경우 결제만 진행</br>
</br>

#### 4-7. 유효성 검사 ✔️ [수량 코드확인](https://github.com/jin4618/cafesmartorder/blob/671901a5c604aab8d1ec731f939ebe9a8a34c87f/src/menu/Menu.java#L273-L292) ✔️ [회원번호 코드확인](https://github.com/jin4618/cafesmartorder/blob/671901a5c604aab8d1ec731f939ebe9a8a34c87f/src/menu/Menu.java#L577-L596)

<img src="img/validations.png" width="600" height="300">
</br>

- 입력 받아야 하는 Data 조건이 맞지 않을 경우 다시 입력 받음
</br>

-->

</details>

### 5.핵심 트러블 슈팅 

### 6. 느낀점


