
package com.alanlacan.modelo;



import com.alanlacan.modelo.detalleCompra;
import javax.persistence.*;
import java.util.List;

public class detalleCompraDAO {

    private EntityManagerFactory emf;
    private EntityManager em;

    public detalleCompraDAO() {
        emf = Persistence.createEntityManagerFactory("dominio");
        em = emf.createEntityManager();
    }

    public void crearDetalleCompra(detalleCompra detalle) {
        try {
            em.getTransaction().begin();
            em.persist(detalle); 
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            e.printStackTrace();
        }
    }

    public detalleCompra buscarDetalleCompra(int codigoDetalleCompra) {
        return em.find(detalleCompra.class, codigoDetalleCompra);
    }

    public void actualizarDetalleCompra(detalleCompra detalle) {
        try {
            em.getTransaction().begin();
            em.merge(detalle);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            e.printStackTrace();
        }
    }

    public void eliminarDetalleCompra(int codigoDetalleCompra) {
        try {
            detalleCompra detalle = em.find(detalleCompra.class, codigoDetalleCompra);
            if (detalle != null) {
                em.getTransaction().begin();
                em.remove(detalle); 
                em.getTransaction().commit();
            }
        } catch (Exception e) {
            em.getTransaction().rollback();
            e.printStackTrace();
        }
    }

    public List<detalleCompra> listarDetalleCompras() {
        return em.createQuery("SELECT d FROM detalleCompra d", detalleCompra.class).getResultList();
    }

    public void cerrar() {
        em.close();
        emf.close();
    }
}
