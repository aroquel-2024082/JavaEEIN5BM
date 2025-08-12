package com.alanlacan.modelo;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class ProveedorDAO {

    private EntityManagerFactory emf;
    private EntityManager em;

    public ProveedorDAO() {
        emf = Persistence.createEntityManagerFactory("dominio");
        em = emf.createEntityManager();
    }

    // Agregar proveedor
    public void agregarProveedor(Proveedor proveedor) {
        try {
            em.getTransaction().begin();
            em.persist(proveedor);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            System.out.println("Error al agregar proveedor: " + e.getMessage());
        }
    }

    // Buscar proveedor por ID
    public Proveedor buscarProveedorPorId(int codigoProveedor) {
        return em.find(Proveedor.class, codigoProveedor);
    }

    // Actualizar proveedor
    public void actualizarProveedor(Proveedor proveedor) {
        try {
            em.getTransaction().begin();
            em.merge(proveedor);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            System.out.println("Error al actualizar proveedor: " + e.getMessage());
        }
    }

    // Eliminar proveedor
    public void eliminarProveedor(int codigoProveedor) {
        try {
            Proveedor proveedor = em.find(Proveedor.class, codigoProveedor);
            if (proveedor != null) {
                em.getTransaction().begin();
                em.remove(proveedor);
                em.getTransaction().commit();
            }
        } catch (Exception e) {
            em.getTransaction().rollback();
            System.out.println("Error al eliminar proveedor: " + e.getMessage());
        }
    }

    // Listar todos los proveedores
    public List<Proveedor> listarProveedores() {
        TypedQuery<Proveedor> query = em.createQuery("SELECT p FROM Proveedor p", Proveedor.class);
        return query.getResultList();
    }

    // Cerrar recursos
    public void cerrar() {
        em.close();
        emf.close();
    }
}


