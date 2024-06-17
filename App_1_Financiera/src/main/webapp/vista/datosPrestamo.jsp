<%@ page import="pe.com.matichelo.financiera.modelo.Prestamo" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Resultado del Préstamo</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="./css/estilos.css" rel="stylesheet">
    <link rel="icon" type="image/png" href="https://cdn-icons-png.flaticon.com/512/1333/1333327.png">
</head>
<body>
<h1>Resultado del Préstamo Financiera "EUREABANK"</h1>

<table>
    <caption>Datos del Cliente</caption>
    <tr>
        <th>Capital</th>
        <th>Tiempo</th>
        <th>Riesgo</th>
        <th>Interés</th>
        <th>Amortización</th>
        <th>1r Cuota</th>
    </tr>
    <tr>
        <td>S/.${prestamo.capital}</td>
        <td>${prestamo.time} Meses</td>
        <td>${prestamo.risk}</td>
        <td><%= String.format("%.2f", (double) request.getAttribute("interesMensual") * 100) %>%</td>
        <td>S/.<%= String.format("%.2f", (double) request.getAttribute("amortizacion"))%>
        </td>
        <td>${prestamo.date}</td>
    </tr>
</table>

</div>

<table>
    <caption>Cuadro de Cuotas</caption>
    <tr>
        <th>Mes</th>
        <th>Fecha</th>
        <th>Saldo Inicial</th>
        <th>Amort.</th>
        <th>Interes</th>
        <th>Cuota x Mes</th>
        <th>Saldo Final</th>
    </tr>
    <%
        String[] fechas = (String[]) request.getAttribute("fechasCorrelativas");
        int tiempo = fechas.length;
        double saldoInicial = (double) request.getAttribute("saldo");
        double amortizacion = (double) request.getAttribute("amortizacion");
        double interesMensual = (double) request.getAttribute("interesMensual");
        for (int i = 0; i < tiempo; i++) {
            double interes = saldoInicial * interesMensual;
            double cuotaMes = amortizacion + interes;
            double saldoFinal = saldoInicial - amortizacion;
    %>
    <tr>
        <td><%= i + 1 %>
        </td>
        <td><%= fechas[i] %>
        </td>
        <td>S/.<%= String.format("%.2f", saldoInicial) %>
        </td>
        <td>S/.<%= String.format("%.2f", amortizacion) %>
        </td>
        <td>S/.<%= String.format("%.2f", interes) %>
        </td>
        <td>S/.<%= String.format("%.2f", cuotaMes) %>
        </td>
        <td>S/.<%= String.format("%.2f", saldoFinal) %>
        </td>
    </tr>
    <%
            saldoInicial -= amortizacion;
        }
    %>
</table>

</body>
</html>
