
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="pe.com.matichelo.financiera.modelo.Prestamo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Valle Grande</title>
    <link rel="stylesheet" href="../css/default-assets/mini-event-calendar.min.css">
    <link rel="stylesheet" href="../style.css">
    <style>
        .page-body-wrapper {
            min-height: calc(100vh - 60px);
            display: -webkit-flex;
            display: flex;
            -webkit-flex-direction: row;
            flex-direction: row;
            padding-left: 0;
            padding-right: 0;
            padding-top: 1px;
            justify-content: center;
            align-items: center;
            /* margin: 0 auto; */
        }
    </style>
</head>

<body class="sidebar-mini">
<!-- Preloader -->
<div id="preloader-area">
    <div class="lds-ripple">
        <div></div>
        <div></div>
    </div>
</div>

<div class="main-container-wrapper">

    <div class="container-fluid page-body-wrapper">
        <!-- partial -->
        <div class="main-panel">
            <div class="content-wrapper">
                <h1>Resultado del Préstamo Financiera "EUREABANK"
                </h1>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12 col-sm-6 col-xl">

                            <!-- Card -->
                            <div class="card box-margin">
                                <div class="card-body">
                                    <div class="row align-items-center">
                                        <div class="col">
                                            <!-- Title -->
                                            <h6 class="text-uppercase font-14">
                                                Capital
                                            </h6>
                                            <!-- Heading -->
                                            <span class="font-18 text-dark mb-0">
                                                    S/. ${prestamo.capital}
                                                </span>
                                        </div>
                                        <div class="col-auto">
                                            <!-- Icon -->
                                            <div class="icon">
                                                <img src="../img/bg-img/icon-8.png" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-xl">
                            <!-- Card -->
                            <div class="card box-margin">
                                <div class="card-body">
                                    <div class="row align-items-center">
                                        <div class="col">
                                            <!-- Title -->
                                            <h6 class="font-14 text-uppercase">
                                                Tiempo
                                            </h6>
                                            <!-- Heading -->
                                            <span class="font-18 text-dark mb-0">
                                                    ${prestamo.time} Meses
                                                </span>
                                        </div>
                                        <div class="col-auto">
                                            <!-- Icon -->
                                            <div class="icon">
                                                <img src="../img/bg-img/icon-9.png" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-xl">
                            <!-- Card -->
                            <div class="card box-margin">
                                <div class="card-body">
                                    <div class="row align-items-center">
                                        <div class="col">
                                            <!-- Title -->
                                            <h6 class="font-14 text-uppercase">
                                                Fecha
                                            </h6>
                                            <!-- Heading -->
                                            <span class="font-18 text-dark">
                                                ${prestamo.date}
                                            </span>
                                        </div>
                                        <div class="col-auto">
                                            <!-- Icon -->
                                            <div class="icon">
                                                <img src="../img/bg-img/icon-11.png" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-xl">


                            <!-- Card -->
                            <div class="card box-margin">
                                <div class="card-body">
                                    <div class="row align-items-center">
                                        <div class="col">
                                            <!-- Title -->
                                            <h6 class="font-14 text-uppercase">
                                                Interes
                                            </h6>
                                            <!-- Heading -->
                                            <span class="font-18 text-dark">
                                                <span class="font-18 text-dark mb-0"><%= String.format("%.2f", (double) request.getAttribute("interesMensual") * 100) %>%</span>
                                            </span>
                                        </div>
                                        <div class="col-auto">
                                            <!-- Icon -->
                                            <div class="icon">
                                                <img src="../img/bg-img/icon-10.png" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- / .row -->

                <div class="row">

                    <!-- Order Summary Area -->
                    <div class="col-12 box-margin">
                        <div class="card">
                            <div class="card-body">
                                <h6 class="card-title">Cuadro de Cuotas</h6>
                                <!-- Table -->
                                <div class="table-responsive">
                                    <table class="table table-nowrap">
                                        <thead>
                                        <tr>
                                            <th>MES</th>
                                            <th>Fecha</th>
                                            <th>SALDO INICIAL</th>
                                            <th>AMORT.</th>
                                            <th>INTERES</th>
                                            <th>CUOTA X MES</th>
                                            <th>SALDO FINAL</th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        <c:forEach var="i" begin="0" end="${prestamo.time - 1}">
                                            <c:set var="fecha" value="${fechasCorrelativas[i]}"/>
                                            <c:set var="amortizacion" value="${amortizacion}"/>
                                            <c:set var="interesMensual" value="${interesMensual}"/>
                                            <tr>
                                                <td>${i + 1}</td>
                                                <td>${fecha}</td>
                                                <td>S/.${String.format("%.2f", saldo)}</td>
                                                <td>S/.${String.format("%.2f", amortizacion)}</td>
                                                <td>S/.${String.format("%.2f", saldo * interesMensual)}</td>
                                                <td>
                                                    S/.${String.format("%.2f", amortizacion + (saldo * interesMensual))}</td>
                                                <td>S/.${String.format("%.2f", saldo - amortizacion)}</td>
                                            </tr>
                                            <c:set var="saldo" value="${saldo - amortizacion}"/>
                                        </c:forEach>


                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Footer Area -->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <!-- Footer Area -->
                        <footer class="footer-area d-sm-flex justify-content-center align-items-center justify-content-between">
                            <!-- Copywrite Text -->
                            <div class="copywrite-text">
                                <p>Creado por @<a href="#">Valle Grande</a></p>
                            </div>
                            <div class="fotter-icon text-center">
                                <a href="#" class="action-item mr-2" data-toggle="tooltip" title="Facebook">
                                    <i class="fa fa-facebook" aria-hidden="true"></i>
                                </a>
                                <a href="#" class="action-item mr-2" data-toggle="tooltip" title="Twitter">
                                    <i class="fa fa-twitter" aria-hidden="true"></i>
                                </a>
                                <a href="#" class="action-item mr-2" data-toggle="tooltip" title="Pinterest">
                                    <i class="fa fa-pinterest-p" aria-hidden="true"></i>
                                </a>
                                <a href="#" class="action-item mr-2" data-toggle="tooltip" title="Instagram">
                                    <i class="fa fa-instagram" aria-hidden="true"></i>
                                </a>
                            </div>
                        </footer>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>


<!-- Plugins Js -->
<script src="../js/jquery.min.js"></script>
<script src="../js/popper.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/bundle.js"></script>
<script src="../js/default-assets/fullscreen.js"></script>

<!-- Active JS -->
<script src="../js/canvas.js"></script>
<script src="../js/collapse.js"></script>
<script src="../js/settings.js"></script>
<script src="../js/template.js"></script>
<script src="../js/default-assets/active.js"></script>

<!-- Inject JS -->
<script src="../js/default-assets/mini-event-calendar.min.js"></script>
<script src="../js/default-assets/mini-calendar-active.js"></script>
<script src="../js/default-assets/apexchart.min.js"></script>
<script src="../js/default-assets/dashboard-active.js"></script>

</body>

</html>
