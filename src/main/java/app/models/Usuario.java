package app.models;

import java.util.Date;
import java.util.List;
import java.util.Map;
import org.javalite.activejdbc.Model;
import org.javalite.activejdbc.annotations.BelongsTo;
import org.javalite.activejdbc.annotations.IdName;
import org.javalite.activejdbc.annotations.Table;

@Table("sistema.usuario")
@BelongsTo(foreignKeyName = "tipo_usuario_id", parent = TipoUsuario.class)
@IdName("id")
public class Usuario extends Model {

    public static List<Usuario> buscarTodos() {
        List<Usuario> usuarios = Usuario.findAll()
                .include(TipoUsuario.class);
        return usuarios;
    }
    
    public static List<Usuario> getActivos() {
        List<Usuario> usuarios = Usuario
                .where("fecha_baja is null")
                .include(TipoUsuario.class);
        return usuarios;
    }

    public static Usuario getById(int id) {
        Usuario usuario = Usuario.findById(id);
        return usuario;
    }

    public String getNombreCompleto() {
        return getString("nombre") + " " + getString("apellido");
    }

    public TipoUsuario getTipoUsuario() {
        return parent(TipoUsuario.class);
    }

    public void eliminar(Integer id) {
        Usuario usuario = Usuario.findById(id);
        if (usuario != null) {
            java.sql.Timestamp fechaBaja = new java.sql.Timestamp(new Date().getTime());
            usuario.set("fecha_baja", fechaBaja);
            usuario.saveIt();
        }
    }

    public static void modificar(Map<String, String> params1st){
        
        Usuario usr = Usuario.findById(Integer.valueOf(params1st.get("id")));
        usr
                .set("nombre", params1st.get("nombre"), "apellido", params1st.get("apellido"), "alias", params1st.get("alias"), "email_principal", params1st.get("email_principal"), "email_secundario", params1st.get("email_secundario"), "nro_celular", Integer.valueOf(params1st.get("nro_celular")), "tipo_usuario_id", Integer.valueOf(params1st.get("tipo_usuario_id")))
                .saveIt();
    }

    public static void agregar(Map<String, String> params1st) {
        Usuario usr = new Usuario();
        usr
                .set("nombre", params1st.get("nombre"), "apellido", params1st.get("apellido"), "alias", params1st.get("alias"), "contraseña", params1st.get("contraseña"), "email_principal", params1st.get("email_principal"), "email_secundario", params1st.get("email_secundario"), "nro_celular", Integer.valueOf(params1st.get("nro_celular")), "tipo_usuario_id", Integer.valueOf(params1st.get("tipo_usuario_id")))
                .setDate("fecha_alta", new Date())
                .saveIt();

    }

}
