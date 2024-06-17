package pe.com.matichelo.financiera.controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import pe.com.matichelo.financiera.modelo.Prestamo;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@WebServlet("/DatosPrestamos")
public class DatosPrestamos extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtenemos los datos del formulario
        double capital = Double.parseDouble(request.getParameter("capital"));
        int time = Integer.parseInt(request.getParameter("time"));
        int risk = Integer.parseInt(request.getParameter("risk"));
        String date = request.getParameter("fecha");
        // Creamos un objeto de la clase Prestamo
        Prestamo prestamo = new Prestamo(capital, time, risk, date);
        // Calculamos los datos del préstamo
        double interesMensual = calcularInteresMensual(prestamo.getRisk());
        double amortizacion = prestamo.getCapital() / prestamo.getTime();
        double saldo = prestamo.getCapital();
        // Formateamos la fecha
        LocalDate fecha = LocalDate.parse(prestamo.getDate(), DateTimeFormatter.ofPattern("yyyy-MM-dd"));
        DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        String[] dateall = new String[prestamo.getTime()];
        for (int i = 0; i < prestamo.getTime(); i++) {
            dateall[i] = fecha.format(dateFormatter);
            fecha = fecha.plusMonths(1);
        }
        // Enviamos los datos a la vista
        request.setAttribute("fechasCorrelativas", dateall);
        request.setAttribute("interesMensual", interesMensual);
        request.setAttribute("amortizacion", amortizacion);
        request.setAttribute("saldo", saldo);
        request.setAttribute("prestamo", prestamo);
        // Redireccionamos a la vista con Request y Response para mostrar los datos
        request.getRequestDispatcher("/vista/datosPrestamo.jsp").forward(request, response);
    }

    // Método para calcular el interés mensual según el riesgo
    private double calcularInteresMensual(int risk) {
        double interesMensual = 0.0;
        switch (risk) {
            case 1:
                interesMensual = 0.0225;
                break;
            case 2:
                interesMensual = 0.0314;
                break;
            case 3:
                interesMensual = 0.0425;
                break;
            case 4:
                interesMensual = 0.0612;
                break;
            default:
                interesMensual = 0.0;
        }
        return interesMensual;
    }
}
