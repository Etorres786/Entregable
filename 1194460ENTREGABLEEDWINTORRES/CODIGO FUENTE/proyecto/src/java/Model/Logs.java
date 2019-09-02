/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Date;
/**
 *
 * @author Edwin
 */
public class Logs{

    private static final long serialVersionUID = 1L;
    private Integer id;
    private Date fecha;
    private String rol;
    private String usuario;
    private String accion;

    public Logs() {
    }

    public Logs(Integer id) {
        this.id = id;
    }

    public Logs(Integer id, Date fecha, String rol, String usuario, String accion) {
        this.id = id;
        this.fecha = fecha;
        this.rol = rol;
        this.usuario = usuario;
        this.accion = accion;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getAccion() {
        return accion;
    }

    public void setAccion(String accion) {
        this.accion = accion;
    }
}
