
package Dao;

import Modelo.clienteM;
import interfases.clienteimp;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class clienteD extends Dao implements clienteimp{

    @Override
    public void agregarCli(clienteM cliente) throws Exception {
        this.conexion();
        try {
            String sql="";
            PreparedStatement ps = this.getCn().prepareStatement(sql);
            ps.setString(1, cliente.getNomCli());
            ps.setString(2, cliente.getApeCli());
            ps.setString(3, cliente.getTipoDoc());
            ps.setString(4, cliente.getDocCli());
            ps.setString(5, cliente.getNroboleta());
            ps.setString(6, cliente.getFechaReserva());
            ps.setString(7, cliente.getFechDeViaje());
            ps.setString(8, cliente.getFechPost());
            ps.setString(9, cliente.getHoradeviaje());
            ps.setString(10, cliente.getTipoDeServi());
            ps.setString(11, cliente.getNroAsien());
            ps.setString(12, cliente.getCanti());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
            this.cerrar();
        }
    }

    @Override
    public List<clienteM> listcli() throws Exception {
        List<clienteM> list;
        ResultSet rs;
        try {
            String sql="select * from Cliente";
            PreparedStatement ps = this.getCn().prepareStatement(sql);
            rs = ps.executeQuery();
            clienteM cliente;
            list = new ArrayList<>();
            while(rs.next()){
                cliente = new clienteM();
                cliente.setNomCli(rs.getString("nomClien"));
                cliente.setApeCli(rs.getString("apeClien"));
                cliente.setTipoDoc(rs.getString("tipoDoc"));
                cliente.setDocCli(rs.getString("docClien"));
                cliente.setNroboleta(rs.getString("nroBoleta"));
                cliente.setFechaReserva(rs.getString("fechaReserva"));
                cliente.setFechDeViaje(rs.getString("fechaDeViaje"));
                cliente.setTipoDeServi(rs.getString("tipoServicio"));
                cliente.setNroAsien(rs.getString("nroAsientos"));
                cliente.setCanti(rs.getString("Cantidad"));
                list.add(cliente);
            }
            return list;
        } catch (Exception e) {
            throw e;
        }
    }

    @Override
    public void eliminar(clienteM cliente) throws Exception {
       this.conexion();
        try {
            
        } catch (Exception e) {
        }
    }

   
    
}
