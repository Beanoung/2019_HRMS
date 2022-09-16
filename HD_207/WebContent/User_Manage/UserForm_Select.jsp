<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.List"%>
<html>
<head>
<title>查询结果</title>
</head>
<body>
	<%
		List<String> list = (List<String>) request.getAttribute("list");
		if (list == null || list.size() < 1) {
			out.print("没有找到该工号的员工!");
		} else {
	%>
	<table border="1">
		<tr>
			<td>工号</td>
			<td>姓名</td>
			<td>性别</td>
			<td>生日</td>
			<td>电话</td>
			<td>地址</td>
			<td>部门</td>
			<td>岗位</td>
			<td>职位</td>
			<td>职务</td>
			<td>职称</td>
			<td>学位</td>
			<td>身份</td>
		</tr>
		<tr>
			<td><%=list.get(0)%></td>
			<td><%=list.get(1)%></td>
			<td><%=list.get(2)%></td>
			<td><%=list.get(3)%></td>
			<td><%=list.get(4)%></td>
			<td><%=list.get(5)%></td>
			<td><%=list.get(6)%></td>
			<td><%=list.get(7)%></td>
			<td><%=list.get(8)%></td>
			<td><%=list.get(9)%></td>
			<td><%=list.get(10)%></td>
			<td><%=list.get(11)%></td>
			<td><%=list.get(12)%></td>
			<%
				}
			%>
		</tr>
	</table>
</body>
</html>