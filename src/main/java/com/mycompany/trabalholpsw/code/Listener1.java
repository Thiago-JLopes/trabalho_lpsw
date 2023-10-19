/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.trabalholpsw.code;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.http.HttpSessionAttributeListener;
import jakarta.servlet.http.HttpSessionBindingEvent;
import jakarta.servlet.http.HttpSessionEvent;
import jakarta.servlet.http.HttpSessionListener;

/**
 * Web application lifecycle listener.
 *
 * @author ciro
 */
public class Listener1 implements ServletContextListener, HttpSessionListener, HttpSessionAttributeListener {

 
    ServletContext context;

    @Override
    protected Object clone() throws CloneNotSupportedException {
        return super.clone(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println(">>> Context Initialized");

        context = sce.getServletContext();
        context.setAttribute("count", 0);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void sessionCreated(HttpSessionEvent se) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        System.out.println(">>> Session Created");
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        System.out.println(">>> Session Destroyed");
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        Integer count = (Integer) context.getAttribute("count");

        if (count > 0) {
            count--;

            context.setAttribute("count", count);

            System.out.println("usuarios >> " + count);
        }
    }

    @Override
    public void attributeAdded(HttpSessionBindingEvent event) {
        System.out.println(">>> Attribute Added: " + event.getName());

        Integer count = (Integer) context.getAttribute("count");

        if ("loggedIn".equals(event.getName())) {
            count++;

            context.setAttribute("count", count);

            System.out.println("usuarios >> " + count);
        }
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent event) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        System.out.println(">>> Attribute Removed: " + event.getName());
    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent event) {
        System.out.println(">>> AttributeReplaced: " + event.getValue());

        String valorAntigo = (String) event.getValue();
        String novoValor = (String) event.getSession().getAttribute("loggedIn");
        
        System.out.println("novo valor de loggedIn " + novoValor);

        Integer count = (Integer) context.getAttribute("count");

        // Se e o valor antigo era "TRUE"
        if(novoValor.equals("FALSE") && valorAntigo.equals("TRUE") && count > 0) {
            count--;
            context.setAttribute("count", count);
            
            System.out.println("usuarios >> " + count);
        }
        // Se o valor antigo era "FALSE"
        else if(novoValor.equals("TRUE") && valorAntigo.equals("FALSE")) {
            count++;
            context.setAttribute("count", count);
            System.out.println("usuarios >> " + count);
        }
    }
}
