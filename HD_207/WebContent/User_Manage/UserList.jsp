<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<jsp:useBean id="db" class="edu.hwadee.pro.util.sql_data" />    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户信息列表</title>
</head>
<body>
用户信息列表:
<br>
<table border=1><tr><td>工号</td><td>姓名</td><td>性别</td><td>生日</td><td>电话</td><td>地址</td><td>部门</td><td>岗位</td><td>职位
				</td><td>职务</td><td>职称</td><td>学位</td><td>身份</td><td>(操作)修改、删除</td></tr>
<%
String sql="select * from Employees";
ResultSet rs=null;
rs=db.executeQuery(sql);
while(rs.next()){
	String ID=rs.getString("ID");
	String Name=rs.getString("Name");
	String Sex=rs.getString("Sex");
	String Birthday=rs.getString("Birthday");
	String Mobile=rs.getString("Mobile");
	String Address=rs.getString("Address");
	String DepartmentID=rs.getString("DepartmentID");
	String FunctionID=rs.getString("FunctionID");
	String Position=rs.getString("Position");
	String Business=rs.getString("Business");
	String Rank=rs.getString("Rank");
	String Degree=rs.getString("Degree");
	String Status=rs.getString("Status");
	out.print("<tr><td>"+ID+"</td><td>"+Name+"</td><td>"+Sex+"</td><td>"+Birthday+"</td><td>"+Mobile+"</td><td>"+Address+"</td><td>"+DepartmentID+
			"</td><td>"+FunctionID+"</td><td>"+Position+"</td><td>"+Business+"</td><td>"+Rank+"</td><td>"+Degree+"</td><td>"+Status+
			"</td><td><a href='UserForm_Update.jsp?aa="+ID+"&&bb="+Name+"&&cc="+Sex+"&&dd="+Birthday+"&&ee="+Mobile+"&&ff="+Address+
			"&&gg="+DepartmentID+"&&hh="+FunctionID+"&&ii="+Position+"&&jj="+Business+"&&kk="+Rank+"&&mm="+Degree+"&&nn="+Status+
			"'><font color=blue>update</a>、<a href='../UserServlet_Delete?ID="+ID+"&&submit=delete'><font color=blue>delete</a></td></tr>");
}
%>
</table>
<a href='UserList_Select.jsp'>查询员工信息</a>
</body>
</html>