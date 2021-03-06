package com.dismission.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dept.pojo.Dept;
import com.dismission.pojo.DisEmp;

public class DisDao extends BaseDao{
	
	//列出历史员工离职信息
	public List<DisEmp> list(){
		List<DisEmp> lds = new ArrayList<DisEmp>();
		String sql="SELECT \r\n" + 
				"  `id`,\r\n" + 
				"  `empno`,\r\n" + 
				"  `dimissionType`,\r\n" + 
				"  `dimissionDate`,\r\n" + 
				"  `dimissionRemark` \r\n" + 
				"FROM\r\n" + 
				"  `mng`.`dimission`  ";
		Connection connection=null;
		java.sql.Statement statement=null;
		ResultSet resultSet = null;
		try {
			connection=getConnection();
			statement=connection.createStatement();
			resultSet=statement.executeQuery(sql);
			while(resultSet.next()) {
				DisEmp disEmp=new DisEmp();
				disEmp.setEmpno(resultSet.getInt(2));
				disEmp.setDimissionType(resultSet.getString(3));
				disEmp.setDimissionDate(resultSet.getDate(4));
				disEmp.setDimissionRemark(resultSet.getString(5));
				disEmp.setId(resultSet.getInt(1));
				lds.add(disEmp);
			}
		}
		catch (Exception e) {
			e.getMessage();
		}
		finally {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return lds;
	}
	
	//离职信息加入离职员工信息表
	public int add(DisEmp disEmp){
		int j = 0;
		String sql = "INSERT INTO `mng`.`dimission`\r\n" + 
				"(\r\n" + 
				"  `empno`,\r\n" + 
				"  `dimissionType`,\r\n" + 
				"  `dimissionDate`,\r\n" + 
				"  `dimissionRemark`\r\n" + 
				") \r\n" + 
				"VALUES\r\n" + 
				"  (\r\n" + 
				"    ? ,\r\n" + 
				"    ? ,\r\n" + 
				"    ? ,\r\n" + 
				"    ? \r\n" + 
				"  ) ";
		Connection connection = null;
		PreparedStatement statement = null;		 
		try {
			connection = getConnection();
			statement = connection.prepareStatement(sql);
			statement.setObject(1,disEmp.getEmpno());
			statement.setObject(2,disEmp.getDimissionType());
			statement.setObject(3,(java.util.Date)disEmp.getDimissionDate());
			statement.setObject(4,disEmp.getDimissionRemark());
			j = statement.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {			
			try {
				statement.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return j;
	}
	
	//员工信息表中员工离职
	public int dis(int id){
		int j = 0;
		String sql = "UPDATE \r\n" + 
				"  `mng`.`emp` \r\n" + 
				"SET\r\n" + 
				"  if_dim = \"是\"\r\n" + 
				"WHERE `empno` = ? ";
		Connection connection = null;
		PreparedStatement statement = null;		 
		try {
			connection = getConnection();
			statement = connection.prepareStatement(sql);
			statement.setObject(1,id);
			j = statement.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {			
			try {
				statement.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return j;
	}
}
