package com.cwa.shop.service.impl;

import com.cwa.shop.dao.ProductDAO;
import com.cwa.shop.dto.ProductDto;
import com.cwa.shop.model.Product;
import com.cwa.shop.service.ProductService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ServletContext servletContext;
    @Autowired
    private ProductDAO productDAO;

    @Override
    public void createProduct(ProductDto productDto) {

        Product product = new Product();
        BeanUtils.copyProperties(productDto,product);
        MultipartFile img = productDto.getImage();
        String imgName= img.getOriginalFilename();
        product.setImage(imgName);
        try {
            String webapproot= servletContext.getRealPath("/img/");
            String filename = webapproot + imgName;
            byte[] bytes = img.getBytes();
            Path path = Paths.get(filename);
            Files.write(path, bytes);
            productDAO.saveProduct(product);
        }catch (Exception e){
        }

    }

    @Override
    public void removeProduct(Product product) {
        productDAO.deleteProduct(product);
    }

    @Override
    public void editProduct(ProductDto productDto) {
        Product product = new Product();
        BeanUtils.copyProperties(productDto,product);
        MultipartFile img = productDto.getImage();
        String imgName= img.getOriginalFilename();
        product.setImage(imgName);
        try {
            String pathFile = servletContext.getRealPath("/img/"+imgName);
            byte[] bytes = img.getBytes();
            Path path = Paths.get(pathFile);
            Files.write(path,bytes);
            productDAO.updateProduct(product);
        }catch (Exception e){
            System.out.println(e);
        }
    }

    @Override
    public List<Product> getAllProduct() {
        return productDAO.findAll();
    }

    @Override
    public Product getProduct(int id) {
        return productDAO.findById(id);
    }

}
