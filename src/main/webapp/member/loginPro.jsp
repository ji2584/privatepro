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

String LoginId = request.getParameter("loginId");
String LoginPw = request.getParameter("loginPw");
MemberDao md = new MemberDao();
Member mem = md.oneMember(LoginId);
String msg = "아이디를 확인하세요";
String url = "loginForm.jsp";
if(mem !=null){
	if(LoginPw.equals(mem.getLoginPw())){
		session.setAttribute("loginId",LoginId);
		msg = mem.getName()+"님이 로그인하셧습니다";
		url = "homepage.jsp";
	}else {
		msg = "비밀번호를 확인하세요 ";
	}
}

%>
<script>
alert("<%=msg%>")
location.href="<%=url%>"




</script>
</body>
</html> 