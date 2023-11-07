package app.controllers;

import org.javalite.activeweb.AppController;

public class HomeController extends AppController {

    public void index() {

    }
    
    public void cerrar() {
        session().invalidate();
        redirect();
    }

}
