<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
        <%
            String path = request.getContextPath();
        %>

	<title>mainpage.jsp</title>
		<script type="text/javascript">
		    function sendMessage(){
		        document.userForm.action = "<%=path%>/menu.do";
		        document.userForm.submit();
		    }
  
</script> 
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
</head>


<frameset rows="80,*" cols="*" frameborder="no" style="border:1px solid #029D63;"
	framespacing="0">
	<frame src="top.jsp" name="topFrame" scrolling="No"
		noresize="noresize" id="topFrame" title="topFrame" />
	<frameset rows="*" cols="161,*" framespacing="0" frameborder="no"
		style="border-top:10px solid #029D63;">
		<frame src="<%=path%>/menu.do" name="leftFrame" scrolling="Auto" style="border-right:1px solid #029D63;"
			noresize="noresize" id="leftFrame" title="leftFrame" />
		<frame src="right.jsp" name="mainFrame" id="mainFrame" scrolling="Auto"
			    title="mainFrame" SCROLLing="yes">
	</frameset>
</frameset>
<noframes>
	<body>
	</body>
</noframes>
</html>
