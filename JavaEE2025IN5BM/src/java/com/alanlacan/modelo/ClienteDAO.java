package com.alanlacan.modelo;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class ClienteDAO {
    
    private EntityManagerFactory emf;
    private EntityManager em;

    public ClienteDAO() {
        emf = Persistence.createEntityManagerFactory("dominio");
        em = emf.createEntityManager();
    }

    public void crearCliente(Cliente cliente) {
        try {
            em.getTransaction().begin();
            em.persist(cliente); 
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            e.printStackTrace();
        }
    }

    public Cliente buscarCliente(int codigoCliente) {
        return em.find(Cliente.class, codigoCliente);
    }

    public void actualizarCliente(Cliente cliente) {
        try {
            em.getTransaction().begin();
            em.merge(cliente);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            e.printStackTrace();
        }
    }

    public void eliminarCliente(int codigoCliente) {
        try {
            Cliente cliente = em.find(Cliente.class, codigoCliente);
            if (cliente != null) {
                em.getTransaction().begin();
                em.remove(cliente); 
                em.getTransaction().commit();
            }
        } catch (Exception e) {
            em.getTransaction().rollback();
            e.printStackTrace();
        }
    }

    public List<Cliente> listarClientes() {
        return em.createQuery("SELECT c FROM Cliente c", Cliente.class).getResultList();
    }

    public void cerrar() {
        em.close();
        emf.close();
    }
}
