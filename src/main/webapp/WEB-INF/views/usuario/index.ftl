<script src="${context_path}/js/eliminar.js"></script>
<div class="container mt-4">
    <div class="row">
        <div class="col-md-12">
            <h2 class="mb-4">Listado de usuarios</h2>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre Completo</th>
                        <th>Alias</th>
                        <th>Email</th>
                        <th>Email Secundario</th>
                        <th>Teléfono</th>
                        <th>Tipo Usuario</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <#list filas as item>
                        <tr>
                            <td>${item.id}</td>
                            <td>${item.nombreCompleto}</td>
                            <td>${item.alias}</td>
                            <td>${item.email_principal}</td>
                            <td>${item.email_secundario}</td>
                            <td>${item.nro_celular}</td>
                            <td>${item.tipoUsuario.descripcion}</td>
                            <td>
                                <a href="${context_path}/usuario/ver/${item.id}"
                                    class="btn btn-primary btn-sm ver-datos-btn">Ver datos</a>
                                <#if session.puede_abm!false>
                                    <a href="${context_path}/usuario/modificar/${item.id}"
                                        class="btn btn-warning btn-sm" role="button" data-bs-toggle="tooltip"
                                        title="Editar">
                                        <i class="bi bi-pencil-square"></i>
                                    </a>
                                    <button id="eliminar-btn" class="btn btn-danger btn-sm eliminar-btn"
                                        data-bs-toggle="modal" data-bs-target="#deleteModal" data-id="${item.id}"
                                        title="Eliminar">
                                        <i class="bi bi-trash"></i>
                                    </button>

                                    <@render partial="eliminar" a_fruit=item.id />
                                </#if>
                            </td>
                        </tr>
                    </#list>
                </tbody>
            </table>
            <#if session.puede_abm!false>
                <a href="${context_path}/usuario/agregar" class="btn btn-success" role="button">
                    <i class="bi bi-plus"></i> Agregar Usuario
                </a>
            </#if>
        </div>
    </div>
</div>
