
package com.alanlacan.modelo;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class VentaDAO {
    private EntityManagerFactory emf;

    private EntityManager em;
 
    public VentaDAO() {
        emf = Persistence.createEntityManagerFactory("dominio");
        em = emf.createEntityManager();
    }
    
    public void crearVenta(Venta venta) {
        try {
            em.getTransaction().begin();
            em.persist(venta); 
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            e.printStackTrace();
        }

    }
 
    public Venta buscarVenta(int codigoVenta) {
        return em.find(Venta.class, codigoVenta);
    }
    
    
    public void actualizarVenta(Venta venta) {
        try {
            em.getTransaction().begin();
            em.merge(venta);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            e.printStackTrace();
        }
    }
 
    public void eliminarVenta(int codigoVenta) {

        try {
           Venta venta = em.find(Venta.class, codigoVenta);
            if (venta != null) {
                em.getTransaction().begin();
                em.remove(venta); 
                em.getTransaction().commit();
            }

        } catch (Exception e) {
            em.getTransaction().rollback();
            e.printStackTrace();
        }
    }
 
    public List<Venta> listarVenta() {
        return em.createQuery("SELECT v FROM Venta v", Venta.class).getResultList();
    }
 
    public void cerrar() {
        em.close();
        emf.close();
    }
 
}
