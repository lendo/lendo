<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
  String path = request.getContextPath();
%>
<html>
	<head>
		<script type='text/javascript' src='<%=path%>/dwr/interface/userService.js'></script>
  	<script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
  	<script type='text/javascript' src='<%=path%>/dwr/util.js'></script>
  	<script type="text/javascript">
  	  DWREngine.setOrdered(true);
  	  function getUsers(){
  	    userService.getUsers({
  	      callback: function handleCallback(users){fillTable(users,$('table'));},
  	      errorHandler: function handleError(error) {alert(error);}
  	    });
  	  }
  	  
  	  function fillTable(users,table){
  	    if(users&&table){
  	      if(table.rows.length>0){
  	        for(j=table.rows.length-1;j>0;j--){
  	          table.deleteRow(j);
  	        }
  	      }
  	      
  	      for(i=0;i<users.length;i++){
  	        row = table.insertRow(table.rows.length);
  	        codeCell = row.insertCell(0);
  	        codeCell.innerHTML = users[i].code;
  	        nameCell = row.insertCell(1);
  	        nameCell.innerHTML = users[i].name;
  	        ageCell = row.insertCell(2);
  	        ageCell.innerHTML = users[i].age;
  	        addressCell = row.insertCell(3);
  	        addressCell.innerHTML = users[i].address;
  	        operationCell = row.insertCell(4);
  	        operationCell.innerHTML = "<a href=#>编辑</a>/<a href=# onclick='removeUser(" + i + ")'>删除</a>";
  	      }
  	    }
  	  }
  	  
  	  function removeUser(index){
  	    userService.removeUser(index,{
  	      callback: postOperationUser,
  	      errorHandler: function handleError(error) {alert(error);}
  	    });
  	  }
  	  
  	  function postOperationUser(){
  	    getUsers();
  	    $("code").value = "";
  	    $("name").value = "";
  	    $("age").value = "";
  	    $("address").value = "";
  	  }
  	  
  	  function addUser(){
  	      code = $("code").value;
  	      name = $("name").value;
  	      age = $("age").value;
  	      address = $("address").value;
  	      user = {code:code,name:name,age:age,address:address};
  	      userService.addUser(user,{
  	      callback: postOperationUser,
  	      errorHandler: function handleError(error) {alert(error);}
  	    });
  	  }
  	</script>
	</head>
	<body onload="getUsers()">
    <table width="100%" id="table" border="1">
      <thead>
    	<tr>
    	  <td width="20%">编号</td>
    	  <td width="20%">姓名</td>
    	  <td width="20%">年龄</td>
    	  <td width="20%">地址</td>
    	  <td width="20%">编辑/删除</td>
    	</tr>
    	</thead>
    </table>
    <table width="100%" border="1">
    	<tr>
    	  <td width="20%"><input type="text" name="code" id="code" value="" /></td>
    	  <td width="20%"><input type="text" name="name" id="name" value="" /></td>
    	  <td width="20%"><input type="text" name="age" id="age" value="" /></td>
    	  <td width="20%"><input type="text" name="address" id="address" value="" /></td>
    	  <td width="20%"><input type="button" value="添加" onclick="addUser();" /></td>
    	</tr>
    </table>
	</body>
</html>