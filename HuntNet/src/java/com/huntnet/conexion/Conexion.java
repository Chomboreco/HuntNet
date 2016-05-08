/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.huntnet.conexion;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author eddy_
 */
public class Conexion {

    private Session session;
    private Transaction transaction;

    public Conexion() {
        this.session = HibernateUtil.getSessionFactory().openSession();
        this.transaction = this.session.beginTransaction();
    }

    /**
     *
     * @return
     */
    public Session getSession() {
        return session;
    }

    /**
     *
     * @param session
     */
    public void setSession(Session session) {
        this.session = session;
    }

    /**
     *
     * @return
     */
    public Transaction getTransaction() {
        return transaction;
    }

    /**
     *
     * @param transaction
     */
    public void setTransaction(Transaction transaction) {
        this.transaction = transaction;
    }

    /**
     *
     */
    public void closeSession() {
        this.session.close();
    }

    /**
     *
     * @param he
     */
    public void catchException(HibernateException he) {
        if (this.getTransaction() != null && this.getTransaction().isActive()) {
            this.getTransaction().rollback();
        }
        throw new HibernateException("[ERROR 1] Ocurrió un error al acceder a la base de datos: " + he.getMessage());
    }
}
