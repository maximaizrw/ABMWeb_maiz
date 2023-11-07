<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Iniciar sesion - Sistema</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <link rel="stylesheet" href="css/estilos.css">
</head>
<body class="bg-gray-100">
  <div class="container-fluid">
    <div class="row justify-content-center align-items-center min-vh-100">
      <div class="col-md-4 col-sm-6 col-10 p-4 bg-white rounded-lg shadow-lg">
        <div class="text-center mb-4">
          <img src="https://udc.edu.ar/wp-content/uploads/elementor/thumbs/ISOLOGO-horizontal-MQ-RGB-150dpi-p70o1mlpe4vqa8jd9w83zshmsb5tl8qo1l0iwczgfo.png" alt="Logo Universidad del chubut" class="img-fluid">
        </div>
        <h1 class="text-2xl font-semibold text-center text-gray-500 mb-4">Iniciar sesion</h1>
        <form name="j_security_form" method="post" action="j_security_check">
          <div class="mb-3">
            <label for="floatingUser" class="form-label">Usuario</label>
            <input type="text" name="j_username" class="form-control" id="floatingUser" placeholder="Ingrese su usuario" required>
          </div>
          <div class="mb-3">
            <label for="floatingPassword" class="form-label">Clave</label>
            <input type="password" name="j_password" class="form-control" id="floatingPassword" placeholder="Ingrese su clave" required>
          </div>
          <button type="submit" class="btn btn-custom w-100 mt-4">Ingresar</button>
        </form>
      </div>
    </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>
</html>
