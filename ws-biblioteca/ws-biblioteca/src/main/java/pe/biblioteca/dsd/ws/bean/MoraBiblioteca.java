package pe.biblioteca.dsd.ws.bean;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="morabiblioteca")
public class MoraBiblioteca {
	
	
	private String codigoAlumno;
	private String nombreLibro;
	private String diasMora;
	private String costoMora;
	private String fechaPrestamo;
	private String fechaDevolucion;
	private String codigoLibro;
	private String estado;
	
	
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getCodigoLibro() {
		return codigoLibro;
	}
	public void setCodigoLibro(String codigoLibro) {
		this.codigoLibro = codigoLibro;
	}
	public String getCodigoAlumno() {
		return codigoAlumno;
	}
	public void setCodigoAlumno(String codigoAlumno) {
		this.codigoAlumno = codigoAlumno;
	}
	public String getNombreLibro() {
		return nombreLibro;
	}
	public void setNombreLibro(String nombreLibro) {
		this.nombreLibro = nombreLibro;
	}
	public String getDiasMora() {
		return diasMora;
	}
	public void setDiasMora(String diasMora) {
		this.diasMora = diasMora;
	}
	public String getCostoMora() {
		return costoMora;
	}
	public void setCostoMora(String costoMora) {
		this.costoMora = costoMora;
	}
	public String getFechaPrestamo() {
		return fechaPrestamo;
	}
	public void setFechaPrestamo(String fechaPrestamo) {
		this.fechaPrestamo = fechaPrestamo;
	}
	public String getFechaDevolucion() {
		return fechaDevolucion;
	}
	public void setFechaDevolucion(String fechaDevolucion) {
		this.fechaDevolucion = fechaDevolucion;
	}
	

}
