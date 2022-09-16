<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>插入员工信息</title>
</head>
<body>
	<%
		String ID = "";
		String Name = "";
		String Sex = "";
		String Birthday = "";
		String Mobile = "";
		String Address = "";
		String DepartmentID = "";
		String FunctionID = "";
		String Position = "";
		String Business = "";
		String Rank = "";
		String Degree = "";
		String Status = "";
	%>
	添加员工：
	<br>
	<form action="../UserServlet_Update" method="post">
		工号：<input type="text" name="ID" value="<%=ID%>"><br>
		姓名：<input type="text" name="Name" value="<%=Name%>"><br>
		性别：<input type="text" name="Sex" value="<%=Sex%>"><br>
		生日：<input type="text" name="Birthday" value="<%=Birthday%>"><br>
		电话：<input type="text" name="Mobile" value="<%=Mobile%>"><br>
		地址：<input type="text" name="Address" value="<%=Address%>"><br>
		部门：<input type="text" name="DepartmentID" value="<%=DepartmentID%>"><br>
		岗位：<input type="text" name="FunctionID" value="<%=FunctionID%>"><br>
		职位：<input type="text" name="Position" value="<%=Position%>"><br>
		职务：<input type="text" name="Business" value="<%=Business%>"><br>
		职称：<input type="text" name="Rank" value="<%=Rank%>"><br>
		学位：<input type="text" name="Degree" value="<%=Degree%>"><br>
		身份：<input type="text" name="Status" value="<%=Status%>"><br>
		<input type="submit" name="submit" value="insert"><br>
	</form>
</body>
</html>