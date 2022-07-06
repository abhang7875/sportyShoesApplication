package com.ecommerce.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "admin")
public class Admin {

	@Id
	@Column(name = "ID")
	private long ID;

	@Column(name = "admin_pwd")
	private String pwd;

	public long getID() {
		return this.ID;
	}

	public String getAdminPwd() {
		return this.pwd;
	}

	public void setID(long id) {
		this.ID = id;
	}

	public void setAdminPwd(String value) {
		this.pwd = value;
	}
}
