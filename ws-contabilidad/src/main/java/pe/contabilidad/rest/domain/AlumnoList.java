package pe.contabilidad.rest.domain;

import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="alumnos")
public class AlumnoList {
	
	public List<Alumno> getData() {
		return data;
	}

	public void setData(List<Alumno> data) {
		this.data = data;
	}

	private List<Alumno> data;

}
