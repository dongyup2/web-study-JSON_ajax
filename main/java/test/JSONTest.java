package test;

import org.json.JSONObject;

import beans.UserBean;

public class JSONTest {

	public static void main(String[] args) {
		JSONObject jobj = new JSONObject();
		
		jobj.put("name", "Ann");
		jobj.put("age", 27);
		jobj.put("tel", "010-1111-1111");
		
		System.out.println(jobj.toString());

		UserBean user = new UserBean("Ann", 27, "010-1111-1111");
		
		JSONObject user01 = new JSONObject(user);
		System.out.println(user01.toString());
		System.out.println(user01);
		
	}

}
