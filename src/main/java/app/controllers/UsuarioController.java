package app.controllers;
import app.models.TipoUsuario;
import app.models.Usuario;
import java.util.List;
import org.javalite.activeweb.AppController;
import org.javalite.activeweb.annotations.POST;

public class UsuarioController extends AppController {

    public void index() {
        session("nombre_usuario", getHttpServletRequest().getRemoteUser());
        session("puede_abm", getHttpServletRequest().isUserInRole("admin"));
        List<Usuario> res = Usuario.getActivos();
        view("filas", res); // Envio a la vista
    }

    public void eliminar() {
        Usuario usuario = new Usuario();
        usuario.eliminar(Integer.valueOf(getId()));
        redirect(UsuarioController.class);
    }

    public void ver() {
        Usuario datos_usuario = new Usuario();
        datos_usuario = Usuario.getById(Integer.valueOf(getId()));
        view("usuario", datos_usuario);
    }

    public void modificar() {
        Usuario datos_usuario = new Usuario();
        datos_usuario = Usuario.getById(Integer.valueOf(getId()));
        List<TipoUsuario> tipos = TipoUsuario.buscarTodos();
        view("usuario", datos_usuario, "tipos", tipos);

    }

    @POST
    public void procesarModificacion(){
        Usuario.modificar(params1st());

        redirect(UsuarioController.class);

    }

    public void agregar() {
        List<TipoUsuario> tipos = TipoUsuario.buscarTodos();
        view("tipos", tipos);
    }

    @POST
    public void procesarAgregar() {
        Usuario.agregar(params1st());
        redirect(UsuarioController.class);
    }

}
