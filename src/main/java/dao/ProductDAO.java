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
import models.Product;

/**
 *
 * @author George.Pasparakis
 */
public class ProductDAO implements ProductDAOInterface {
    private final EntityManagerFactory emf;
    
    public ProductDAO() {
        emf = Persistence.createEntityManagerFactory("com.pcedu_MyJPAEShop_war_1.0-SNAPSHOTPU");
    }

    @Override
    public Product create(String name, String description, double price) {
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        Product p = new Product(name, description, price);
        em.persist(p);
        em.getTransaction().commit();
        em.close();
        return(p);
    }

    @Override
    public Product findById(Long id) {
        EntityManager em = emf.createEntityManager();
        Product p = em.find(Product.class, id);
        em.close();
        return(p);
    }

    @Override
    public Set<Product> findAll() {
        EntityManager em = emf.createEntityManager();
        Query query = em.createQuery("SELECT p FROM products p"); // JPQL
        Set<Product> products = new HashSet<>(query.getResultList());
        em.close();
        return(products);
    }

    @Override
    public boolean delete(Long id) {
        EntityManager em = emf.createEntityManager();
        Product p =  em.find(Product.class, id);
        if(p != null) {
            em.getTransaction().begin();
            em.remove(p);
            em.getTransaction().commit();
            em.close();
            return(true);
        }
        em.close();
        return(false);
    }
    
}
