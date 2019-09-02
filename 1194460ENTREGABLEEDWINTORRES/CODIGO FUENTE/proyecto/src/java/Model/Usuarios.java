/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Edwin
 */

public class Usuarios{

    private static final long serialVersionUID = 1L;
    private Integer cedula;
    private String nombre;
    private String clave;
    private boolean habilitado;
    private String rolId;

    public Usuarios() {
    }

    public Usuarios(Integer cedula) {
        this.cedula = cedula;
    }

    public Usuarios(Integer cedula, String nombre, String clave, boolean habilitado) {
        this.cedula = cedula;
        this.nombre = nombre;
        this.clave = clave;
        this.habilitado = habilitado;
    }

    public Integer getCedula() {
        return cedula;
    }

    public void setCedula(Integer cedula) {
        this.cedula = cedula;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public boolean getHabilitado() {
        return habilitado;
    }

    public void setHabilitado(boolean habilitado) {
        this.habilitado = habilitado;
    }

    public String getRolId() {
        return rolId;
    }

    public void setRolId(String rolId) {
        this.rolId = rolId;
    }
}
