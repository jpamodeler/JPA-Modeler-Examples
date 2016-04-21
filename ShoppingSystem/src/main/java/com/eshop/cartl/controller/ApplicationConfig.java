/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.eshop.cartl.controller;

import java.util.Set;
import javax.ws.rs.core.Application;

/**
 *
 * @author Gaurav Gupta
 */
@javax.ws.rs.ApplicationPath("resources")
public class ApplicationConfig extends Application {

    @Override
    public Set<Class<?>> getClasses() {
        Set<Class<?>> resources = new java.util.HashSet<>();
        addRestResourceClasses(resources);
        return resources;
    }

    /**
     * Do not modify addRestResourceClasses() method.
     * It is automatically populated with
     * all resources defined in the project.
     * If required, comment out calling this method in getClasses().
     */
    private void addRestResourceClasses(Set<Class<?>> resources) {
        resources.add(com.eshop.cart.controller.CustomerController.class);
        resources.add(com.eshop.cart.controller.ProductController.class);
        resources.add(com.eshop.cart.controller.ProductOrderController.class);
        resources.add(com.eshop.cart.controller.util.CustomParamConverterProvider.class);
    }
    
}
