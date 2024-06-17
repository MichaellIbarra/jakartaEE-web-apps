<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculando Prestamos de Cliente</title>
    <link href="./css/estilos.css" rel="stylesheet">
    <link rel="icon" type="image/png" href="https://cdn-icons-png.flaticon.com/512/1333/1333327.png">

</head>
<body>
<h1>Financiera "EUREABANK"</h1>
<section id="container">
    <form action="DatosPrestamos" method="post">
        <h3>Calculando Prestamos de Cliente</h3>
        <img src="https://iberomedia.com/wp-content/uploads/2021/07/Calculator.gif" alt="calculadora" width="150"
             height="150">
        <div class="items">
            <label for="capital">Capital:</label>
            <input type="text" id="capital" name="capital"><br><br>
            <label for="tiempo">Tiempo (meses):</label>
            <select id="tiempo" name="time">
                <option value="6">6 meses</option>
                <option value="12">12 meses</option>
                <option value="18">18 meses</option>
                <option value="24">24 meses</option>
            </select>
            <label for="riesgo">Nivel de Riesgo:</label>
            <select id="riesgo" name="risk">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
            </select>
            <label for="fecha">Fecha de inicio:</label>
            <input type="date" id="fecha" name="fecha"><br><br>

            <input type="submit" value="Calcular">
        </div>
    </form>
</section>


</body>
</html>
