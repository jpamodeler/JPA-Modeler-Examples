/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.eshop.cart.controller.util;

import javax.validation.ConstraintViolation;
import java.util.Set;
import javax.mvc.binding.BindingResult;

/**
 *
 * @author Gaurav Gupta
 */
public class ValidationUtil {

    public static String getResponse(BindingResult validationResult, ErrorBean error) {
        final Set<ConstraintViolation<?>> set = validationResult.getAllViolations();
        final ConstraintViolation<?> cv = set.iterator().next();
        final String property = cv.getPropertyPath().toString();
        error.setProperty(property.substring(property.lastIndexOf('.') + 1));
        error.setValue(cv.getInvalidValue());
        error.setMessage(cv.getMessage());
        return "/view/common/error.jsp";
    }
    
}
