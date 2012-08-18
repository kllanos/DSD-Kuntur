package pe.edu.upc.dsd.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.junit.runner.notification.StoppedByUserException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;
import org.springframework.web.servlet.view.RedirectView;


import pe.edu.upc.dsd.service.Service;
import pe.edu.upc.dsd.ws.bean.Alumno;
import pe.edu.upc.dsd.ws.bean.Persona;




public class BusquedaPersonaController extends AbstractController 
{
	private static final Logger logger = Logger.getLogger(BusquedaPersonaController.class);
	
	private static final String VISTA_BUSQUEDA_DNI = "mk-dni";
	private static final String VISTA_CONTINUAR_MATRICULA = "mk-registra-sit-esp";
	private static final String PARAMETRO_ACCION = "accion";
	private static final String PARAMETRO_DNI = "txtDNI";
	private static final String PARAMETRO_ALUMNONUMERO = "s";
	
	private static final String ACCION_BUSCAR = "buscar";
	private static final String ACCION_GRABAR = "grabardni";
	
	
	private Service service;
	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		logger.debug("Accion es: " + request.getParameter(PARAMETRO_ACCION));
		
		if(esAccionBuscar(request))
		{
			logger.debug("Obtenemos el criterio de busqueda...");
			
			
			String dni = request.getParameter(PARAMETRO_DNI);
			
			String s =  request.getParameter(PARAMETRO_ALUMNONUMERO);
			
			logger.debug("Se realizara la busqueda con los siguientes parametros: codigo='" + dni + "'");
			
			Persona persona = buscarPersona(dni);
			setAttributeToModel(request, "persona", persona);
			setAttributeToModel(request, "s", s);
			
			return new ModelAndView(VISTA_BUSQUEDA_DNI, getModel(request));
		}
		
		if(esAccionGrabar(request))
		{
			logger.debug("Empezamos a grabar el DNI...");
			
			String dni = request.getParameter(PARAMETRO_DNI);
			
			
			Persona persona = buscarPersona(dni);
			
			String codigoAlu = (String)request.getSession().getAttribute("alumnoSeleccionado");
			
			Alumno alumnoActualizar = service.obtenerAlumno(codigoAlu);
			
			alumnoActualizar.setDocumentoIdentidad(dni);
			
			logger.debug("Retorna codigo Alumno de la session?='" + codigoAlu + "'");
			logger.debug("El DNI del alumno esta actualizado='" + alumnoActualizar.getDocumentoIdentidad() + "'");
			
			return new ModelAndView(VISTA_CONTINUAR_MATRICULA, getModel(request));
		}
		
		
		return new ModelAndView(VISTA_BUSQUEDA_DNI);
		
		
	}

	private void setAttributeToModel(HttpServletRequest request, String name, Object value)
	{
		getModel(request).put(name, value);
	}
	
	@SuppressWarnings("unchecked")
	private Map<String, Object> getModel(HttpServletRequest request)
	{
		Map<String, Object> model = (Map<String, Object>) request.getSession().getAttribute("model");
		
		if(model == null)
		{
			model = new HashMap<String, Object>();
			request.getSession().setAttribute("model", model);
			
			return model;
		}
		
		return model;
	}
	
	/**
	 * @param codigo
	 * @return
	 */
	
	private Persona buscarPersona(String dni)
	{
		
		Persona persona = service.obtenerPersona(dni);
			
		return persona;
	}
	
	private boolean esAccionBuscar(HttpServletRequest request)
	{
		return ACCION_BUSCAR.equals(request.getParameter(PARAMETRO_ACCION));
	}
	
	private boolean esAccionGrabar(HttpServletRequest request)
	{
		return ACCION_GRABAR.equals(request.getParameter(PARAMETRO_ACCION));
	}
	
	/**
	 * @param service
	 */
	public void setService(Service service)
	{
		this.service = service;
	}
	
	
}