package pe.cajabancos.dsd.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;



import pe.cajabancos.dsd.domain.Alumno;

@Service("alumnoService")
public class AlumnoService {
	
	protected static Logger logger = Logger.getLogger(AlumnoService.class);
	
	// In-memory list
	private List<Alumno> alumnos = new ArrayList<Alumno>();

	public AlumnoService(){
		logger.debug("Init database");
		
		// Create in-memory list
		Alumno alumno1 = new Alumno();
		alumno1.setDni("ALU0001");
		alumno1.setNombres("Jorge Daniel");
		alumno1.setApellidos("Rozas Vargas");
		alumno1.setMonto(450.00);
		alumno1.setPeriodo("11/2011");
		alumno1.setEstado("Cancelado");
		alumno1.setConcepto("Impresiones B/N");
		
		Alumno alumno2 = new Alumno();
		alumno2.setDni("ALU0002");
		alumno2.setNombres("Vanessa");
		alumno2.setApellidos("Lescano Palacios");
		alumno2.setMonto(450.00);
		alumno2.setPeriodo("12/2011");
		alumno2.setEstado("Pendiente");
		alumno2.setConcepto("Reposici—n de Camara de Fotos");
		
		Alumno alumno3 = new Alumno();
		alumno3.setDni("ALU0003");
		alumno3.setNombres("Hijar Contreras");
		alumno3.setApellidos("Martin");
		alumno3.setMonto(30.00);
		alumno3.setPeriodo("11/2011");
		alumno3.setEstado("Cancelado");
		alumno3.setConcepto("Impresiones Color");
		
		Alumno alumno4 = new Alumno();
		alumno4.setDni("ALU0004");
		alumno4.setNombres("Vasquez Salas");
		alumno4.setApellidos("Jose Antonio");
		alumno4.setMonto(15.00);
		alumno4.setPeriodo("12/2011");
		alumno4.setEstado("Cancelado");
		alumno4.setConcepto("Impresiones B/N");
		
		Alumno alumno5 = new Alumno();
		alumno5.setDni("ALU0004");
		alumno5.setNombres("Vasquez Salas");
		alumno5.setApellidos("Jose Antonio");
		alumno5.setMonto(10.00);
		alumno5.setPeriodo("12/2011");
		alumno5.setEstado("Pendiente");	
		alumno1.setConcepto("Impresiones Color");
		
		
		Alumno alumno6 = new Alumno();
		alumno6.setDni("ALU0001");
		alumno6.setNombres("Jorge Daniel");
		alumno6.setApellidos("Rozas Vargas");
		alumno6.setMonto(450.00);
		alumno6.setPeriodo("11/2011");
		alumno6.setEstado("Cancelado");
		alumno6.setConcepto("Impresiones Color");
		
		Alumno alumno7 = new Alumno();
		alumno7.setDni("ALU0002");
		alumno7.setNombres("Vanessa");
		alumno7.setApellidos("Lescano Palacios");
		alumno7.setMonto(450.00);
		alumno7.setPeriodo("12/2011");
		alumno7.setEstado("Pendiente");
		alumno7.setConcepto("Reposici—n de Scanner");
		
		Alumno alumno8 = new Alumno();
		alumno8.setDni("ALU0003");
		alumno8.setNombres("Hijar Contreras");
		alumno8.setApellidos("Martin");
		alumno8.setMonto(30.00);
		alumno8.setPeriodo("11/2011");
		alumno8.setEstado("Cancelado");
		alumno8.setConcepto("Impresiones B/N");
		
		alumnos.add(alumno1);
		alumnos.add(alumno2);
		alumnos.add(alumno3);
		alumnos.add(alumno4);
		alumnos.add(alumno5);
		alumnos.add(alumno6);
		alumnos.add(alumno7);
		alumnos.add(alumno8);
		
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
	
	
	public void edit(String codalu,String status) {
		logger.debug("Editing person with id: " + codalu);
		
		try {
			for (Alumno p:alumnos) {
				if (p.getDni().equals(codalu)) {
					logger.debug("Found record");
					p.setEstado(status);
					
				}
			}
			
			logger.debug("No records found");
			
			
		} catch (Exception e) {
			logger.error(e);
			
		}
	}
	
	
	
	
}
