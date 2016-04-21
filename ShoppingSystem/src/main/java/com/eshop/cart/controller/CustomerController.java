/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.eshop.cart.controller;

import com.eshop.cart.controller.util.ErrorBean;
import com.eshop.cart.controller.util.ValidationUtil;
import com.eshop.cart.model.Customer;
import com.eshop.cart.service.CustomerFacade;
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
@Path("customer")
public class CustomerController {

    @Inject
    private Models model;
    @Inject
    private CustomerFacade facade;
    @Inject
    private BindingResult validationResult;
    @Inject
    private ErrorBean error;

    @GET
    @Path("new")
    @Controller
    public String emptyCustomer() {
        return "/view/customer/create.jsp";
    }

    @POST
    @Path("new")
    @Controller
    @ValidateOnExecution(type = ExecutableType.NONE)
    @CsrfValid
    public String createCustomer(@Valid
            @BeanParam Customer entity) {
        if (validationResult.isFailed()) {
            return ValidationUtil.getResponse(validationResult, error);
        }
        facade.create(entity);
        return "redirect:customer/list";
    }

    @GET
    @Path("update/{id}")
    @Controller
    public String editCustomer(@PathParam("id") Long id) {
        model.put("CUSTOMER", facade.find(id));
        return "/view/customer/update.jsp";
    }

    @POST
    @Path("update")
    @Controller
    @ValidateOnExecution(type = ExecutableType.NONE)
    @CsrfValid
    public String updateCustomer(@Valid
            @BeanParam Customer entity) {
        if (validationResult.isFailed()) {
            return ValidationUtil.getResponse(validationResult, error);
        }
        facade.edit(entity);
        return "redirect:customer/list";
    }

    @GET
    @Path("remove/{id}")
    @Controller
    public String removeCustomer(@PathParam("id") Long id) {
        facade.remove(facade.find(id));
        return "redirect:customer/list";
    }

    @GET
    @Path("{id}")
    @Controller
    public String findCustomer(@PathParam("id") Long id) {
        model.put("CUSTOMER", facade.find(id));
        return "/view/customer/view.jsp";
    }

    @GET
    @Path("list")
    @Controller
    public String findAllCustomer() {
        model.put("CUSTOMER_LIST", facade.findAll());
        return "/view/customer/list.jsp";
    }
    
}
