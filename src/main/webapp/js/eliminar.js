document.addEventListener('DOMContentLoaded', function () {
    // Obtener todos los botones eliminar con la clase eliminar-btn
    var eliminarButtons = document.querySelectorAll('.eliminar-btn');

    // Asignar un controlador de eventos de clic a cada botón eliminar
    eliminarButtons.forEach(function (button) {
        button.addEventListener('click', function () {
            // Obtener el ID del usuario del atributo data-id
            var userId = this.getAttribute('data-id');

            // Mostrar el ID del usuario en el modal
            var modalUserIdElement = document.getElementById('userIdToDelete');
            modalUserIdElement.textContent = userId;

            // Configurar el enlace de eliminación en el modal
            var confirmDeleteButton = document.getElementById('confirmDeleteButton');
            confirmDeleteButton.href = "/ABMWeb_maiz/usuario/eliminar/" + userId;
        });
    });
});