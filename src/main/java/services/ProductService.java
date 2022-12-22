/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package services;

import dao.ProductDAO;
import java.util.Set;
import models.Product;

/**
 *
 * @author George.Pasparakis
 */
public class ProductService implements ProductServiceInterface {
    private final ProductDAO dao;
    
    public ProductService() {
        dao = new ProductDAO();
    }
    
    @Override
    public Product create() {
        return(dao.create("NO NAME", "NO DESCRIPTION", -100));
    }

    @Override
    public Product create(String name, String description) {
        return(dao.create(name, description, -100));
    }

    @Override
    public Product create(String name, String description, double price) {
        if(name.equalsIgnoreCase("") && description.equalsIgnoreCase("") && price <= 0) {
            return(null);
        }
        return(dao.create(name, description, price));
    }

    @Override
    public Product findById(Long id) {
        return(dao.findById(id));
    }

    @Override
    public Set<Product> findAll() {
        return(dao.findAll());
    }

    @Override
    public boolean delete(Long id) {
        return(dao.delete(id));
    }
    
}
