<!doctype html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Valle Grande</title>
    <link rel="icon" href="img/core-img/favicon.png">
    <link rel="stylesheet" href="style.css">
    <style>
        .imagen {
            margin: 15px auto;
            text-align: center;
            display: flex;
        }
    </style>

</head>

<body class="login-area">

<!-- Preloader -->
<div id="preloader-area">
    <div class="lds-ripple">
        <div></div>
        <div></div>
    </div>
</div>

<div class="main-content- h-100vh">
    <div class="container h-100">
        <div class="row h-100 align-items-center justify-content-center">
            <div class="hero">
                <div class="cube"></div>
                <div class="cube"></div>
                <div class="cube"></div>
                <div class="cube"></div>
                <div class="cube"></div>
                <div class="cube"></div>
            </div>
            <div class="col-sm-10 col-md-8 col-lg-5">
                <!-- Middle Box -->
                <div class="middle-box">
                    <div class="card">
                        <div class="card-body p-4">

                            <!-- Logo -->
                            <h4 class="font-24 mb-30">Financiera "EUREABANK"</h4>
                            <img class="imagen" src="https://iberomedia.com/wp-content/uploads/2021/07/Calculator.gif"
                                 alt="calculadora" width="150" height="150">
                            <form action="DatosPrestamos" method="post">
                                <div class="form-group">
                                    <label>Capital:</label>
                                    <input class="form-control login" type="number" id="capital" name="capital"
                                           placeholder="Ingresar el monto de capital" required>
                                </div>

                                <div class="form-group">
                                    <label>Tiempo:</label>
                                    <select class="form-control login" id="tiempo" name="time">
                                        <option value="6">6 meses</option>
                                        <option value="12">12 meses</option>
                                        <option value="18">18 meses</option>
                                        <option value="24">24 meses</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="risk">Riesgo:</label>
                                    <select class="form-control login" id="risk" name="risk" required>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="fecha">Fecha de inicio:</label>
                                    <input type="date" class="form-control login" id="fecha" name="fecha" required>
                                </div>


                                <div class="form-group mb-0">
                                    <button class="btn btn-primary btn-block" type="submit">Calcular</button>
                                </div>
                            </form>

                            <!-- end card -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- ======================================
********* Page Wrapper Area End ***********
======================================= -->

<!-- Plugins Js -->
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bundle.js"></script>

<!-- Active JS -->
<script src="js/default-assets/active.js"></script>

</body>

</html>