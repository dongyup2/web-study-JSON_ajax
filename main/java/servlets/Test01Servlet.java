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

import beans.UserBean;

/**
 * Servlet implementation class Test01Servlet
 */
@WebServlet("/test01")
public class Test01Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//데이터 받기
		BufferedReader br = request.getReader();
		String data = br.readLine();
		
		response.setCharacterEncoding("utf-8");	
		PrintWriter out = response.getWriter();
		String msg = "오케이~~";
		out.print(msg);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//데이터 받기
		BufferedReader br = request.getReader();
		String data = br.readLine();
		
		JSONObject jobj = new JSONObject(data);
		UserBean user = new UserBean();
		user.setName((String)jobj.get("name"));
		user.setAge((Integer) jobj.get("age"));
		user.setTel((String) jobj.get("tel"));
		System.out.println(user);
		
		response.setCharacterEncoding("utf-8");	
		PrintWriter out = response.getWriter();
		String msg = user.toString();
		out.print(msg);
	}

}
