package app.models;

import java.util.List;
import org.javalite.activejdbc.Model;
import org.javalite.activejdbc.annotations.Table;

@Table("sistema.tipo_usuario")
public class TipoUsuario extends Model {
     
     public static List<TipoUsuario> buscarTodos() {
        return TipoUsuario.findAll();
    }
     
     public String getDescripcion() {
        return getString("descripcion");
    }

}
