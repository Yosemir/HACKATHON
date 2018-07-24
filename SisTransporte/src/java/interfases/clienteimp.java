
package interfases;

import Modelo.clienteM;
import java.util.List;


public interface clienteimp {
 
    public void agregarCli(clienteM cliente)throws Exception;
    
    List<clienteM> listcli()throws Exception;
    
    public void eliminar(clienteM cliente)throws Exception;
 
}

