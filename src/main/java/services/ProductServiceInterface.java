/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package services;

import java.util.Set;
import models.Product;

/**
 *
 * @author George.Pasparakis
 */
public interface ProductServiceInterface {
    // CRUD
    Product create(); // name = NO NAME, desxcription = NO DESCRIPTION, price = -100
    Product create(String name, String description); // price = -100
    Product create(String name, String description, double price);
    
    Product findById(Long id);
    Set<Product> findAll();
    
    boolean delete(Long id);
}
