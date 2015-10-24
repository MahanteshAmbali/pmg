package com.myt.pmg.common;

import javax.servlet.http.HttpSession;

import com.myt.pmg.model.User;

public class UtilFunction {

	private static String SESSION_OBJ = "SessionObj";

	public static User getCurrentUser(HttpSession httpSession) {
		User user = null;
		if (null != httpSession) {
			Object object = httpSession.getAttribute(SESSION_OBJ);
			if (object != null && object instanceof SessionObj
					&& ((SessionObj) object).getUser() != null) {
				return ((SessionObj) object).getUser();
			}
		}
		return user;
	}

	public static boolean setCurrentUser(HttpSession httpSession, User user) {
		if (null != httpSession) {
			Object object = httpSession.getAttribute(SESSION_OBJ);
			if (object != null && object instanceof SessionObj) {
				((SessionObj) object).setUser(user);
			} else {
				SessionObj sessionObj = new SessionObj();
				sessionObj.setUser(user);
				httpSession.setAttribute(SESSION_OBJ, sessionObj);
			}
			return true;
		}
		return false;
	}

}
