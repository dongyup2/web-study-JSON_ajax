package test;

import java.util.HashMap;
import java.util.Map;

import org.json.JSONArray;

import beans.UserBean;

public class JSONMapTest {

	public static void main(String[] args) {
		Map<Integer, UserBean> map = new HashMap<>();
		
		map.put(1, new UserBean("홍길동",39,"010-1111-1111"));
		map.put(2, new UserBean("임꺽정",40,"010-2222-2222"));
		map.put(3, new UserBean("심청이",15,"010-3333-3333"));
		
		JSONArray jsonArray = new JSONArray(map);
		
		
	}

}
