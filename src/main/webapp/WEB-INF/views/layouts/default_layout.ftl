<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Proyecto ABM</title>
    <!-- Agregar Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="${context_path}/css/estilos.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css">

</head>

<body class="h-100">
    <nav class="navbar bg-color text-white ">
        <div class="container-fluid justify-content-between align-items-center">
            <h2>Sistema de usuarios</h2>
            <#if session.nombre_usuario?has_content>
                <p>Bienvenido, ${session.nombre_usuario}. <a href="${context_path}/home/cerrar" class="logout-link"><i class="bi bi-box-arrow-in-right"></i>
</a>
</p>
                        
            </#if>
        </div>
    </nav>
    <main class="container-fluid mt-5">
        ${page_content?no_esc}
    </main>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/toastify-js"></script>


    
</body>

</html>