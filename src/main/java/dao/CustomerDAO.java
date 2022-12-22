/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import models.Customer;
import models.Product;

/**
 *
 * @author George.Pasparakis
 */
public class CustomerDAO implements CustomerDAOInterface {

    private final EntityManagerFactory emf;
    
    public CustomerDAO() {
        emf = Persistence.createEntityManagerFactory("com.pcedu_MyJPAEShop_war_1.0-SNAPSHOTPU");
    }

    @Override
    public Customer create(String firstName, String lastName, String email) {
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        Customer c = new Customer(firstName, lastName, email);
//        c.getProducts().add(new Product("Product 2", "Product 2 Description", 200));
        em.persist(c);
        em.getTransaction().commit();
        em.close();
        return(c);
    }

    @Override
    public Customer findById(Integer id) {
        EntityManager em = emf.createEntityManager();
        Customer c = em.find(Customer.class, id);
        em.close();
        return(c);
    }

    @Override
    public Set<Customer> findAll() {
        EntityManager em = emf.createEntityManager();
        Query query = em.createQuery("SELECT c FROM customers c"); // JPQL
        Set<Customer> customers = new HashSet<>(query.getResultList());
        em.close();
        return(customers);
    }
    
    @Override
    public Set<Customer> findAllEager() {
        EntityManager em = emf.createEntityManager();
        Query query = em.createQuery("SELECT c FROM customers c JOIN FETCH c.products"); // JPQL
        Set<Customer> customers = new HashSet<>(query.getResultList());
        em.close();
        return(customers);
    }

    @Override
    public boolean delete(Integer id) {
        EntityManager em = emf.createEntityManager();
        Customer c =  em.find(Customer.class, id);
        if(c != null) {
            em.getTransaction().begin();
            em.remove(c);
            em.getTransaction().commit();
            em.close();
            return(true);
        }
        em.close();
        return(false);
    }

    @Override
    public boolean buyProduct(Integer customerId, Long productId) {
        EntityManager em = emf.createEntityManager();
        Customer c =  em.find(Customer.class, customerId);
        Product p =  em.find(Product.class, productId);
        if(c != null && p != null) {
            em.getTransaction().begin();
            c.getProducts().add(p);
            em.getTransaction().commit();
            em.close();
            return(true);
        }
        em.close();
        return(false);
    }

    
    
}
