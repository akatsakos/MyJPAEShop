/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package dao;

import java.util.Set;
import models.Product;

/**
 *
 * @author George.Pasparakis
 */
public interface ProductDAOInterface {
    // CRUD
    Product create(String name, String description, double price);
    
    Product findById(Long id);
    Set<Product> findAll();
    
    boolean delete(Long id);
}
