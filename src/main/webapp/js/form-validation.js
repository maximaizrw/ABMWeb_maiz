document.addEventListener('DOMContentLoaded', (event) => {
    // Selecciona el formulario y agrega un event listener para el evento 'submit'
    var form = document.querySelector('.needs-validation');
    if (form) {
        form.addEventListener('submit', function (event) {
            // Si el formulario no es válido, previene el envío y agrega la clase 'was-validated'
            if (!form.checkValidity()) {
                event.preventDefault();
                event.stopPropagation();
            }
            form.classList.add('was-validated');
        }, false);
    }
});