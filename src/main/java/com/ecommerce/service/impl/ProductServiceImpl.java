package com.ecommerce.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.ecommerce.entity.Product;
import com.ecommerce.repository.ProductRepository;
import com.ecommerce.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{
	
	private ProductRepository productRepo;
	

	public ProductServiceImpl(ProductRepository productRepo) {
		super();
		this.productRepo = productRepo;
	}

	@Override
	public Product getProductById(long id) {
		Optional<Product> product =  productRepo.findById(id);
		if(product.isEmpty())
			return null;
		return product.get();
	}

	@Override
	public void updateProduct(Product product) {
		productRepo.save(product);		
	}

	@Override
	public void deleteProduct(long id) {
		productRepo.deleteById(id);		
	}

	@Override
	public List<Product> getAllProducts() {
		return productRepo.findAll();
	}

}
