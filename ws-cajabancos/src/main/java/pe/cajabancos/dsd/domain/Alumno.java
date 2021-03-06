package pe.cajabancos.dsd.domain;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="alumno")
public class Alumno {
	
	@Override
	public String toString() {
		return "Alumno [dni=" + dni + ", nombres=" + nombres + ", apellidos="
				+ apellidos + ", monto=" + monto + ", periodo=" + periodo
				+ ", estado=" + estado + "]";
	}
	private String dni;
	private String nombres;
	private String apellidos;
	private Double monto;
	private String periodo;
	private String estado;
	private String concepto;
	
	public String getConcepto() {
		return concepto;
	}
	public void setConcepto(String concepto) {
		this.concepto = concepto;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getNombres() {
		return nombres;
	}
	public void setNombres(String nombres) {
		this.nombres = nombres;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public Double getMonto() {
		return monto;
	}
	public void setMonto(Double monto) {
		this.monto = monto;
	}
	public String getPeriodo() {
		return periodo;
	}
	public void setPeriodo(String periodo) {
		this.periodo = periodo;
	}	
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}	

}
