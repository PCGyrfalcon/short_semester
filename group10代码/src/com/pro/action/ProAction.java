package com.pro.action;


import java.util.List;

import com.emp.dao.RoleDao;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.pro.dao.ProDao;
import com.pro.pojo.Pro;

public class ProAction  extends ActionSupport implements ModelDriven<Pro>{
	private Pro pro=new Pro();
	private  List<Pro> lp;

	//员工成功入职
	public String come() throws Exception{
		int i=0;
		ProDao proDao = new ProDao();
		i=proDao.come(pro.getEmpno());
		if(i==0){
			return ERROR;
		}
		else{
			i=proDao.delete(pro.getEmpno());
			if(i==0){
				return ERROR;
			}
			else{
				return "jump";
			}
		}

	}
	//员工试用期延期
	public String waita() throws Exception{
		int i=0;
		ProDao proDao = new ProDao();
		i=proDao.wait(pro.getEmpno());
		if(i==0){
			return ERROR;
		}
		else{
			return "jump";
		}

	}
	//员工未通过试用期
	public String go() throws Exception{
		int i=0;
		ProDao proDao = new ProDao();
		i=proDao.go(pro.getEmpno());
		if(i==0){
			return ERROR;
		}
		else{
			i=proDao.delete(pro.getEmpno());
			if(i==0){
				return ERROR;
			}
			else{
				return "jump";
			}
		}

	}


	/* 列出在培训中员工信息*/
	public String listpro() throws Exception {
		ProDao proDao = new ProDao();
		lp = proDao.lp();
		return "listpro";
	}
	//对员工评价时试用
	public String  findone() throws Exception {
		ProDao proDao = new ProDao();
		pro=proDao.find(pro.getEmpno());
		return "estimate";
	}
	public List<Pro> getLp() {
		return lp;
	}


	public void setLp(List<Pro> lp) {
		this.lp = lp;
	}


	public Pro getPro(){
		return pro;
	}

	public void setPro(Pro pro){
		this.pro = pro;
	}
	@Override
	public Pro getModel() {
		if(this.pro ==null){
			this.pro = new Pro();
		}
		return this.pro;

	}

}
