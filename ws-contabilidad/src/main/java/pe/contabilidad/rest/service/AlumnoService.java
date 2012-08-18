package pe.contabilidad.rest.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import pe.contabilidad.rest.domain.Alumno;

@Service("alumnoService")
public class AlumnoService {
	
	protected static Logger logger = Logger.getLogger("service");
	
	private List<Alumno> alumnos = new ArrayList<Alumno>();

	public AlumnoService(){
		logger.debug("Init database");
		
		// Create in-memory list
		Alumno alumno1 = new Alumno();
		alumno1.setDni("ALU0002");
		alumno1.setNombres("Vanessa");
		alumno1.setApellidos("Lescano Palacios");
		alumno1.setMonto(450.00);
		alumno1.setPeriodo("082011");
		alumno1.setEstado("Cancelado");
		
		Alumno alumno2 = new Alumno();
		alumno2.setDni("ALU0002");
		alumno2.setNombres("Vanessa");
		alumno2.setApellidos("Lescano Palacios");
		alumno2.setMonto(450.00);
		alumno2.setPeriodo("092011");
		alumno2.setEstado("Cancelado");
		
		Alumno alumno3 = new Alumno();
		alumno3.setDni("ALU0002");
		alumno3.setNombres("Vanessa");
		alumno3.setApellidos("Lescano Palacios");
		alumno3.setMonto(450.00);
		alumno3.setPeriodo("112011");
		alumno3.setEstado("Cancelado");
		
		Alumno alumno4 = new Alumno();
		alumno4.setDni("ALU0002");
		alumno4.setNombres("Vanessa");
		alumno4.setApellidos("Lescano Palacios");
		alumno4.setMonto(450.00);
		alumno4.setPeriodo("122011");
		alumno4.setEstado("Cancelado");	
		
		Alumno alumno5 = new Alumno();
		alumno5.setDni("ALU0003");
		alumno5.setNombres("Manuel Martin");
		alumno5.setApellidos("Hijar Contreras");
		alumno5.setMonto(450.00);
		alumno5.setPeriodo("122011");
		alumno5.setEstado("Pendiente");	
		
		Alumno alumno6 = new Alumno();
		alumno6.setDni("ALU0003");
		alumno6.setNombres("Manuel Martin");
		alumno6.setApellidos("Hijar Contreras");
		alumno6.setMonto(450.00);
		alumno6.setPeriodo("122011");
		alumno6.setEstado("Pendiente");	
		
		Alumno alumno7 = new Alumno();
		alumno7.setDni("ALU0004");
		alumno7.setNombres("Jose Antonio");
		alumno7.setApellidos("Vasquez Salas");
		alumno7.setMonto(450.00);
		alumno7.setPeriodo("122011");
		alumno7.setEstado("Pendiente");
		
		Alumno alumno8 = new Alumno();
		alumno8.setDni("ALU0004");
		alumno8.setNombres("Jose Antonio");
		alumno8.setApellidos("Vasquez Salas");
		alumno8.setMonto(450.00);
		alumno8.setPeriodo("122011");
		alumno8.setEstado("Pendiente");
		
		//Pruebas con un alumnos con los 12 meses de deudas//
		
		Alumno alumnoA1 = new Alumno();
		alumnoA1.setDni("ALU0001");
		alumnoA1.setNombres("Jorge Daniel");
		alumnoA1.setApellidos("Rozas Vargas");
		alumnoA1.setMonto(450.00);
		alumnoA1.setPeriodo("012011");
		alumnoA1.setEstado("Cancelado");

		Alumno alumnoA2 = new Alumno();
		alumnoA2.setDni("ALU0001");
		alumnoA2.setNombres("Jorge Daniel");
		alumnoA2.setApellidos("Rozas Vargas");
		alumnoA2.setMonto(450.00);
		alumnoA2.setPeriodo("022011");
		alumnoA2.setEstado("Cancelado");

		Alumno alumnoA3 = new Alumno();
		alumnoA3.setDni("ALU0001");
		alumnoA3.setNombres("Jorge Daniel");
		alumnoA3.setApellidos("Rozas Vargas");
		alumnoA3.setMonto(450.00);
		alumnoA3.setPeriodo("032011");
		alumnoA3.setEstado("Cancelado");

		Alumno alumnoA4 = new Alumno();
		alumnoA4.setDni("ALU0001");
		alumnoA4.setNombres("Jorge Daniel");
		alumnoA4.setApellidos("Rozas Vargas");
		alumnoA4.setMonto(450.00);
		alumnoA4.setPeriodo("042011");
		alumnoA4.setEstado("Cancelado");

		Alumno alumnoA5 = new Alumno();
		alumnoA5.setDni("ALU0001");
		alumnoA5.setNombres("Jorge Daniel");
		alumnoA5.setApellidos("Rozas Vargas");
		alumnoA5.setMonto(450.00);
		alumnoA5.setPeriodo("052011");
		alumnoA5.setEstado("Cancelado");

		Alumno alumnoA6 = new Alumno();
		alumnoA6.setDni("ALU0001");
		alumnoA6.setNombres("Jorge Daniel");
		alumnoA6.setApellidos("Rozas Vargas");
		alumnoA6.setMonto(450.00);
		alumnoA6.setPeriodo("062011");
		alumnoA6.setEstado("Cancelado");

		Alumno alumnoA7 = new Alumno();
		alumnoA7.setDni("ALU0001");
		alumnoA7.setNombres("Jorge Daniel");
		alumnoA7.setApellidos("Rozas Vargas");
		alumnoA7.setMonto(450.00);
		alumnoA7.setPeriodo("072011");
		alumnoA7.setEstado("Cancelado");

		Alumno alumnoA8 = new Alumno();
		alumnoA8.setDni("ALU0001");
		alumnoA8.setNombres("Jorge Daniel");
		alumnoA8.setApellidos("Rozas Vargas");
		alumnoA8.setMonto(450.00);
		alumnoA8.setPeriodo("082011");
		alumnoA8.setEstado("Cancelado");

		Alumno alumnoA9 = new Alumno();
		alumnoA9.setDni("ALU0001");
		alumnoA9.setNombres("Jorge Daniel");
		alumnoA9.setApellidos("Rozas Vargas");
		alumnoA9.setMonto(450.00);
		alumnoA9.setPeriodo("092011");
		alumnoA9.setEstado("Pendiente");

		Alumno alumnoA10 = new Alumno();
		alumnoA10.setDni("ALU0001");
		alumnoA10.setNombres("Jorge Daniel");
		alumnoA10.setApellidos("Rozas Vargas");
		alumnoA10.setMonto(450.00);
		alumnoA10.setPeriodo("102011");
		alumnoA10.setEstado("Pendiente");

		Alumno alumnoA11 = new Alumno();
		alumnoA11.setDni("ALU0001");
		alumnoA11.setNombres("Jorge Daniel");
		alumnoA11.setApellidos("Rozas Vargas");
		alumnoA11.setMonto(450.00);
		alumnoA11.setPeriodo("112011");
		alumnoA11.setEstado("Pendiente");

		Alumno alumnoA12 = new Alumno();
		alumnoA12.setDni("ALU0001");
		alumnoA12.setNombres("Jorge Daniel");
		alumnoA12.setApellidos("Rozas Vargas");
		alumnoA12.setMonto(450.00);
		alumnoA12.setPeriodo("122011");
		alumnoA12.setEstado("Pendiente");

		
		
		alumnos.add(alumno1);
		alumnos.add(alumno2);
		alumnos.add(alumno3);
		alumnos.add(alumno4);
		alumnos.add(alumno5);
		alumnos.add(alumno6);
		alumnos.add(alumno7);
		alumnos.add(alumno8);
		
		
		alumnos.add(alumnoA1);
		alumnos.add(alumnoA2);
		alumnos.add(alumnoA3);
		alumnos.add(alumnoA4);
		alumnos.add(alumnoA5);
		alumnos.add(alumnoA6);
		alumnos.add(alumnoA7);
		alumnos.add(alumnoA8);
		alumnos.add(alumnoA9);
		alumnos.add(alumnoA10);
		alumnos.add(alumnoA11);
		alumnos.add(alumnoA12);
		
		
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
		
	public ArrayList<Alumno> get( String dni) {
		logger.debug("Retrieving alumno with dni: " + dni);
		
		ArrayList<Alumno> list = new ArrayList<Alumno>();
		
		for (Alumno alumno:alumnos) {
			if (alumno.getDni().equals(dni)) {
				logger.debug("Found record");
				list.add(alumno);
			}
		}
		
		logger.debug("No records found");
		return list;
	}	
	
	public ArrayList<Alumno> getPendientes( String dni) {
		logger.debug("Retrieving alumno with dni: " + dni);
		
		ArrayList<Alumno> list = new ArrayList<Alumno>();
		
		for (Alumno alumno:alumnos) {
			if (alumno.getDni().equals(dni) && alumno.getEstado().equals("Pendiente") ) {
				logger.debug("Found record");
				list.add(alumno);
				//break;
			}
		}
		if(list.isEmpty()){
			for (Alumno alumno:alumnos) {
				list.add(alumno);
				break;
			}
			
		}
		
		
		return list;
	}	
	
	public List<Alumno> getPendientesFlag( String dni) {
		logger.debug("Retrieving alumno with dni: " + dni);
		String mFlag="C";
		ArrayList<Alumno> list = new ArrayList<Alumno>();
		
		for (Alumno alumno:alumnos) {
			if (alumno.getDni().equals(dni) && alumno.getEstado().equals("Pendiente")) {
				list.add(alumno);
				break;
			}
		}
		
		logger.debug("No records found");
		return list;
	}	
	
	public void edit(String codalu,String status,String periodo) {
		logger.debug("Editing person with id: " + codalu);
		
		try {
			for (Alumno p:alumnos) {
				if (p.getDni().equals(codalu) && p.getPeriodo().equals(periodo)) {
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
