package com.kirsh.www.view.product;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kirsh.www.biz.category.CategoryVO;
import com.kirsh.www.biz.category.impl.CategoryService;
import com.kirsh.www.biz.product.ProductVO;
import com.kirsh.www.biz.product.impl.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	@Autowired
	private CategoryService categoryService;
	
	@Resource(name = "path")
	private String path;

	@RequestMapping(value = "/insertProduct.do")
	public String insertProduct(ProductVO vo, @RequestParam(value="productSize", required=false) String size, @RequestParam(value="productInvntCnt", required=false) String invntCnt) throws IOException {
		File file = new File(path + vo.getProductModel());
		if (!file.exists()) {
			file.mkdirs();
		}

		MultipartFile productImage1 = vo.getProductImage1();
		if (!productImage1.isEmpty()) {
			String fileName = productImage1.getOriginalFilename();
			productImage1.transferTo(new File(path + vo.getProductModel() + "\\" + fileName));
			vo.setProductImageUrl1("images/store/" + vo.getProductModel() + "/" + fileName);
		}

		MultipartFile productImage2 = vo.getProductImage2();
		if (!productImage2.isEmpty()) {
			String fileName = productImage2.getOriginalFilename();
			productImage2.transferTo(new File(path + vo.getProductModel() + "\\" + fileName));
			vo.setProductImageUrl2("images/store/" + vo.getProductModel() + "/" + fileName);
		}
		String[] sizeArray = size.split(",");
		List<String> productSize = Arrays.asList(sizeArray);
		
		String[] cntArray = invntCnt.split(",");
		List<String> productInvntCnt = Arrays.asList(cntArray);
		
		vo.setProductSize(productSize);
		vo.setProductInvntCnt(productInvntCnt);
		productService.insertProduct(vo);
		return "getProductList.do";
	}
	
	@RequestMapping(value="/getProductInfo.do")
	public String getProductInfo(ProductVO vo, HttpSession session, Model model) {
		ProductVO product = productService.getProduct(vo);
		List<ProductVO> options = productService.getOption(product.getProductModel());
		System.out.println("모델명 : " + product.getProductModel());
		session.setAttribute("product", product);
		model.addAttribute("options", options);
		return "productInfoAdjust.jsp";
	}
	
	@RequestMapping(value = "/updateProduct.do")
	public String updateProduct(ProductVO vo) {
		productService.updateProduct(vo);
		return "getProductList.do";
	}

	@RequestMapping(value = "/deleteProduct.do", method=RequestMethod.POST)
	public String deleteProduct(ProductVO vo, @RequestParam(value="product-check", required=false) List<Integer> chk) {
		for(Integer productCode : chk) {
			productService.deleteProduct(productCode);
		}	
		return "getProductItemList.do";
	}

	@RequestMapping(value = "/getProduct.do")
	public String getProduct(ProductVO vo, @RequestParam(value="productModel", required=false) String model, HttpSession session) {
		ProductVO product = productService.getProduct(vo);
		session.setAttribute("product", product);
		List<String> productSize = productService.getSize(model);
		session.setAttribute("productSize", productSize);
		return "item-info.jsp";
	}

	@RequestMapping(value = "/getProductList.do")
	public String getProductList(ProductVO vo, Model model) {
		List<ProductVO> productList = productService.getProductList(vo);
		model.addAttribute("productList", productList);
		return "shop.jsp";
	}
	
	@RequestMapping(value ="/getProductItemList.do")
	public String getProductItemList(ProductVO vo, Model model, HttpSession session){
		if(vo.getSearchCode() == null && vo.getSearchName() == null) {
			vo.setSearchCode("");
			vo.setSearchName("");
		}
		List<ProductVO> productItemList = productService.getProductItemList(vo);
		model.addAttribute("productItemList", productItemList);
		model.addAttribute("productCategoryNum", vo.getProductCategoryNum());

        List<CategoryVO> categoryList = categoryService.getCategoryList();
        session.setAttribute("categoryList", categoryList);
        
		return "addProduct.jsp";
	}
	
	@RequestMapping(value = "/searchProduct.do")
	public String getProductSearchList(ProductVO vo, Model model) {
		List<ProductVO> searchProduct = productService.getSearchProduct(vo);
		String searchName = vo.getSearchName();
		ProductVO searchCount = productService.getSearchCount(vo);
		model.addAttribute("searchName", searchName);
		model.addAttribute("searchProduct", searchProduct);
		model.addAttribute("searchCount", searchCount.getSearchCnt());
		return "searchResult.jsp";
	}
}
