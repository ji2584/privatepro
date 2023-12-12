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
<%
Member kicmem = new Member();
request.setCharacterEncoding("utf-8");
String LoginId = request.getParameter("loginId");
String LoginPw = request.getParameter("loginPw");
String name = request.getParameter("name");
String cellPhoneNo = request.getParameter("cellphoneNo");
String email = request.getParameter("email");
String Nickname = request.getParameter("nickname");
kicmem.setLoginId(LoginId);
kicmem.setLoginPw(LoginPw);
kicmem.setName(name);
kicmem.setCellphoneNo(cellPhoneNo); 
kicmem.setEmail(email);
kicmem.setNickname(Nickname);

MemberDao md = new MemberDao();
int num = md.insertMember(kicmem);
response.sendRedirect(request.getContextPath()+"/member/loginForm.jsp");
%><%=num %>
</body>
</html>