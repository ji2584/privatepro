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
Member mem = new Member();//client에서 넘어온 자료

mem.setLoginId(login);//session 저장 logout이면 에러남
mem.setLoginPw(request.getParameter(("loginPw")));
mem.setName(request.getParameter(("name")));
mem.setCellphoneNo(request.getParameter(("cellphoneNo")));
mem.setNickname(request.getParameter(("nickname")));
mem.setEmail(request.getParameter(("email")));
MemberDao md = new MemberDao();
Member memdb = md.oneMember(login);//db에서 넘어온 자료
String msg = "수정 되지 않았습니다";
String url=request.getContextPath()+"/member/memberUpdateForm.jsp";
if(memdb!=null){
	if(memdb.getLoginPw().equals(mem.getLoginPw())){//수정 ok
		
		msg ="수정되었습니다";
		
		md.UpdateMember(mem);
		url=request.getContextPath()+"/member/memberinfo.jsp";
	}else {
		msg = "비밀번호가 틀렸습니다.";
	}
	
}
%>
<script>
alert("<%=msg%>")
location.href="<%=url%>"
</script>

</body>
</html>