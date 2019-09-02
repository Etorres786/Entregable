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

public class Ventas{

    private static final long serialVersionUID = 1L;
    private Integer id;
    private Date fecha;
    private boolean habilitado;
    private Clientes cedulaCliente;
    private Empleados cedulaEmpleado;

    public Ventas() {
    }

    public Ventas(Integer id) {
        this.id = id;
    }

    public Ventas(Integer id, Date fecha, boolean habilitado) {
        this.id = id;
        this.fecha = fecha;
        this.habilitado = habilitado;
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

    public boolean getHabilitado() {
        return habilitado;
    }

    public void setHabilitado(boolean habilitado) {
        this.habilitado = habilitado;
    }

    public Clientes getCedulaCliente() {
        return cedulaCliente;
    }

    public void setCedulaCliente(Clientes cedulaCliente) {
        this.cedulaCliente = cedulaCliente;
    }

    public Empleados getCedulaEmpleado() {
        return cedulaEmpleado;
    }

    public void setCedulaEmpleado(Empleados cedulaEmpleado) {
        this.cedulaEmpleado = cedulaEmpleado;
    }
    
}
