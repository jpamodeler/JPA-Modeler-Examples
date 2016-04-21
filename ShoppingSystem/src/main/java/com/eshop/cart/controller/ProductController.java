/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.eshop.cart.controller;

import com.eshop.cart.controller.util.ErrorBean;
import com.eshop.cart.controller.util.ValidationUtil;
import com.eshop.cart.model.Product;
import com.eshop.cart.service.ProductFacade;
import javax.inject.Inject;
import javax.mvc.Models;
import javax.mvc.annotation.Controller;
import javax.mvc.annotation.CsrfValid;
import javax.mvc.binding.BindingResult;
import javax.validation.Valid;
import javax.validation.executable.ExecutableType;
import javax.validation.executable.ValidateOnExecution;
import javax.ws.rs.BeanParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;

/**
 *
 * @author Gaurav Gupta
 */
@Path("product")
public class ProductController {

    @Inject
    private Models model;
    @Inject
    private ProductFacade facade;
    @Inject
    private BindingResult validationResult;
    @Inject
    private ErrorBean error;

    @GET
    @Path("new")
    @Controller
    public String emptyProduct() {
        return "/view/product/create.jsp";
    }

    @POST
    @Path("new")
    @Controller
    @ValidateOnExecution(type = ExecutableType.NONE)
    @CsrfValid
    public String createProduct(@Valid
            @BeanParam Product entity) {
        if (validationResult.isFailed()) {
            return ValidationUtil.getResponse(validationResult, error);
        }
        facade.create(entity);
        return "redirect:product/list";
    }

    @GET
    @Path("update/{id}")
    @Controller
    public String editProduct(@PathParam("id") Long id) {
        model.put("PRODUCT", facade.find(id));
        return "/view/product/update.jsp";
    }

    @POST
    @Path("update")
    @Controller
    @ValidateOnExecution(type = ExecutableType.NONE)
    @CsrfValid
    public String updateProduct(@Valid
            @BeanParam Product entity) {
        if (validationResult.isFailed()) {
            return ValidationUtil.getResponse(validationResult, error);
        }
        facade.edit(entity);
        return "redirect:product/list";
    }

    @GET
    @Path("remove/{id}")
    @Controller
    public String removeProduct(@PathParam("id") Long id) {
        facade.remove(facade.find(id));
        return "redirect:product/list";
    }

    @GET
    @Path("{id}")
    @Controller
    public String findProduct(@PathParam("id") Long id) {
        model.put("PRODUCT", facade.find(id));
        return "/view/product/view.jsp";
    }

    @GET
    @Path("list")
    @Controller
    public String findAllProduct() {
        model.put("PRODUCT_LIST", facade.findAll());
        return "/view/product/list.jsp";
    }
    
}
