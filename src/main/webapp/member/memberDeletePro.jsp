<%@page import="Member.MemberDao"%>
<%@page import="Member.Member"%>
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
//String id = (String)session.getAttribute("id");

String pass = request.getParameter("loginPw");
MemberDao md = new MemberDao();
Member memdb = md.oneMember(login);
String msg = "탈퇴되지 않았습니다.";
String url = request.getContextPath()+"/member/memberDeleteForm.jsp";
if(memdb!=null){
	if(pass.equals(memdb.getLoginPw())) { //비밀번호확인
	msg="탈퇴 됐습니다";
	
		md.DeleteMember(login);
		session.invalidate();
	url= request.getContextPath()+"/member/homepage.jsp";
		
	}else{
		msg="비밀번호가 틀렸습니다.";
	}
	
}
%>
<%-- //<%=id%>:<%=pass %>
 --%>
<script>
alert("<%=msg%>")
location.href="<%=url%>"




</script>
</body>
</html> 