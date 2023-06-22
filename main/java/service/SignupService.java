package service;

import UserDao.SignupDao;
import beans.SignupBean;

public class SignupService {
	SignupDao signupDao = new SignupDao();
	public boolean signupServiceInsert(SignupBean signupbean) {
		return signupDao.insertUser(signupbean) > 0;
	}
}
