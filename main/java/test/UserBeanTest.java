package test;

import beans.UserBean;

public class UserBeanTest {
	public static void main(String[] args) {
		UserBean userBean = new UserBean();
		userBean.setName("홍길동");
		userBean.setAge(33);
		
		System.out.println(userBean.toString());
		System.out.println(userBean);
		
	}
}
