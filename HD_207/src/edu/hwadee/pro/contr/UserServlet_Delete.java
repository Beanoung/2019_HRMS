package edu.hwadee.pro.contr;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.hwadee.pro.util.sql_data;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet_Delete")
public class UserServlet_Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserServlet_Delete() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setCharacterEncoding("UTF-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String ID = null;
		String Oper = null;
		
		ID= request.getParameter("ID");
		//ID = new String(ID.getBytes("ISO-8859-1"),"UTF-8");
		
		Oper= request.getParameter("submit");
		
		if("delete".equals(Oper)) {
			String sql="delete from Employees where ID='"+ID+"'";
			sql_data db1=new sql_data();
			db1.executeDelete(sql);
			//response.sendRedirect("./User_Manage/UserList.jsp");
			request.getRequestDispatcher("./User_Manage/UserList.jsp").forward(request,response);
		}
		try {
			if("select".equals(Oper)) {
			String sql ="select * from Wages where ID='"+ID+"'";
			sql_data db2 = new sql_data();
			ResultSet rs = null;
			rs = db2.executeQuery(sql);
			List<String> list = new ArrayList<>();
				while(rs.next()){
					list.add(ID);
					list.add(rs.getString("Name"));
					list.add(rs.getString("Sex"));
					list.add(rs.getString("Birthday"));
					list.add(rs.getString("Mobile"));
					list.add(rs.getString("Address"));
					list.add(rs.getString("DepartmentID"));
					list.add(rs.getString("FunctionID"));
					list.add(rs.getString("Position"));
					list.add(rs.getString("Business"));
					list.add(rs.getString("Rank"));
					list.add(rs.getString("Degree"));
					list.add(rs.getString("Status"));
//					UserList_Select user = new UserList_Select();
//					user.SetID(rs.getString("ID"));
//					System.out.println(ID);
//					user.SetName(rs.getString("Name"));
//					user.SetSex(rs.getString("Sex"));
//					user.SetBirthday(rs.getString("Birthday"));
//					user.SetMobile(rs.getString("Mobile"));
//					user.SetAddress(rs.getString("Address"));
//					user.SetDepartmentID(rs.getString("DepartmentID"));
//					user.SetFunctionID(rs.getString("FunctionID"));
//					user.SetPosition(rs.getString("Position"));
//					user.SetBusiness(rs.getString("Business"));
//					user.SetRank(rs.getString("Rank"));
//					user.SetDegree(rs.getString("Degree"));
//					user.SetStatus(rs.getString("Status"));
//					list.add(user);
				}
				request.setAttribute("list", list);
			} 
		}	
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		request.getRequestDispatcher("./User_Manage/UserForm_Select.jsp").forward(request,response);
		//response.sendRedirect("./User_Manage/UserForm_Select.jsp");
	}
}
