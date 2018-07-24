
package Controlador;

import Dao.clienteD;
import Modelo.clienteM;
import java.util.List;
import javax.faces.bean.SessionScoped;
import javax.inject.Named;
import lombok.Data;

@Data
@Named(value = "clienteC")
@SessionScoped
public class clienteC {
    
    clienteM cliente= new clienteM();
    List<clienteM> listcli;
    
    
    public void agregar () throws Exception{
        clienteD dao;
        try {
            dao = new clienteD();
            dao.agregarCli(cliente);
        } catch (Exception e) {
            throw e;
        }
    }
    
    
    public void listar(){
        clienteD dao;
        try {
            dao = new clienteD();
            listcli = dao.listcli();
        } catch (Exception e) {
        }
    }
    
}
