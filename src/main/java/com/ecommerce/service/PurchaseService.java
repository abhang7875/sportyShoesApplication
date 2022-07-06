package com.ecommerce.service;

import java.util.List;


import com.ecommerce.entity.Purchase;

public interface PurchaseService {
	public Purchase getPurchaseById(long id);

	public List<Purchase> getAllItems();

	public List<Purchase> getAllItemsByUserId(long userId);

	public long updatePurchase(Purchase purchase);

	public void deletePurchase(long id);

}
