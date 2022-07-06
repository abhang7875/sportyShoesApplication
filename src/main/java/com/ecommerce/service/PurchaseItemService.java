package com.ecommerce.service;

import java.util.List;


import com.ecommerce.entity.PurchaseItem;

public interface PurchaseItemService {
	public PurchaseItem getItemById(long id);

	public List<PurchaseItem> getAllItemsByPurchaseId(long purchaseId);

	public void updateItem(PurchaseItem item);

	public void deleteItem(long id);

	public void deleteAllItemsForPurchaseId(long purchaseId);

}
