<%@ page contentType="text/html; charset=EUC-KR" %>
<jsp:useBean id="mMgr" class="bookgive.UserDBMgrPool"/>
<%
	  request.setCharacterEncoding("EUC-KR");
	  String id = request.getParameter("id");
	  String pwd = request.getParameter("pwd");
	  String url = "login.jsp";
	  String msg = "�α��ο� �����Ͽ����ϴ�.";
	  
	  boolean result = mMgr.login(id,pwd);
	  if(result){
	    session.setAttribute("idKey",id);
	    msg = "�α��ο� �����Ͽ����ϴ�.";
	    url = "bookgive.jsp";
	  }
%>
<script>
	alert("<%=msg%>");	
	location.href="<%=url%>";
</script>