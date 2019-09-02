/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Controller.ConectaDB;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author edwin
 */
public class AutoCompletar{
    
    public ArrayList<String> getNamesClientes(String find){
        ArrayList<String> names = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs= null;
        
        try {
            String sql="SELECT NOMBRE FROM PRODUCTOS WHERE NOMBRE LIKE ? LIMIT 10";
            ConectaDB c= new ConectaDB();
            Connection con=c.conectar();
            pst=con.prepareStatement(sql);
            pst.setString(1, find+"%");
            rs=pst.executeQuery();
            
            while (rs.next()) {
                names.add(rs.getString("NOMBRE"));  
            }
        } catch (Exception e) {
        }finally{
            try {
                
                if(rs !=null)rs.close();
                if(pst !=null)pst.close();
            } catch (Exception e) {
            }
        }
        return names;
    
    }
    
    
    
    
}
