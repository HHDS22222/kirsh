package com.kirsh.www.biz.product;

import java.sql.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {
	private int productCode;
	private int productCategoryNum;
	private String productName;
	private String productEngName;
	private String productModel;
	private int productRPrice;
	private int productPrice;
	private MultipartFile productImage1;
	private MultipartFile productImage2;
	private String productImageUrl1;
	private String productImageUrl2;
	private Date productRegDate;
	private String productInfo;
	
    private List<ProductOptionVO> productOption;
    
	private String searchName;
	private String searchCode;
	
	private int searchCnt;
	private String productCategoryName;
	
	public String getProductCategoryName() {
		return productCategoryName;
	}

	public void setProductCategoryName(String productCategoryName) {
		this.productCategoryName = productCategoryName;
	}

	public String getSearchName() {
		return searchName;
	}

	public void setSearchName(String searchName) {
		this.searchName = searchName;
	}

	public String getSearchCode() {
		return searchCode;
	}

	public void setSearchCode(String searchCode) {
		this.searchCode = searchCode;
	}

	public String getProductImageUrl1() {
		return productImageUrl1;
	}

	public void setProductImageUrl1(String productImageUrl1) {
		this.productImageUrl1 = productImageUrl1;
	}
	public int getProductCode() {
		return productCode;
	}

	public void setProductCode(int productCode) {
		this.productCode = productCode;
	}

	public int getProductCategoryNum() {
		return productCategoryNum;
	}

	public void setProductCategoryNum(int productCategoryNum) {
		this.productCategoryNum = productCategoryNum;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductModel() {
		return productModel;
	}

	public void setProductModel(String productModel) {
		this.productModel = productModel;
	}

	public int getProductRPrice() {
		return productRPrice;
	}

	public void setProductRPrice(int productRPrice) {
		this.productRPrice = productRPrice;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public MultipartFile getProductImage1() {
		return productImage1;
	}

	public void setProductImage1(MultipartFile productImage1) {
		this.productImage1 = productImage1;
	}

	public MultipartFile getProductImage2() {
		return productImage2;
	}

	public void setProductImage2(MultipartFile productImage2) {
		this.productImage2 = productImage2;
	}
	public Date getProductRegDate() {
		return productRegDate;
	}

	public void setProductRegDate(Date productRegDate) {
		this.productRegDate = productRegDate;
	}

	public String getProductInfo() {
		return productInfo;
	}

	public void setProductInfo(String productInfo) {
		this.productInfo = productInfo;
	}


	public String getProductEngName() {
		return productEngName;
	}

	public void setProductEngName(String productEngName) {
		this.productEngName = productEngName;
	}

	public String getProductImageUrl2() {
		return productImageUrl2;
	}

	public void setProductImageUrl2(String productImageUrl2) {
		this.productImageUrl2 = productImageUrl2;
	}

	public int getSearchCnt() {
		return searchCnt;
	}

	public void setSearchCnt(int searchCnt) {
		this.searchCnt = searchCnt;
	}

	public List<ProductOptionVO> getProductOption() {
		return productOption;
	}

	public void setProductOption(List<ProductOptionVO> productOption) {
		this.productOption = productOption;
	}
	
}
