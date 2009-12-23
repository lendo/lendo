<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<HTML>
	<HEAD>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/page/yndemo/census.css" />
		<script type="text/javascript">
		    function callback(id,name,houseCode){
		        personFormBean.majorId.value = id;
		        personFormBean.majorName.value = name;
		        personFormBean.houseCode.value = houseCode;
		        personFormBean.houseCode.readOnly=true;
		    }
		    
		    function openWindow(){
		        window.open('<%=request.getContextPath()%>/searchMajor.do', 'newwindow', 'height=200, width=400, top=300, left=300, toolbar=no, menubar=no, scrollbars=no,resizable=no,location=no, status=no');
		    }
		</script>
	</HEAD>
	<BODY leftMargin=0 topMargin=0 marginwidth="0" marginheight="0">
		<html:form action="/savePerson.do" method="post">
		    <table width="100%">
		        <br/><br/><br/><br/>
		        <tr>
		            <td width="30%" align="left">

		            </td>
		            <td align="left">
		                <table>
		        <html:hidden property="id"/>
		        <tr>
		            <td align="right">姓名:</td>
		            <td><html:text property="name" /></td>
		        </tr>
		        <tr>
		            <td align="right">身份证:</td>
		            <td><html:text property="identity" /></td>
		        </tr>
		        <tr>
		            <td align="right">是否户主:</td>
		            <td>
		            <html:radio property="isMajor" value="1" onclick="document.getElementById('major').style.display='none';document.getElementById('relation').style.display='none';" />是
		            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		            <html:radio property="isMajor" value="0" onclick="document.getElementById('major').style.display='';document.getElementById('relation').style.display='';" />不是
		            </td>
		        </tr>
		        <tr id="major">
		            <td align="right">户主:</td>
		            <td>
		            <html:text property="majorName" readonly="true" /><input type="button" onclick="openWindow()" value="点击这里设置户主" />
		            <html:hidden property="majorId" />
		            </td>
		        </tr>
		        <tr id="relation">
		            <td align="right">与户主的关系:</td>
		            <td>
		            <html:select property="majorRelation">
		                <html:option value="0">无</html:option>
		                <html:option value="1"><%=org.census.system.MajorRelation.MR_01_TEXT%></html:option>
		                <html:option value="2"><%=org.census.system.MajorRelation.MR_02_TEXT%></html:option>
		                <html:option value="3"><%=org.census.system.MajorRelation.MR_03_TEXT%></html:option>
		                <html:option value="4"><%=org.census.system.MajorRelation.MR_04_TEXT%></html:option>
		                <html:option value="5"><%=org.census.system.MajorRelation.MR_05_TEXT%></html:option>
		                <html:option value="6"><%=org.census.system.MajorRelation.MR_06_TEXT%></html:option>
		                <html:option value="7"><%=org.census.system.MajorRelation.MR_07_TEXT%></html:option>
		                <html:option value="8"><%=org.census.system.MajorRelation.MR_08_TEXT%></html:option>
		                <html:option value="9"><%=org.census.system.MajorRelation.MR_09_TEXT%></html:option>
		                <html:option value="10"><%=org.census.system.MajorRelation.MR_10_TEXT%></html:option>
		                <html:option value="11"><%=org.census.system.MajorRelation.MR_11_TEXT%></html:option>
		                <html:option value="12"><%=org.census.system.MajorRelation.MR_12_TEXT%></html:option>
		                <html:option value="13"><%=org.census.system.MajorRelation.MR_13_TEXT%></html:option>
		                <html:option value="14"><%=org.census.system.MajorRelation.MR_14_TEXT%></html:option>
		                <html:option value="15"><%=org.census.system.MajorRelation.MR_15_TEXT%></html:option>
		                <html:option value="16"><%=org.census.system.MajorRelation.MR_16_TEXT%></html:option>
		                <html:option value="17"><%=org.census.system.MajorRelation.MR_17_TEXT%></html:option>
		                <html:option value="18"><%=org.census.system.MajorRelation.MR_18_TEXT%></html:option>
		                <html:option value="19"><%=org.census.system.MajorRelation.MR_19_TEXT%></html:option>
		                <html:option value="20"><%=org.census.system.MajorRelation.MR_20_TEXT%></html:option>
		                <html:option value="21"><%=org.census.system.MajorRelation.MR_21_TEXT%></html:option>
		                <html:option value="22"><%=org.census.system.MajorRelation.MR_22_TEXT%></html:option>
		                <html:option value="23"><%=org.census.system.MajorRelation.MR_23_TEXT%></html:option>
		                <html:option value="24"><%=org.census.system.MajorRelation.MR_24_TEXT%></html:option>
		                <html:option value="25"><%=org.census.system.MajorRelation.MR_25_TEXT%></html:option>
		                <html:option value="26"><%=org.census.system.MajorRelation.MR_26_TEXT%></html:option>
		                <html:option value="27"><%=org.census.system.MajorRelation.MR_27_TEXT%></html:option>
		            </html:select>
		            </td>
		        </tr>
		        <tr>
		            <td align="right">户号:</td>
		            <td><html:text property="houseCode" /></td>
		        </tr>
		        <tr>
		            <td align="right">职业:</td>
		            <td><html:text property="job" /></td>
		        </tr>
		        <tr>
		            <td align="right">村:</td>
		            <td><html:text property="village" /></td>
		        </tr>
		        <tr>
		            <td align="right">组:</td>
		            <td><html:text property="group" /></td>
		        </tr>
		        <tr>
		            <td colspan="2" align="center"><html:submit value="保存户籍信息" />
		            </td>
		        </tr>
		    </table>
		            </td>
		        </tr>
		    </table>
		    <c:if test="${personFormBean.isMajor==1}">
		        <script type="text/javascript">
		            document.getElementById('major').style.display='none';
		            document.getElementById('relation').style.display='none';
		        </script>
		    </c:if>
		</html:form>
	</BODY>
</HTML>
