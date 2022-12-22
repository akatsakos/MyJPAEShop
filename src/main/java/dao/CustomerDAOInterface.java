/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package dao;

import java.util.Set;
import models.Customer;

/**
 *
 * @author George.Pasparakis
 */
public interface CustomerDAOInterface {
    // CRUD
    Customer create(String firstName, String lastName, String email);
    
    Customer findById(Integer id);
    
    Set<Customer> findAll();
    Set<Customer> findAllEager();
    
    boolean delete(Integer id);
    
    boolean buyProduct(Integer customerId, Long productId);
    
}
