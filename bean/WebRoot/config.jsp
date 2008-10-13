<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<link rel="stylesheet" type="text/css" href="common.css">
  </head>
  
  <body>
    <form action="<%=path%>/beantoxml.dudan" method="post">
    <table width="60%" border="0" cellpadding="5" cellspacing="0" style="border:1px solid #336699;">
        <tr>
        <td align="right" width="40%" style="border-right:1px solid #336699;border-bottom:1px solid #336699;">数据库用户：</td>
        <td width="60%" style="border-bottom:1px solid #336699;"><input size="51" type="text" name="userName" value="<%=request.getAttribute("userName")%>" /></td>
        </tr>
        <tr>
        <td align="right" width="40%" style="border-right:1px solid #336699;border-bottom:1px solid #336699;">数据库密码：</td>
        <td width="60%" style="border-bottom:1px solid #336699;"><input size="51" type="text" name="password" value="<%=request.getAttribute("password")%>" /></td>
        </tr>
        <tr>
        <td align="right" width="40%" style="border-right:1px solid #336699;border-bottom:1px solid #336699;">数据库连接字符串：</td>
        <td width="60%" style="border-bottom:1px solid #336699;"><input size="51" type="text" name="url" value="<%=request.getAttribute("url")%>" /></td>
        </tr>
        <tr>
        <td align="right" width="40%" style="border-right:1px solid #336699;border-bottom:1px solid #336699;">数据库方言：</td>
        <td width="60%" style="border-bottom:1px solid #336699;"><input size="51" type="text" name="dialect" value="<%=request.getAttribute("dialect")%>" /></td>
        </tr>
        <tr>
        <td align="right" width="40%" style="border-right:1px solid #336699;border-bottom:1px solid #336699;">数据库驱动：</td>
        <td width="60%" style="border-bottom:1px solid #336699;"><input size="51" type="text" name="driver" value="<%=request.getAttribute("driver")%>" /></td>
        </tr>
        <tr>
        <td colspan="2" align="center" width="100%"><input type="submit" value="持久化到文件" /></td>
        </tr>
    </table>
    </form>
  </body>
</html>
