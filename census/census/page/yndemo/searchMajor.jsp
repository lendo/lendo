<%@ page contentType="text/html;charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
    <head>
        <script type="text/javascript">
            function callback(id,name,houseCode){
                opener.callback(id,name,houseCode);
                window.close();
            }
            
            function search(code){
                window.location = "<%=request.getContextPath()%>/searchMajor.do?houseCode=" + code;
            }
        </script>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/page/yndemo/census.css" />
    </head>
    <body>
        <table width="100%">
            <tr>
                <td colspan="2">
                <input id="code" type="text" name="houseCode" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="button" onclick="search(document.getElementById('code').value)" value="搜索"/> 
                </td>
            </tr>
            <tr>
                <td style="border-bottom:1px solid silver;">户号</td>
                <td style="border-bottom:1px solid silver;">户主</td>
                <td style="border-bottom:1px solid silver;">选择</td>
            </tr>
            <c:forEach items="${list}" var="person">
            <tr>
                <td style="border-bottom:1px dotted silver;"><c:out value="${person.houseCode}" /></td>
                <td style="border-bottom:1px dotted silver;"><c:out value="${person.name}" /></td>
                <td style="border-bottom:1px dotted silver;"><input type="button" value="设为户主" onclick="callback(<c:out value='${person.id}' />,'<c:out value='${person.name}' />',<c:out value='${person.houseCode}' />)" /></td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>