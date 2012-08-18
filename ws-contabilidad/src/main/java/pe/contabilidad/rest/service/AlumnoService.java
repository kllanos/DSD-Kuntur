package pe.contabilidad.rest.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import pe.contabilidad.rest.domain.Alumno;

@Service("alumnoService")
public class AlumnoService {
	
	protected static Logger logger = Logger.getLogger("service");
	
	// In-memory list
	private List<Alumno> alumnos = new ArrayList<Alumno>();

	public AlumnoService(){
		logger.debug("Init database");
		
		// Create in-memory list
		Alumno alumno1 = new Alumno();
		alumno1.setDni("43811752");
		alumno1.setNombres("Jorge Luis");
		alumno1.setApellidos("Camarena Cueva");
		alumno1.setMonto(450.00);
		alumno1.setPeriodo("11/2011");
		alumno1.setEstado("Cancelado");
		
		Alumno alumno2 = new Alumno();
		alumno2.setDni("43811752");
		alumno2.setNombres("Jorge Luis");
		alumno2.setApellidos("Camarena Cueva");
		alumno2.setMonto(450.00);
		alumno2.setPeriodo("12/2011");
		alumno2.setEstado("Pendiente");
		
		Alumno alumno3 = new Alumno();
		alumno3.setDni("11111111");
		alumno3.setNombres("Luis Alberto");
		alumno3.setApellidos("Fernandez Coronado");
		alumno3.setMonto(450.00);
		alumno3.setPeriodo("11/2011");
		alumno3.setEstado("Cancelado");
		
		Alumno alumno4 = new Alumno();
		alumno4.setDni("11111111");
		alumno4.setNombres("Luis Alberto");
		alumno4.setApellidos("Fernandez Coronado");
		alumno4.setMonto(450.00);
		alumno4.setPeriodo("12/2011");
		alumno4.setEstado("Cancelado");	
		
		Alumno alumno5 = new Alumno();
		alumno5.setDni("22222222");
		alumno5.setNombres("Juan Diego");
		alumno5.setApellidos("Herrera Pozos");
		alumno5.setMonto(450.00);
		alumno5.setPeriodo("12/2011");
		alumno5.setEstado("Pendiente");	
		
		alumnos.add(alumno1);
		alumnos.add(alumno2);
		alumnos.add(alumno3);
		alumnos.add(alumno4);
		alumnos.add(alumno5);
		
	}
	
	/**
	 * Retrieves all persons
	 */
	public List<Alumno> getAll() {
		logger.debug("Retrieving all persons");
		
		return alumnos;
	}
	
	/**
	 * Retrieves a single person
	 */
	public Alumno get( String dni) {
		logger.debug("Retrieving alumno with dni: " + dni);
		
		for (Alumno alumno:alumnos) {
			if (alumno.getDni().equals(dni)) {
				logger.debug("Found record");
				return alumno;
			}
		}
		
		logger.debug("No records found");
		return null;
	}
	
	
	
}
