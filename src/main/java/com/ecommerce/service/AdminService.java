package com.ecommerce.service;

import com.ecommerce.entity.Admin;


public interface AdminService {
	public long authenticate(String adminId, String pwd);

	public Admin getAdminById(long id);

	public void updatePwd(Admin admin);
}
