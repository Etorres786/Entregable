/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.Serializable;
import java.util.Collection;

import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Edwin
 */
public class Tipos{

    private static final long serialVersionUID = 1L;
    private Integer id;
    private String nombre;
    private boolean habilitado;
    private Collection<Productos> productosCollection;

    public Tipos() {
    }

    public Tipos(Integer id) {
        this.id = id;
    }

    public Tipos(Integer id, boolean habilitado) {
        this.id = id;
        this.habilitado = habilitado;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public boolean getHabilitado() {
        return habilitado;
    }

    public void setHabilitado(boolean habilitado) {
        this.habilitado = habilitado;
    }

    @XmlTransient
    public Collection<Productos> getProductosCollection() {
        return productosCollection;
    }

    public void setProductosCollection(Collection<Productos> productosCollection) {
        this.productosCollection = productosCollection;
    }
}
