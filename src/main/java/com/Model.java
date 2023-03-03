package com;

public class Model {
	private String name,email,pass,mob,pname,pimage;
	private int id,pprice,qnt;
	
	public Model(String name, String pname, int pprice, int qnt, String pimage) {
		super();
		this.name = name;
		this.pname = pname;
		this.pprice = pprice;
		this.qnt = qnt;
		this.pimage=pimage;
	}

	public Model(String name) {
		super();
		this.name = name;
	}

	public Model(String pname, int pprice,String pimage) {
		super();
		this.pname = pname;
		this.pprice = pprice;
		this.pimage=pimage;
	}

	

	public Model() {
		super();
	}

	public Model(String name, String email, String mob, String pass) {
		super();
		this.name = name;
		this.email = email;
		this.pass = pass;
		this.mob = mob;
	}
	
	

	public Model(String name, String pass) {
		super();
		this.name = name;
		this.pass = pass;
	}
	
	

	public Model(int id) {
		super();
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getMob() {
		return mob;
	}

	public void setMob(String mob) {
		this.mob = mob;
	}

	public String getPimage() {
		return pimage;
	}

	public void setPimage(String pimage) {
		this.pimage = pimage;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getPprice() {
		return pprice;
	}

	public void setPprice(int pprice) {
		this.pprice = pprice;
	}

	public int getQnt() {
		return qnt;
	}

	public void setQnt(int qnt) {
		this.qnt = qnt;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	
		
}
