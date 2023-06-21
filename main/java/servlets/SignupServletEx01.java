package servlets;

import java.io.BufferedReader;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import UserDao.SignupDao;
import beans.SignupBean;

/**
 * JSON 형변환
 * 1.Object -> JSON => JSON.stringify(객체); 오브젝트를 JSON 문자열로 변환해줌.
 * 3.JSON -> Object => JSON.parse(JSON); JSON문자열을 오브젝트 (객체)로 변환해줌.
 */
@WebServlet("/SignupServletEx01")
public class SignupServletEx01 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		SignupDao dao = new SignupDao();
		BufferedReader br = request.getReader();
		String data = br.readLine();
		
		JSONObject jobj = new JSONObject(data);
		SignupBean signupBean = new SignupBean();
		signupBean.setName((String)jobj.get("name"));
		signupBean.setEmail((String)jobj.get("email"));
		signupBean.setId((String)jobj.get("id"));
		signupBean.setPassword((String)jobj.get("password"));
		dao.insertUser(signupBean);
		
		
		response.setContentType("application/json");
	}

}
