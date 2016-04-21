/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.eshop.cart.controller;

import com.eshop.cart.controller.util.ErrorBean;
import com.eshop.cart.controller.util.ValidationUtil;
import com.eshop.cart.model.ProductOrder;
import com.eshop.cart.service.ProductOrderFacade;
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
@Path("productOrder")
public class ProductOrderController {

    @Inject
    private Models model;
    @Inject
    private ProductOrderFacade facade;
    @Inject
    private BindingResult validationResult;
    @Inject
    private ErrorBean error;

    @GET
    @Path("new")
    @Controller
    public String emptyProductOrder() {
        return "/view/productOrder/create.jsp";
    }

    @POST
    @Path("new")
    @Controller
    @ValidateOnExecution(type = ExecutableType.NONE)
    @CsrfValid
    public String createProductOrder(@Valid
            @BeanParam ProductOrder entity) {
        if (validationResult.isFailed()) {
            return ValidationUtil.getResponse(validationResult, error);
        }
        facade.create(entity);
        return "redirect:productOrder/list";
    }

    @GET
    @Path("update/{id}")
    @Controller
    public String editProductOrder(@PathParam("id") Long id) {
        model.put("PRODUCT_ORDER", facade.find(id));
        return "/view/productOrder/update.jsp";
    }

    @POST
    @Path("update")
    @Controller
    @ValidateOnExecution(type = ExecutableType.NONE)
    @CsrfValid
    public String updateProductOrder(@Valid
            @BeanParam ProductOrder entity) {
        if (validationResult.isFailed()) {
            return ValidationUtil.getResponse(validationResult, error);
        }
        facade.edit(entity);
        return "redirect:productOrder/list";
    }

    @GET
    @Path("remove/{id}")
    @Controller
    public String removeProductOrder(@PathParam("id") Long id) {
        facade.remove(facade.find(id));
        return "redirect:productOrder/list";
    }

    @GET
    @Path("{id}")
    @Controller
    public String findProductOrder(@PathParam("id") Long id) {
        model.put("PRODUCT_ORDER", facade.find(id));
        return "/view/productOrder/view.jsp";
    }

    @GET
    @Path("list")
    @Controller
    public String findAllProductOrder() {
        model.put("PRODUCT_ORDER_LIST", facade.findAll());
        return "/view/productOrder/list.jsp";
    }
    
}
