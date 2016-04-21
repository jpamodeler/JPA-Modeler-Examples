/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.eshop.cart.controller.util;

import java.util.logging.Logger;
import javax.enterprise.event.Observes;
import javax.inject.Inject;
import javax.mvc.event.AfterControllerEvent;
import javax.mvc.event.AfterProcessViewEvent;
import javax.mvc.event.BeforeControllerEvent;

/**
 *
 * @author Gaurav Gupta
 */
public class ControllerEventObserver {

    @Inject
    private Logger logger;

    private void onAfterProcessView(@Observes AfterProcessViewEvent e) {
        logger.info(() -> "View engine: " + e.getEngine());
    }

    private void onBeforeController(@Observes BeforeControllerEvent e) {
        logger.info(() -> "Controller matched for " + e.getUriInfo().getRequestUri());
    }

    private void onAfterController(@Observes AfterControllerEvent e) {
        logger.info(() -> "Controller executed : " + e.getResourceInfo().getResourceMethod());
    }
    
}
