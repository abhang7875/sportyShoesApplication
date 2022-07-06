package com.ecommerce.service;

import java.util.List;
import com.ecommerce.entity.Product;

public interface ProductService {
	public Product getProductById(long id);

	public void updateProduct(Product product);

	public void deleteProduct(long id);

	public List<Product> getAllProducts();

}
