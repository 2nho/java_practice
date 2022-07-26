package com.inho.login.dao;

import java.util.List;

import com.inho.login.dto.LoginDTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class LoginDAO {
	public List<LoginDTO> getMember(Connection conn, String loginCode) throws Exception{
		String query = "select id, name from logint where id = ?";
		PreparedStatement pstmt = conn.prepareStatement(query);
		pstmt.setString(1, loginCode);
		ResultSet rs = pstmt.executeQuery();
		List<LoginDTO> list = new ArrayList<LoginDTO>();
		while(rs.next()) {
			LoginDTO dto = new LoginDTO();
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				list.add(dto);
		}
		pstmt.close();
		rs.close();
		
		return list;
	}
}
