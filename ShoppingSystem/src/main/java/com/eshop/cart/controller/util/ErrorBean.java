/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.eshop.cart.controller.util;

import javax.enterprise.context.RequestScoped;
import javax.inject.Named;

/**
 *
 * @author Gaurav Gupta
 */
@Named
@RequestScoped
public class ErrorBean {
    private String message;
    private Object value;
    private String property;

    public String getProperty() {
        return property;
    }

    public void setProperty(String property) {
        this.property = property;
    }

    public Object getValue() {
        return value;
    }

    public void setValue(Object value) {
        this.value = value;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    
}
