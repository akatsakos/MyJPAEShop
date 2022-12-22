/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

import java.util.List;
import models.Customer;
import models.Product;

/**
 *
 * @author George.Pasparakis
 */
public class CustomerOrderedProducts {
    private Customer customer;
    private List<Product> orderedProducts;

    public CustomerOrderedProducts() {
    }

    public CustomerOrderedProducts(Customer customer, List<Product> orderedProducts) {
        this.customer = customer;
        this.orderedProducts = orderedProducts;
    }

    public List<Product> getOrderedProducts() {
        return orderedProducts;
    }

    public void setOrderedProducts(List<Product> orderedProducts) {
        this.orderedProducts = orderedProducts;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("CustomerOrderedProducts{");
        sb.append("customer=").append(customer);
        sb.append(", orderedProducts=").append(orderedProducts);
        sb.append('}');
        return sb.toString();
    }
    
    
    
}
