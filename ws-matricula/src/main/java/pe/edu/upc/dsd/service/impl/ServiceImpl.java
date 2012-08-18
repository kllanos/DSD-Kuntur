package pe.edu.upc.dsd.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;


import pe.edu.upc.dsd.service.Service;
import pe.edu.upc.dsd.service.ws.PersonaService;
import pe.edu.upc.dsd.ws.bean.*;

public class ServiceImpl implements Service 
{
	private PersonaService personaService;

	
	
	private List<Parent> parents;
	private List<Alumno> alumnos;
	private List<AlumnoParent> alumnoParent;
	
	public ServiceImpl(){
		parents = generarParents();
		alumnos = generarAlumnos();
		alumnoParent = asignarParentstoChildren();
	}
	
	
	private List<Parent> generarParents() {
		
		List<Parent> parentsPrueba = new ArrayList<Parent>();
				
		        Parent parent1 = new Parent();
		        parent1.setCodigoParent("PAR0001");
		        parent1.setDocumentoIdentidad("10111111");
		        parent1.setApPaterno("Llanos");
		        parent1.setApMaterno("Silva");
		        parent1.setNombre("Enrique");
		        parent1.setUsuario("mat001");
		        parent1.setClave("12345");
		        parent1.setMesnac("01");
		    	parent1.setAnionac("1920");
		    	parent1.setDianac("01");
		    	parent1.setEstadocivil("Casado");
		    	parent1.setNacionalidad("Peruano");
		    	parent1.setTiposangre("RH O+");
		    	parent1.setProfesion("Ingeniero de Sistemas");
		    	parent1.setCe("010101");
		    	parent1.setOtrodoc("Brevete 123312312");
		    	parent1.setCelular("990995688");
		    	parent1.setEmail("mrinbox@gmail.com");
		    	parent1.setEstado("PENDIENTE");
		        
		        Parent parent2 = new Parent();
		        parent2.setCodigoParent("PAR0002");
		        parent2.setDocumentoIdentidad("10222222");
		        parent2.setApPaterno("Camarena");
		        parent2.setApMaterno("Cueva");
		        parent2.setNombre("Jorge");
		        parent2.setUsuario("mat002");
		        parent2.setClave("12345");
		        parent2.setMesnac("05");
		        parent2.setAnionac("1978");
		        parent2.setDianac("05");
		        parent2.setEstadocivil("Casado");
		        parent2.setNacionalidad("Peruana");
		        parent2.setTiposangre("RH O+");
		        parent2.setProfesion("Ingeniero de Sistemas");
		        parent2.setCe("555555");
		        parent2.setOtrodoc("Ninguno");
		        parent2.setCelular("99099999");
		        parent2.setEmail("mrmaximus@gmail.com");
		        parent2.setEstado("PENDIENTE");
		        

		        Parent parent3 = new Parent();
		        parent3.setCodigoParent("PAR0003");
		        parent3.setDocumentoIdentidad("10777777");
		        parent3.setApPaterno("Rios");
		        parent3.setApMaterno("Martinez");
		        parent3.setNombre("Alicia");
		        parent3.setUsuario("mat003");
		        parent3.setClave("12345");
		        parent3.setMesnac("04");
		        parent3.setAnionac("1980");
		        parent3.setDianac("07");
		        parent3.setEstadocivil("Casado");
		        parent3.setNacionalidad("Peruana");
		        parent3.setTiposangre("RH O+");
		        parent3.setProfesion("Ingeniero de Sistemas");
		        parent3.setCe("010101");
		        parent3.setOtrodoc("Brevete 44444444");
		        parent3.setCelular("997775688");
		        parent3.setEmail("mrsinbox@gmail.com");
		        parent3.setEstado("PENDIENTE");
		        
		        Parent parent4 = new Parent();
		        parent4.setCodigoParent("PAR0004");
		        parent4.setDocumentoIdentidad("10888888");
		        parent4.setApPaterno("Cueva");
		        parent4.setApMaterno("Rivera");
		        parent4.setNombre("Maria");
		        parent4.setUsuario("mat004");
		        parent4.setClave("12345");
		        parent4.setMesnac("08");
		        parent4.setAnionac("1978");
		        parent4.setDianac("08");
		        parent4.setEstadocivil("Casado");
		        parent4.setNacionalidad("Peruano");
		        parent4.setTiposangre("RH O+");
		        parent4.setProfesion("Abogada");
		        parent4.setCe("777777");
		        parent4.setOtrodoc("Ninguno");
		        parent4.setCelular("99099999");
		        parent4.setEmail("mrsmaximus@gmail.com");
		        parent4.setEstado("PENDIENTE");
		        
		        
		  
		        parentsPrueba.add(parent1);
		        parentsPrueba.add(parent2);
		        parentsPrueba.add(parent3);
		        parentsPrueba.add(parent4);
			    
			    
				return parentsPrueba;
		}

	
		private List<Alumno> generarAlumnos() {
		
		List<Alumno> alumnosPrueba = new ArrayList<Alumno>();
				
				Alumno alumno1 = new Alumno();
				alumno1.setCodigoAlumno("ALU0001");
				alumno1.setApPaterno("Rozas");
				alumno1.setApMaterno("Vargas");
				alumno1.setNombre("Jorge Daniel");
				alumno1.setSeccion("S1A");
			
				Alumno alumno2 = new Alumno();
				alumno2.setCodigoAlumno("ALU0002");
				alumno2.setApPaterno("Lescano");
				alumno2.setApMaterno("Palacios");
				alumno2.setNombre("Vanessa");
				alumno2.setSeccion("S2E");
				
				Alumno alumno3 = new Alumno();
				alumno3.setCodigoAlumno("ALU0003");
				alumno3.setApPaterno("Hijar");
				alumno3.setApMaterno("Contreras");
				alumno3.setNombre("Martin");
				alumno3.setSeccion("S3A");
				
				Alumno alumno4 = new Alumno();
				alumno4.setCodigoAlumno("ALU0004");
				alumno4.setApPaterno("Vasquez");
				alumno4.setApMaterno("Salas");
				alumno4.setNombre("Jose Antonio");
				alumno4.setSeccion("S4E");
		  
				alumnosPrueba.add(alumno1);
				alumnosPrueba.add(alumno2);
				alumnosPrueba.add(alumno3);
				alumnosPrueba.add(alumno4);
				
			    
				return alumnosPrueba;
		}

	
		private List<AlumnoParent> asignarParentstoChildren() {
		
				List<AlumnoParent> parentsPrueba = new ArrayList<AlumnoParent>();
				//Los Padres
				AlumnoParent alumnoParent1 = new AlumnoParent();
				alumnoParent1.setCodigoAlumno("ALU0001");
				alumnoParent1.setCodigoParent("PAR0001"); // A el padre Enrique Llanos se le asigna 1 Hijo
				alumnoParent1.setCodigoFamilia("FAM0001");// A el padre Enrique Llanos se le asigna 1 Familia
				alumnoParent1.setRelacion("Padre");
		        
				AlumnoParent alumnoParent2 = new AlumnoParent();
				alumnoParent2.setCodigoAlumno("ALU0002");
				alumnoParent2.setCodigoParent("PAR0001"); // A el padre Enrique Llanos se le asigna otro Hijo
				alumnoParent2.setCodigoFamilia("FAM0001");// A el padre Enrique Llanos se la misma familia
				alumnoParent2.setRelacion("Padre");
				
				AlumnoParent alumnoParent3 = new AlumnoParent();
				alumnoParent3.setCodigoAlumno("ALU0003");
				alumnoParent3.setCodigoParent("PAR0002");
				alumnoParent3.setCodigoFamilia("FAM0002");
				alumnoParent3.setRelacion("Padre");
				
				AlumnoParent alumnoParent4 = new AlumnoParent();
				alumnoParent4.setCodigoAlumno("ALU0004");
				alumnoParent4.setCodigoParent("PAR0002");
				alumnoParent4.setCodigoFamilia("FAM0002");
				alumnoParent4.setRelacion("Padre");
				
				//Las Madres
				
				AlumnoParent alumnoParent5 = new AlumnoParent();
				alumnoParent5.setCodigoAlumno("ALU0001");
				alumnoParent5.setCodigoParent("PAR0003"); // A La Madre se le asigna 1 Hijo
				alumnoParent5.setCodigoFamilia("FAM0001");// A La Madre 1 Familia
				alumnoParent5.setRelacion("Madre");
		        
				AlumnoParent alumnoParent6 = new AlumnoParent();
				alumnoParent6.setCodigoAlumno("ALU0002");
				alumnoParent6.setCodigoParent("PAR0003"); 
				alumnoParent6.setCodigoFamilia("FAM0001");
				alumnoParent6.setRelacion("Madre");
				
				AlumnoParent alumnoParent7 = new AlumnoParent();
				alumnoParent7.setCodigoAlumno("ALU0003");
				alumnoParent7.setCodigoParent("PAR0004");
				alumnoParent7.setCodigoFamilia("FAM0002");
				alumnoParent7.setRelacion("Madre");
				
				AlumnoParent alumnoParent8 = new AlumnoParent();
				alumnoParent8.setCodigoAlumno("ALU0004");
				alumnoParent8.setCodigoParent("PAR0004");
				alumnoParent8.setCodigoFamilia("FAM0002");
				alumnoParent8.setRelacion("Madre");
				
			    parentsPrueba.add(alumnoParent1);
		        parentsPrueba.add(alumnoParent2);
		        parentsPrueba.add(alumnoParent3);
		        parentsPrueba.add(alumnoParent4);
		        parentsPrueba.add(alumnoParent5);
		        parentsPrueba.add(alumnoParent6);
		        parentsPrueba.add(alumnoParent7);
		        parentsPrueba.add(alumnoParent8);
			    
			    
				return parentsPrueba;
		}

	
	
	
	//@Override
		public Parent obtenerParentUsuario(String usuario,String clave) {

			
			for (Parent parent : parents) 
			{
				if(parent.getUsuario().equals(usuario) && parent.getClave().equals(clave))
				{
					return parent;
				}
			}

	        return null;
		}
	
		
		public List<Alumno> obtenerHijos(String codigoParent) {
			
			List<Alumno> alumnosPrueba = new ArrayList<Alumno>();

			for (AlumnoParent alumnoPar : alumnoParent) 
			{
				if(alumnoPar.getCodigoParent().equals(codigoParent))
				{
					alumnosPrueba.add(obtenerAlumno(alumnoPar.getCodigoAlumno()));
				}
			}
			
			return alumnosPrueba;
		}
	
		
		public  Parent obtenerParents(String codigoParent) {
			
			Parent parentPrueba = new Parent();

			for (Parent parentPar : parents) 
			{
				if(parentPar.getCodigoParent().equals(codigoParent))
				{
					parentPrueba=parentPar;
				}
			}
			
			return parentPrueba;
		}
	
		
		public List<Parent> obtenerFamilia(String codigoParent) {
			
			List<Alumno> alumnosPrueba = new ArrayList<Alumno>();
			List<Parent> parentsPrueba = new ArrayList<Parent>();
			Parent parTemp;	
			//Obtener Familia
			
			String codFamily = "";
			
			for (AlumnoParent alumnoPar : alumnoParent) 
			{
				if(alumnoPar.getCodigoParent().equals(codigoParent))
				{
					codFamily = alumnoPar.getCodigoFamilia();
				}
			}
			

			for (AlumnoParent alumnoPar2 : alumnoParent) 
			{
				if(alumnoPar2.getCodigoFamilia().equals(codFamily))
				{
					
					parTemp=obtenerParents(alumnoPar2.getCodigoParent());
					parTemp.setRelation(alumnoPar2.getRelacion());
					parentsPrueba.add(parTemp);
				}
			}
			
			return parentsPrueba;
		}
		
		
		public Alumno obtenerAlumno(String codigoAlu) {

			
			for (Alumno alumno : alumnos) 
			{
				if(alumno.getCodigoAlumno().equals(codigoAlu))
				{
					return alumno;
				}
			}

	        return null;
		}
	
	/**
	 * @see pe.edu.upc.dsd.service.Service#buscarPersona(java.lang.String)
	 */
	//@Override
	public Persona obtenerPersona(String dni) 
	{
		return personaService.obtenerPersonaDNI(dni);
	}

	/**
	 * @param almacenService the almacenService to set
	 */
	public void setPersonaService(PersonaService personaService) 
	{
		this.personaService = personaService;
	}
	
	
}