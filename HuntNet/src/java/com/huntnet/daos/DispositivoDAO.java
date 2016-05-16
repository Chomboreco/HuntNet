/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.huntnet.daos;

import com.huntnet.conexion.Conexion;
import com.huntnet.entity.Dispositivo;
import java.util.ArrayList;
import org.hibernate.HibernateException;

/**
 *
 * @author eddy_
 */
public class DispositivoDAO {

    public boolean nuevo(Dispositivo dispositivo) {
        boolean atom = false;
        Conexion conexion = new Conexion();

        try {
            conexion.getSession().save(dispositivo);
            conexion.getTransaction().commit();

            atom = true;
        }
        catch (HibernateException he) {
            atom = false;
            conexion.catchException(he);
        }
        finally {
            conexion.closeSession();
        }

        return atom;
    }

    public Dispositivo buscar(String ip) {
        Conexion conexion = new Conexion();
        Dispositivo dispositivo = null;

        try {
            dispositivo = (Dispositivo) conexion.getSession().get(Dispositivo.class, ip);
            conexion.getTransaction().commit();

        }
        catch (HibernateException he) {
            conexion.catchException(he);
        }
        finally {
            conexion.closeSession();
        }

        return dispositivo;
    }
    
    public ArrayList readAll() {
        Conexion conexion = new Conexion();
        ArrayList<Dispositivo> dispositivos = new ArrayList<>();

        try {
            dispositivos = (ArrayList<Dispositivo>) conexion.getSession().createQuery("from Dispositivo").list();

            if (dispositivos == null) {
                return null;
            }
            
            conexion.getTransaction().commit();
        }
        catch (HibernateException he) {
            conexion.catchException(he);
        }
        finally {
            conexion.closeSession();
        }

        return dispositivos;
    }
}
