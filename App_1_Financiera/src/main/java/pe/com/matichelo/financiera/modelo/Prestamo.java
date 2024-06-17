package pe.com.matichelo.financiera.modelo;

public class Prestamo {
    private double capital;
    private int time;
    private int risk;
    private String date;

    public Prestamo(double capital, int time, int risk, String date) {
        this.capital = capital;
        this.time = time;
        this.risk = risk;
        this.date = date;
    }
    public double getCapital() {
        return capital;
    }
    public void setCapital(double capital) {
        this.capital = capital;
    }
    public int getTime() {
        return time;
    }
    public void setTime(int time) {
        this.time = time;
    }
    public int getRisk() {
        return risk;
    }
    public void setRisk(int risk) {
        this.risk = risk;
    }
    public String getDate() {
        return date;
    }
    public void setDate(String date) {
        this.date = date;
    }
}
