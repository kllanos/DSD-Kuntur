package pe.edu.upc.dsd.controller;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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




public class AdministrarMatriculaController extends AbstractController 
{
	private static final Logger logger = Logger.getLogger(AdministrarMatriculaController.class);
	
	
	private static final String VISTA_CONTINUAR_MATRICULA = "mk-acepta-mat";
	private static final String VISTA_ACTUAL = "mk-registra-sit-esp";
	private static final String VISTA_FINALIZAR = "mk-finaliza";
	private static final String VISTA_PRINCIPAL = "mk-proceso-mat";
	private static final String PARAMETRO_ACCION = "accion";
	
	private static final String PARAMETRO_COMNENTSP = "txtCommentsSpecial";
	private static final String PARAMETRO_COMMENTSALUD = "txtCommentsSalud";
	private static final String PARAMETRO_CHKHEAD = "chkSeguridad";
	
	private static final String ACCION_GRABAR = "grabarmat";
	private static final String ACCION_ACEPMAT = "grabaraceptacionmat";
	private static final String ACCION_PRINCIPAL = "retornaprincipal";
	
	private static final String PARAMETRO_SEG = "elegirSeg";
	private static final String PARAMETRO_SEGPROPIO  = "elegirSegPropio";
	private static final String PARAMETRO_COMP  =  "companiaSeg";
	private static final String PARAMETRO_ACEPT  = "checkAceptacionMat";
	private static final String PARAMETRO_NOMFIRMA  = "nombreFirma";
	
	

	private Service service;
	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		logger.debug("Accion es: " + request.getParameter(PARAMETRO_ACCION));
	
		
		if(esAccionGrabar(request))
		{
			logger.debug("Empezamos a Datos Adicionales de Matricula...");
			
			String comentarioSpecial = request.getParameter(PARAMETRO_COMNENTSP);
			String comentarioSalud = request.getParameter(PARAMETRO_COMMENTSALUD);
			String comentarioHead = request.getParameter(PARAMETRO_CHKHEAD);
			
			String codigoAlu = (String)request.getSession().getAttribute("alumnoSeleccionado");
			
			Alumno alumnoActualizar = service.obtenerAlumno(codigoAlu);
			
			alumnoActualizar.setSitSpecial(comentarioSpecial);
			alumnoActualizar.setSitSalud(comentarioSalud);
			alumnoActualizar.setFlagHeadMaster(comentarioHead);
			
			logger.debug("Retorna codigo Alumno de la session?='" + codigoAlu + "'");
			logger.debug("Situación especial del alumno='" + alumnoActualizar.getSitSpecial() + "'");
			
			return new ModelAndView(VISTA_CONTINUAR_MATRICULA, getModel(request));
		}
		
		
		if(esAccionFinalizar(request))
		{
			logger.debug("Empezamos a Datos Finales de Matricula...");
			
			String seguro = request.getParameter(PARAMETRO_SEG);
			String seguroPropio = request.getParameter(PARAMETRO_SEGPROPIO);
			String seguroCompania = request.getParameter(PARAMETRO_COMP);
			String aceptacionMat = request.getParameter(PARAMETRO_ACEPT);
			String firmaParent = request.getParameter(PARAMETRO_NOMFIRMA);
			
			
			
			int randomNum = 10000 + (int)(Math.random()*50000); 
			DateFormat dateFormat = new SimpleDateFormat("ddMMyyyy");
			DateFormat dateFormat2 = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
			Date date = new Date();
			String fechamatSimple=(dateFormat.format(date));
			String fechamat=(dateFormat2.format(date));
			
			
			String codigoAlu = (String)request.getSession().getAttribute("alumnoSeleccionado");
			
			Alumno alumnoActualizar = service.obtenerAlumno(codigoAlu);
			
			alumnoActualizar.setInfSeguroMarkham(seguro);
			
			alumnoActualizar.setCodigomat("MAT"+fechamatSimple+"-"+randomNum);
			alumnoActualizar.setFechaMat(fechamat);
			
			if(seguroCompania != null){
				alumnoActualizar.setInfSeguroOtros(seguroCompania);
			}else{
				alumnoActualizar.setInfSeguroOtros(seguroPropio);
			}
			alumnoActualizar.setInfAceptMat(aceptacionMat);
			alumnoActualizar.setFirmaAcept(firmaParent);
			
			logger.debug("Retorna codigo Alumno de la session?='" + codigoAlu + "'");
			logger.debug("El DNI del alumno esta actualizado='" + alumnoActualizar.getFirmaAcept() + "'");
			
			
			
			return new ModelAndView(VISTA_FINALIZAR, getModel(request));
		
		}
		
		
		
		if(esAccionPrincipal(request))
		{
			
			logger.debug("Se retorna a la pantalla principal de Matricula...");
			
			
			
			
			return new ModelAndView(VISTA_PRINCIPAL, getModel(request));
		
		}
		
		
		
		return new ModelAndView(VISTA_ACTUAL);
		
		
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
	
	
	
	private boolean esAccionGrabar(HttpServletRequest request)
	{
		return ACCION_GRABAR.equals(request.getParameter(PARAMETRO_ACCION));
	}
	
	private boolean esAccionFinalizar(HttpServletRequest request)
	{
		return ACCION_ACEPMAT.equals(request.getParameter(PARAMETRO_ACCION));
	}
	
	private boolean esAccionPrincipal(HttpServletRequest request)
	{
		return ACCION_PRINCIPAL.equals(request.getParameter(PARAMETRO_ACCION));
	}
	

	/**
	 * @param service
	 */
	public void setService(Service service)
	{
		this.service = service;
	}
	
	
}