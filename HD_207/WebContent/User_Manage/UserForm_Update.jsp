<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<jsp:useBean id="db" class="edu.hwadee.pro.util.sql_data" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改用户信息</title>
</head>
<body>
		<%
		String ID = null;
		String Name = null;
		String Sex = null;
		String Birthday = null;
		String Mobile = null;
		String Address = null;
		String DepartmentID = null;
		String FunctionID = null;
		String Position = null;
		String Business = null;
		String Rank = null;
		String Degree = null;
		String Status = null;
		ID= request.getParameter("aa");
		Name= request.getParameter("bb");
		Sex= request.getParameter("cc");
		Birthday= request.getParameter("dd");
		Mobile= request.getParameter("ee");
		Address= request.getParameter("ff");
		DepartmentID= request.getParameter("gg");
		FunctionID= request.getParameter("hh");
		Position= request.getParameter("ii");
		Business= request.getParameter("jj");
		Rank= request.getParameter("kk");
		Degree= request.getParameter("mm");
		Status= request.getParameter("nn");
		System.out.print(ID+Name+Sex+Birthday+Mobile+Address+DepartmentID+FunctionID+Position+Business+Rank+Degree+Status);
		%>
		<form action="../UserServlet_Update" method="post">
			工号：<input type="hidden" name="ID" value="<%=ID%>"><%=ID%><br>
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
			<input type="submit" name="submit" value="update"><br>
		</form>
</body>
</html>