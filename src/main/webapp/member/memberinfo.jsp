<%@page import="Member.Member"%>
<%@page import="Member.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%MemberDao md = new MemberDao();
Member mem = md.oneMember(login);
%>
<div class="container">
      <div class="input-form-backgroud row">
         <div class="input-form col-md-12 mx-auto">
            <h4 class="mb-3">회원정보</h4>
            <table class="table">
            <tr>   <th>정보</th><th>내용</th> </tr>
            <tr><td>id</td><td><%=mem.getLoginId() %></td><tr>
            <tr><td>name</td><td><%=mem.getName() %></td><tr>
            <tr><td>cellPhoneNo</td><td><%=mem.getCellphoneNo() %></td><tr>
            <tr><td>email</td><td><%=mem.getEmail() %></td><tr>
            <tr><td>nickname</td><td><%=mem.getNickname() %></td><tr>
        	
        	<tr>
        	<td colspan="2" class = "w3-center">
        	<a class = "btn btn-primary"
        	href = "${pageContext.request.contextPath}/member/memberUpdateForm.jsp">회원정보수정</a>
           <a class = "btn btn-primary"
        	href = "${pageContext.request.contextPath}/member/memberDelete.jsp">회원탈퇴</a>
        	<a class = "btn btn-primary"
        	href = "${pageContext.request.contextPath}/member/memberPassUpdate.jsp">비밀번호수정</a>
           </td>
           </tr>
           
           
            
            </table>
         </div>
      </div>
   
   </div>
</body>
</html>