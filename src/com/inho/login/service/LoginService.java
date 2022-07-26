package com.inho.login.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.inho.login.conn.JDBCCreateConn;
import com.inho.login.dao.LoginDAO;
import com.inho.login.dto.LoginDTO;


public class LoginService {

	public int getMember(HttpServletRequest request, String loginCode) {
		int isMember = 0;
		try {
			LoginDAO dao = new LoginDAO();
			List<LoginDTO> list = dao.getMember(JDBCCreateConn.getConn(), loginCode);
			request.setAttribute("member", list);
			if(list.isEmpty()) {
				isMember = 0;
			}else isMember = 1;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return isMember;
	}
}
