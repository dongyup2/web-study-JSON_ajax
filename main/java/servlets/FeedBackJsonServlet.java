package servlets;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import UserDao.UserDao;
import beans.UserBean;


@WebServlet("/feedbackJson")
public class FeedBackJsonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		UserBean user = new UserBean("Ann",27,"010-1111-1111");
		JSONObject user02 = new JSONObject(user);
		PrintWriter out = response.getWriter();
		out.print(user02);	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 BufferedReader br = request.getReader();
		 String jstr = br.readLine();
		 //System.out.println(jstr);
		
		 JSONObject jobj = new JSONObject(jstr);
		 String name = (String)jobj.get("name");
		 Integer age = (Integer)jobj.get("age");
		 String tel = (String)jobj.get("tel");
		 
		 UserBean user = new UserBean(name, age, tel);
		 
		 UserDao dao = new UserDao();
		 int result = dao.insertUser(user);
		 
		 response.setCharacterEncoding("utf-8");
		 PrintWriter out = response.getWriter();
		 if(result == 1) {
			 out.print("sucess!!!");
		 }else {
			 out.print("fail!!!");
		 }
	}

}
