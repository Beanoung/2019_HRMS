<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查找用户信息</title>
</head>
<body>
	查找用户信息：
	<br>
	<form action="../UserServlet_Delete" method="post">
		输入工号：<input type="text" name="ID" value=""><br> 
		<input type="submit" name="submit" value="select"><br>
	</form>
</body>
</html>