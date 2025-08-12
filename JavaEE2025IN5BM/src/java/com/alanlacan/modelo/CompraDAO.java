package com.alanlacan.modelo;

import com.alanlacan.modelo.Compra;

import javax.persistence.*;
import java.util.List;

public class CompraDAO {

    private EntityManagerFactory emf;
    private EntityManager em;

    public CompraDAO() {
        emf = Persistence.createEntityManagerFactory("dominio"); // Asegúrate que el persistence unit "dominio" esté en persistence.xml
        em = emf.createEntityManager();
    }

    public void crearCompra(Compra compra) {
        try {
            em.getTransaction().begin();
            em.persist(compra);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            e.printStackTrace();
        }
    }

    public Compra buscarCompra(int codigoCompra) {
        return em.find(Compra.class, codigoCompra);
    }

    public void actualizarCompra(Compra compra) {
        try {
            em.getTransaction().begin();
            em.merge(compra);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            e.printStackTrace();
        }
    }

    public void eliminarCompra(int codigoCompra) {
        try {
            Compra compra = em.find(Compra.class, codigoCompra);
            if (compra != null) {
                em.getTransaction().begin();
                em.remove(compra);
                em.getTransaction().commit();
            }
        } catch (Exception e) {
            em.getTransaction().rollback();
            e.printStackTrace();
        }
    }

    public List<Compra> listarCompras() {
        return em.createQuery("SELECT c FROM Compra c", Compra.class).getResultList();
    }

    public void cerrar() {
        em.close();
        emf.close();
    }
}
