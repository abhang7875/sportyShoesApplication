package com.ecommerce.service.impl;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.ecommerce.entity.Purchase;
import com.ecommerce.repository.PurchaseRepository;
import com.ecommerce.service.PurchaseService;

@Service
public class PurchaseServiceImpl implements PurchaseService{

	private PurchaseRepository purchaseRepo;
	
	public PurchaseServiceImpl(PurchaseRepository purchaseRepo) {
		super();
		this.purchaseRepo = purchaseRepo;
	}

	@Override
	public Purchase getPurchaseById(long id) {
		Optional<Purchase> purchase = purchaseRepo.findById(id);
		if(purchase.isEmpty())
			return null;
		return purchase.get();
	}

	@Override
	public List<Purchase> getAllItems() {
		return purchaseRepo.findAll();
	}

	@Override
	public List<Purchase> getAllItemsByUserId(long userId) {
		List<Purchase> purchases = purchaseRepo.findAll();
		return purchases.stream().filter(purchase-> purchase.getUserId() == userId).collect(Collectors.toList());
	}

	@Override
	public long updatePurchase(Purchase purchase) {
		purchaseRepo.save(purchase);
		return purchase.getID();
	}

	@Override
	public void deletePurchase(long id) {
		purchaseRepo.deleteById(id);		
	}
	
}
