package com.cwa.shop.validator;

import com.cwa.shop.dto.ProductDto;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class ProductValidator implements Validator {
    @Override
    public boolean supports(Class<?> aClass) {
        return ProductDto.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
//        ProductDto product = (ProductDto) o;
//        if (product.getCode()==null){
//            errors.rejectValue("code","NotEmpty");
//        }
//        if (product.getCode().trim().length() == 0) {
//            errors.rejectValue("code", "NotEmpty");
//        }
//        if (product.getName().trim().length()==0){
//            errors.rejectValue("name", "NotEmpty");
//        }
//        if (product.getPrice() == Double.valueOf(0)){
//            errors.rejectValue("price", "NotEmpty");
//        }
//        if (product.getImage()==null){
//            errors.rejectValue("image", "NotEmpty");
//        }

    }
}
