package com.mega.mvc10;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DBCPTest1 {

	public static void main(String[] args) {
		
		DBConnectionMgr dbcp = DBConnectionMgr.getInstance();
		try {
			Connection con = dbcp.getConnection();
			String sql = "insert into member values ('sun', 'sun', 'sun', 'sun')";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.executeUpdate();
			dbcp.freeConnection(con, ps);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
