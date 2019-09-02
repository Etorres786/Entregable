/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Collection;
import javax.xml.bind.annotation.XmlTransient;
/**
 *
 * @author Edwin
 */
public class Productos{

    private static final long serialVersionUID = 1L;
    private Integer id;
    private String nombre;
    private int valor;
    private String habilitado;
    private Collection<DetallesVenta> detallesVentaCollection;

    private String tipoId;

    public Productos() {
    }

    public Productos(Integer id) {
        this.id = id;
    }

    public Productos(Integer id, int valor, String habilitado) {
        this.id = id;
        this.valor = valor;
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

    public int getValor() {
        return valor;
    }

    public void setValor(int valor) {
        this.valor = valor;
    }

    public String getHabilitado() {
        return habilitado;
    }

    public void setHabilitado(String habilitado) {
        this.habilitado = habilitado;
    }

    @XmlTransient
    public Collection<DetallesVenta> getDetallesVentaCollection() {
        return detallesVentaCollection;
    }

    public void setDetallesVentaCollection(Collection<DetallesVenta> detallesVentaCollection) {
        this.detallesVentaCollection = detallesVentaCollection;
    }

    public String getTipoId() {
        return tipoId;
    }

    public void setTipoId(String tipoId) {
        this.tipoId = tipoId;
    }
}
