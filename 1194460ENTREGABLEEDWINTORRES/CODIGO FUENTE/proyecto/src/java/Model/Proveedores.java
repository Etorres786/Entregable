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
public class Proveedores{

    private static final long serialVersionUID = 1L;
    private Integer id;
    private String nit;
    private String razonSocial;
    private String nombreContacto;
    private String telefono;
    private String email;
    private String direccion;
    private String habilitado;

    public Proveedores() {
    }

    public Proveedores(Integer id) {
        this.id = id;
    }

    public Proveedores(Integer id, String razonSocial, String nombreContacto, String telefono, String email, String direccion, String habilitado) {
        this.id = id;
        this.razonSocial = razonSocial;
        this.nombreContacto = nombreContacto;
        this.telefono = telefono;
        this.email = email;
        this.direccion = direccion;
        this.habilitado = habilitado;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public String getRazonSocial() {
        return razonSocial;
    }

    public void setRazonSocial(String razonSocial) {
        this.razonSocial = razonSocial;
    }

    public String getNombreContacto() {
        return nombreContacto;
    }

    public void setNombreContacto(String nombreContacto) {
        this.nombreContacto = nombreContacto;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getHabilitado() {
        return habilitado;
    }

    public void setHabilitado(String habilitado) {
        this.habilitado = habilitado;
    }
}
