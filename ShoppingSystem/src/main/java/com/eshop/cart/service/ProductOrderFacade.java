/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.eshop.cart.service;

import com.eshop.cart.model.ProductOrder;
import javax.ejb.Stateless;
import javax.inject.Named;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Gaurav Gupta
 */
@Stateless
@Named("productOrder")
public class ProductOrderFacade extends AbstractFacade<ProductOrder> {

    @PersistenceContext(unitName = "DEFAULT_PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ProductOrderFacade() {
        super(ProductOrder.class);
    }
    
}
