<script src="${context_path}/js/form-validation.js"></script>
<div class="container mt-5">
    <a href="${context_path}/usuario/" class="btn btn-custom mb-3"><i class="fas fa-arrow-left"></i> Volver al
        Listado</a>
    <div class="card">
        <div class="card-body">
            <fieldset>
                <legend>Agregar Usuario</legend>
                <form action="${context_path}/usuario/procesarAgregar" method="POST" class="needs-validation" data-remote="true" novalidate>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="nombre">Nombre:</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" required pattern="[A-Za-z]{4,}">
                            <div class="invalid-feedback">El nombre debe tener más de 3 caracteres y no debe contener
                                números</div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="apellido">Apellido:</label>
                            <input type="text" class="form-control" id="apellido" name="apellido" required pattern="[A-Za-z]{4,}">
                            <div class="invalid-feedback">El apellido debe tener más de 3 caracteres y no debe contener
                                números</div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="alias">Alias:</label>
                            <input type="text" class="form-control" id="alias" name="alias" required pattern="^(?=.*[A-Za-z].*[A-Za-z].*[A-Za-z].*[A-Za-z].*[A-Za-z])(?=.*\d.*\d).*$">
                            <div class="invalid-feedback">El alias debe tener al menos 5 letras y al menos 2 números en
                                cualquier posición</div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="contraseña">Contraseña:</label>
                            <input type="text" class="form-control" id="contraseña" name="contraseña" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="email_principal">Email Principal:</label>
                            <input type="email" class="form-control" id="email_principal" name="email_principal" required>
                            <div class="invalid-feedback">Por favor, ingresa un correo electrónico válido</div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="email_secundario">Email Secundario:</label>
                            <input type="email" class="form-control" id="email_secundario" name="email_secundario" required>
                            <div class="invalid-feedback">Por favor, ingresa un correo electrónico válido</div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="nro_celular">Número de Celular:</label>
                            <input type="tel" class="form-control" id="nro_celular" name="nro_celular" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="tipo_usuario_id">Tipo de Usuario:</label>
                            <select class="form-select" id="tipo_usuario_id" name="tipo_usuario_id" required>
                                <#list tipos as tipoUsuario>
                                    <option value="${tipoUsuario.id}">${tipoUsuario.descripcion}</option>
                                </#list>
                            </select>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary" id="submit">Guardar Cambios</button>
                    <button type="button" onclick="location.href='${context_path}/usuario/'" class="btn btn-secondary">Cancelar</button>
                </form>
            </fieldset>
        </div>
    </div>
</div>
