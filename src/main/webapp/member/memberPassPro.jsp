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
String loginPw = request.getParameter("loginPw");
String chgpass = request.getParameter("chgpass");
MemberDao md = new MemberDao();
Member memdb = md.oneMember(login);

String msg = "비밀번호 수정을 실패 했습니다.";
String url = request.getContextPath()+"/member/memberPassForm.jsp";



if(memdb!=null){
	if(memdb.getLoginPw().equals(loginPw)){//수정 ok
		md.PassMember(login,chgpass);
		msg =login +"님이 비밀번호가 수정 되었습니다. ";
		url="homepage.jsp";
	}else {
		msg = "비밀번호가 틀렸습니다.";
	}


}

%>
<script>
alert("<%=msg%>")
location.href="<%=url%>"


</script>

<%-- <%=pass %> <%=chgpass %> --%>

</body>
</html>