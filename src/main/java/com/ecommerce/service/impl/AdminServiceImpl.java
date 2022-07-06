package com.ecommerce.service.impl;

import java.util.Optional;

import org.springframework.stereotype.Service;

import com.ecommerce.entity.Admin;
import com.ecommerce.errorcodes.ErrorCodes;
import com.ecommerce.repository.AdminRepository;
import com.ecommerce.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService{
	
	private AdminRepository adminRepo;

	public AdminServiceImpl(AdminRepository adminRepo) {
		super();
		this.adminRepo = adminRepo;
	}

	@Override
	public long authenticate(String adminId, String pwd) {
		Long ID = null;
		try {
			ID = Long.parseLong(adminId);
		}catch(Exception e) {
			return ErrorCodes.NONNUMERIC_ID.value;
		}
		Admin admin = this.getAdminById(ID);
		if(admin == null) {
			return ErrorCodes.INVALID_ID.value;
		}else {
			if(!admin.getAdminPwd().equals(pwd)) {
				return ErrorCodes.INVALID_PASSWORD.value;
			}
		}
		return ID;
	}

	@Override
	public Admin getAdminById(long id) {
		Optional<Admin> admin =  adminRepo.findById(id);
		if(admin.isEmpty()) {
			return null;
		}
		return admin.get();
	}

	@Override
	public void updatePwd(Admin admin) {
		adminRepo.save(admin);		
	}
	

}
