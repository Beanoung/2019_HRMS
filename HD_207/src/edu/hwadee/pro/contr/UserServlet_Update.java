package edu.hwadee.pro.contr;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.hwadee.pro.util.sql_data;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet_Update")
public class UserServlet_Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet_Update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String ID = null;
		String Name = null;
		String Sex = null;
		String Birthday = null;
		String Mobile = null;
		String Address = null;
		String DepartmentID=null;
		String FunctionID=null;
		String Position=null;
		String Business=null;
		String Rank=null;
		String Degree=null;
		String Status=null;
		String Oper = null;
		
		ID= request.getParameter("ID");
		//ID = new String(ID.getBytes("ISO-8859-1"),"UTF-8");
		
		Name= request.getParameter("Name");
		Name = new String(Name.getBytes("ISO-8859-1"),"UTF-8");
		
		Sex= request.getParameter("Sex");
		Sex = new String(Sex.getBytes("ISO-8859-1"),"UTF-8");
		
		Birthday= request.getParameter("Birthday");
		//Birthday = new String(Birthday.getBytes("ISO-8859-1"),"UTF-8");
		
		Mobile= request.getParameter("Mobile");
		//Mobile = new String(Mobile.getBytes("ISO-8859-1"),"UTF-8");
		
		Address= request.getParameter("Address");
		Address = new String(Address.getBytes("ISO-8859-1"),"UTF-8");
		
		DepartmentID= request.getParameter("DepartmentID");
		//DepartmentID = new String(DepartmentID.getBytes("ISO-8859-1"),"UTF-8");
		
		FunctionID= request.getParameter("FunctionID");
		//FunctionID = new String(FunctionID.getBytes("ISO-8859-1"),"UTF-8");
		
		Position= request.getParameter("Position");
		//Position = new String(Position.getBytes("ISO-8859-1"),"UTF-8");
		
		Business= request.getParameter("Business");
		//Business = new String(Business.getBytes("ISO-8859-1"),"UTF-8");
		
		Rank= request.getParameter("Rank");
		Rank = new String(Rank.getBytes("ISO-8859-1"),"UTF-8");
		
		Degree= request.getParameter("Degree");
		Degree = new String(Degree.getBytes("ISO-8859-1"),"UTF-8");
		
		Status= request.getParameter("Status");
		//Status = new String(Status.getBytes("ISO-8859-1"),"UTF-8");
		
		Oper= request.getParameter("submit");
		
		if("update".equals(Oper)) {
			String sql ="update Employees set Name='"+Name+"',Sex='"+Sex+"',Birthday='"+Birthday+"',Mobile='"+Mobile+"',Address='"+Address+
					"',DepartmentID='"+DepartmentID+"',FunctionID='"+FunctionID+"',Position='"+Position+"',Business='"+Business+"',Rank='"+Rank+
					"',Degree='"+Degree+"',Status='"+Status+"'where ID='"+ID+"'";
			sql_data db1 = new sql_data();
			db1.executeUpdate(sql);
			response.sendRedirect("./User_Manage/UserList.jsp");
		}else if("insert".equals(Oper)) {
			String sql ="insert into Employees values('"+ID+"','"+Name+"','"+Sex+"','"+Birthday+"','"+Mobile+"','"+Address+"','"+DepartmentID+
					"','"+FunctionID+"','"+Position+"','"+Business+"','"+Rank+"','"+Degree+"','"+Status+"')";
			sql_data db3 = new sql_data();
			db3.executeInsert(sql);
			response.sendRedirect("./User_Manage/UserList.jsp");
		}
	}
}
