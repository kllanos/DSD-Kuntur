package pe.biblioteca.dsd.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import pe.biblioteca.dsd.service.MoraBibliotecaService;
import pe.biblioteca.dsd.ws.bean.MoraBiblioteca;



@Service("moraBibliotecaService")
public class MoraBibliotecaServiceImpl implements MoraBibliotecaService {

	protected static Logger logger = Logger.getLogger("service");
	
	private List<MoraBiblioteca> moras = new ArrayList<MoraBiblioteca>();
	
	
	public MoraBibliotecaServiceImpl() {
		logger.debug("Init database");
		
		// Create in-memory list
		MoraBiblioteca mora1 = new MoraBiblioteca();
		mora1.setCodigoAlumno("ALU0001");
		mora1.setCodigoLibro("L0001");
		mora1.setCostoMora("20.00");
		mora1.setDiasMora("20");
		mora1.setFechaDevolucion("01/05/2012");
		mora1.setFechaPrestamo("01/03/2012");
		mora1.setNombreLibro("Cien A–os de Soledad");
		mora1.setEstado("Pendiente");
		
		
		MoraBiblioteca mora2 = new MoraBiblioteca();
		mora2.setCodigoAlumno("ALU0002");
		mora2.setCodigoLibro("L0002");
		mora2.setCostoMora("30.00");
		mora2.setDiasMora("30");
		mora2.setFechaDevolucion("01/05/2012");
		mora2.setFechaPrestamo("01/03/2012");
		mora2.setNombreLibro("El Se–or de los Anillos");
		mora2.setEstado("Cancelado");
		
		moras.add(mora1);
		moras.add(mora2);
		
	}
	
	/**
	 * Retrieves all persons
	 */
	public List<MoraBiblioteca> getAll() {
		logger.debug("Retrieving all persons");
		
		return moras;
	}
	
	/**
	 * Retrieves a single person
	 */
	public MoraBiblioteca get( String id ) {
		logger.debug("Retrieving person with code: " + id);
		
		for (MoraBiblioteca mora:moras) {
			if (mora.getCodigoAlumno() == id) {
				logger.debug("Found record");
				return mora;
			}
		}
		
		logger.debug("No records found");
		return null;
	}
	
	public ArrayList<MoraBiblioteca> getMoras( String id ) {
		logger.debug("Retrieving person with code: " + id);
		ArrayList<MoraBiblioteca> list = new ArrayList<MoraBiblioteca>();
		
		for (MoraBiblioteca mora:moras) {
			if (mora.getCodigoAlumno().equals(id)) {
				logger.debug("Found record");
				list.add(mora);
				
			}
		}
		
		logger.debug("No records found");
		return list;
	}
	
	
	
	public ArrayList<MoraBiblioteca> getPendientes( String dni) {
		logger.debug("Retrieving alumno with dni: " + dni);
		
		ArrayList<MoraBiblioteca> list = new ArrayList<MoraBiblioteca>();
		
		for (MoraBiblioteca mora:moras) {
			if (mora.getCodigoAlumno().equals(dni) && mora.getDiasMora() != "") {
				logger.debug("Found record");
				list.add(mora);
			}
		}
		if(list.isEmpty()){
			for (MoraBiblioteca mora:moras) {
				list.add(mora);
				break;
			}
			
		}
		
		
		return list;
	}	
	
	/**
	 * Adds a new person
	 */
	public MoraBiblioteca add(MoraBiblioteca mora) {
		logger.debug("Adding new mora");
		
	
		try {
			/*
		
			// Find suitable id
			Long newId = 0L;
			Boolean hasFoundSuitableId = false;
			while(hasFoundSuitableId == false) {
				for (int i=0; i <persons.size(); i++) {
					if (persons.get(i).getId().longValue() == newId.longValue()) {
						newId++;
						break;
					}
					
					// Exit while loop
					if(i==persons.size()-1) {
						logger.debug("Assigning id: " + newId);
						hasFoundSuitableId = true;
					}
				}
				
			}*/
			
			// Assign new id
			//person.setId(newId);
			// Add to list
			 
			 
			moras.add(mora);
			
			logger.debug("Added new MORA");
			return mora;
		
			} catch (Exception e) {
			logger.error(e);
			return null;
			}
		}
	
	/**
	 * Deletes an existing person
	 */
	public Boolean delete(String codLibro,String codAlumno) {
		logger.debug("Deleting mora with id: " + codLibro);
		
		try {
			for (MoraBiblioteca mora:moras) {
				if (mora.getCodigoAlumno() == codAlumno && mora.getCodigoLibro()==codLibro) {
					logger.debug("Found record");
					moras.remove(mora);
					return true;
				}
			}
			
			logger.debug("No records found");
			return false;
			
		} catch (Exception e) {
			logger.error(e);
			return false;
		}
	}
	
	/**
	 * Edits an existing person
	 */
	public Boolean edit(MoraBiblioteca mora) {
		
		logger.debug("Editing person with id: " + mora.getCodigoAlumno());
		
		try {
			for (MoraBiblioteca p:moras) {
				if (p.getCodigoAlumno()== mora.getCodigoAlumno() && p.getCodigoLibro()==mora.getCodigoLibro()) {
					logger.debug("Found record");
					moras.remove(p);
					moras.add(mora);
					return true;
				}
			}
			
			logger.debug("No records found");
			return false;
			
		} catch (Exception e) {
			logger.error(e);
			return false;
		}
	}
	
	
	public void edit(String codalu,String status,String libro) {
		logger.debug("Editing person with id: " + codalu);
		
		try {
			for (MoraBiblioteca p:moras) {
				if (p.getCodigoAlumno().equals(codalu) && p.getCodigoLibro().equals(libro)) {
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
