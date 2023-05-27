<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>marguerite</title>
<link rel="stylesheet" href="css/style.css" />
<style>
   
   body{
      height: 350vh;
      background-color: #F5F5DC;
   }
   
   header{
      background-color: #E4E5CA;
      padding: 40px 0;
   }
   
   .headerArea{
      display:flex;
      align-items:center;
   }
   
   .headerArea > div{
      margin: 0px 20px;
      display:flex;
   }
   
   .headerArea > div > a{
      color: black;
      text-decoration-line: none;
   }
   
   
   .headerArea > div > a > span{
      font-size:30px;
      font-weight: 550;
   }


   .mainPageImg {
      
      margin:0px 0px 30px 0px;
      width: 100%;
      height: 900px;
      border-radius: 10px;
   
   }

   .newProductSpan, .bestProductSpan{
   
      font-size: 40px;
      font-weight: 550;
   }
   
   .mainPageNewProductDiv, .mainPageBestProductDiv{
      display:flex;
      align-items:center;
      margin-top:40px;
		overflow:hidden;
   }
   
   .mainPageNewProductDiv > div > img {
   
      width : 300px;
      height: 440px;
      margin: 0px 50px;
      border-radius: 10px;
   }
	
	.mainPageBestProductDiv > imageDiv{
		float:left;
		display:flex;
		flex-direction: column;
		align-items: center;
		margin-bottom: 120px;
		
	}
	
	.img{
		width: 300px;
		height: 440px;
		margin: 0px 50px;
     	border-radius: 10px;
	}
	   
   hr{
   		margin:30px 0px;
        margin-top:40px;
   }
   
   .footerFirstDiv > span{
      font-size:30px;
      font-weight: 300px;
      margin-right: 60px;
      margin: 40px 60px 50px 0px;
   }
   
   .footerSecondDiv > span{
      font-size:30px;
      font-weight: 300px;
   }
   
   
   
   
   
   
</style>

</head>
<body>

   <header>
      <div class="headerArea">
            
         <div><a href="index.do"><span>marguerite</span></a></div>
         <div><a href="best.do"><span>best</span></a></div>
         <div><a href="outer.do"><span>outer</span></a></div>
         <div><a href="top.do"><span>top</span></a></div>
         <div><a href="bottom.do"><span>bottom</span></a></div>
         <div><a href="shoes_bag.do"><span>shoes&bag</span></a></div>
         <div><a href="dress.do"><span>dress</span></a></div>
         <div>
            <form action="search.do" >
               <input type="text" name="searchItem"/>
               <input type="submit" value="search" />
            </form>
         </div>
         <%
               int login = 0;
   
            if (session.getAttribute("login") != null) {
               login = (int) session.getAttribute("login");
            }
   
            
            %>
   
            <%
               if(login == 2){
            %>
   
            <div>
               <a href="userInfo.do"><span>유저정보</span></a>
            </div>
            <div>
               <a href="logout.do"><span>로그아웃</span></a>
            </div>
            <div><a href="basket.do"><span>장바구니</span></a></div>
            <%
               }else{
            %>
               <div>
                  <a href="login.jsp"><span>로그인</span></a>
               </div>
               <div><a href="basket.do"><span>장바구니</span></a></div>
            <% } %>
            
      </div>
   </header>
   
   <main class="mainDiv">
   
      <div><img class="mainPageImg"src="img/mainPageImg.jpg"></div>
      
      <div><span class="newProductSpan">신상품</span></div>
      
      <div class="mainPageNewProductDiv">
      		
         <c:forEach var="nplist" items="${nplist}" begin="0" end="3"> 
			
			<form action="detailCheck.do"> 
			
				<input type="hidden" name="code" value="${nplist.code }" />
				<input type="hidden" name="category" value="${nplist.category }" />
				<input type="hidden" name="pname" value="${nplist.pname }" />
				<input type="hidden" name="psize" value="${nplist.psize }" />
				<input type="hidden" name="pimage" value="${nplist.pimage }" />
				<input type="hidden" name="price" value="${nplist.price }" />
				
				<div class="imageDiv">
					<div><input class="img" type="image" name=submit src="${nplist.pimage}"  /></div>
					<div><span>${nplist.pname}</span></div>
					<div><fmt:formatNumber value="${nplist.price}" pattern="#,##0" />원</div>
				</div>
			</form>
			
		</c:forEach>
		
      </div>
      
      <div><span class="bestProductSpan">인기상품</span></div>
	  <div class="mainPageBestProductDiv">
      <c:forEach var="plist" items="${plist}" begin="0" end="3"> 
			
			<form action="detailCheck.do"> 
			
				<input type="hidden" name="code" value="${plist.code }" />
				<input type="hidden" name="category" value="${plist.category }" />
				<input type="hidden" name="pname" value="${plist.pname }" />
				<input type="hidden" name="psize" value="${plist.psize }" />
				<input type="hidden" name="pimage" value="${plist.pimage }" />
				<input type="hidden" name="price" value="${plist.price }" />
				
				<div class="imageDiv">
					<div><input class="img" type="image" name=submit src="${plist.pimage}"  /></div>
					<div><span>${plist.pname}</span></div>
					<div><fmt:formatNumber value="${plist.price}" pattern="#,##0" />원</div>
				</div>
			</form>
			
		</c:forEach>
        </div>
   </main>

   <hr>
   
   <footer>
   
      <div class="footerFirstDiv">
         <span>로고</span>
         <span>010-xxxx-xxxx</span>
         <span>공식sns</span>
      </div>
   
      <div class="footerSecondDiv">
         <span>서울특별시 마포구 동교로23길 32-23</span>
      </div>   
   </footer>
   
</body>
</html>