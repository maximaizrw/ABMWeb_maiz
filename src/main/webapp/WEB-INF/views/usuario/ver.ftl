<div class="container mt-5">
    <a href="${context_path}/usuario/" class="btn btn-custom mb-3"><i class="fas fa-arrow-left"></i> Volver al
        Listado</a>

    <div class="card">
        <div class="card-body">
            <h5 class="card-title">Información del Usuario</h5>
            <hr>
            <div class="row">
                <div class="col-md-6">
                    <p><strong>ID:</strong> ${usuario.id}</p>
                    <p><strong>Nombre Completo:</strong> ${usuario.nombreCompleto}</p>
                    <p><strong>Alias:</strong> ${usuario.alias}</p>
                    <p><strong>Contraseña:</strong> ${usuario.contraseña}</p>
                </div>
                <div class="col-md-6">
                    <p><strong>Email Principal:</strong> ${usuario.email_principal}</p>
                    <p><strong>Email Secundario:</strong> ${usuario.email_secundario}</p>
                    <p><strong>Número de Celular:</strong> ${usuario.nro_celular}</p>
                    <p><strong>Tipo de Usuario:</strong> ${usuario.tipoUsuario.descripcion}</p>
                    <p><strong>Fecha de alta:</strong> ${usuario.fecha_alta}
                </div>
            </div>
        </div>
    </div>