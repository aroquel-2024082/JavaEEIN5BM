package com.alanlacan.modelo;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class EmpleadoDAO {
    
    private EntityManagerFactory emf;
    private EntityManager em;
    
    public EmpleadoDAO() {
        emf = Persistence.createEntityManagerFactory("dominio");
        em = emf.createEntityManager();
    }
 
    public void crearEmpleado(Empleado empleado) {
        try {
            em.getTransaction().begin();
            em.persist(empleado); 
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            e.printStackTrace();
        }
    }
 
    public Empleado buscarEmpleado(int codigoEmpleado) {
        return em.find(Empleado.class, codigoEmpleado);
    }
 
    public void actualizarEmpleado(Empleado empleado) {
        try {
            em.getTransaction().begin();
            em.merge(empleado);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            e.printStackTrace();
        }
    }
 
    public void eliminarEmpleado(int codigoEmpleado) {
        try {
            Empleado empleado = em.find(Empleado.class, codigoEmpleado);
            if (empleado != null) {
                em.getTransaction().begin();
                em.remove(empleado); 
                em.getTransaction().commit();
            }
        } catch (Exception e) {
            em.getTransaction().rollback();
            e.printStackTrace();
        }
    }
 
    public List<Empleado> listarEmpleado() {
        return em.createQuery("SELECT e From Empleado e", Empleado.class).getResultList();
    }
 
    public void cerrar() {
        em.close();
        emf.close();
    }
}
