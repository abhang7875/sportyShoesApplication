package com.ecommerce.service.impl;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.ecommerce.entity.PurchaseItem;
import com.ecommerce.repository.PurchaseItemRepository;
import com.ecommerce.service.PurchaseItemService;

@Service
public class PurchaseItemServiceImpl implements PurchaseItemService{
	
	private PurchaseItemRepository purchaseItemRepo;
	

	public PurchaseItemServiceImpl(PurchaseItemRepository purchaseItemRepo) {
		super();
		this.purchaseItemRepo = purchaseItemRepo;
	}

	@Override
	public PurchaseItem getItemById(long id) {
		Optional<PurchaseItem> item = purchaseItemRepo.findById(id);
		if(item.isEmpty())
			return null;
		return item.get();
	}

	@Override
	public List<PurchaseItem> getAllItemsByPurchaseId(long purchaseId) {
		List<PurchaseItem> items = purchaseItemRepo.findAll();
		return items.stream().filter(item -> item.getID() == purchaseId).collect(Collectors.toList());
	}

	@Override
	public void updateItem(PurchaseItem item) {
		purchaseItemRepo.save(item);		
	}

	@Override
	public void deleteItem(long id) {
		purchaseItemRepo.deleteById(id);	
	}

	@Override
	public void deleteAllItemsForPurchaseId(long purchaseId) {
		purchaseItemRepo.deleteAllById(Arrays.asList(purchaseId));
	}
	
	
}
