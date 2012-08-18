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
import pe.edu.upc.dsd.ws.bean.Parent;
import pe.edu.upc.dsd.ws.bean.Persona;




public class ParentMatriculaController extends AbstractController 
{
	private static final Logger logger = Logger.getLogger(ParentMatriculaController.class);
	
	
	private static final String VISTA_ACTUAL = "mk-actualizacion";
	private static final String VISTA_PRINCIPAL = "mk-proceso-mat";
	private static final String PARAMETRO_ACCION = "accion";
	private static final String ACCION_GRABAR = "actualizardatos";
	
	private static final String  PARAMETRO_apPaternoP = "txt_appp";
	private static final String  PARAMETRO_apPaternoM = "txt_appm"; 
	private static final String  PARAMETRO_apMaternoP = "txt_apmp";
	private static final String  PARAMETRO_apMaternoM = "txt_apmm";
	private static final String  PARAMETRO_nombreP = "txt_np";
	private static final String  PARAMETRO_nombreM = "txt_nm";
	private static final String  PARAMETRO_dianacP = "txt_dp";
	private static final String  PARAMETRO_mesP = "sel_mp";
	private static final String  PARAMETRO_anionacP = "txt_ap";
	private static final String  PARAMETRO_dianacM = "txt_dm";
	private static final String  PARAMETRO_mesh  = "sel_mm";
	private static final String  PARAMETRO_anionacM = "txt_am";
	private static final String  PARAMETRO_estadocivilP = "sel_ecp";
	private static final String  PARAMETRO_estadocivilM  = "sel_ecm";
	private static final String  PARAMETRO_nacionalidadP = "txt_nnp";
	private static final String  PARAMETRO_nacionalidadM = "txt_nnm";
	private static final String  PARAMETRO_sangreP = "txt_tsp";
	private static final String  PARAMETRO_sangreM = "txt_tsm";
	private static final String  PARAMETRO_profesionP = "txt_pfp";
	private static final String  PARAMETRO_profesionM = "txt_pfm";
	private static final String  PARAMETRO_documentoIdentidadP = "txt_dnip";
	private static final String  PARAMETRO_documentoIdentidadM = "txt_dnim";
	private static final String  PARAMETRO_ceP = "txt_cep";
	private static final String  PARAMETRO_ceM = "txt_cem";
	private static final String  PARAMETRO_otrodocP = "txt_odp";
	private static final String  PARAMETRO_otrodocM = "txt_odm";
	private static final String  PARAMETRO_celularP = "txt_ncp";
	private static final String  PARAMETRO_celularM = "txt_ncm";
	private static final String  PARAMETRO_emailP = "txt_emp";
	private static final String  PARAMETRO_emailM = "txt_emm";
	
	private static final String  PARAMETRO_PCOD = "padreCod";
	private static final String  PARAMETRO_MCOD = "madreCod";
	
	

	private Service service;
	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		logger.debug("Accion es: " + request.getParameter(PARAMETRO_ACCION));
		Parent papa;
		Parent mama;
		
		if(esAccionGrabar(request))
		{
			logger.debug("Empezamos a Datos Adicionales de Matricula...");
			
			papa = service.obtenerParents(request.getParameter(PARAMETRO_PCOD));
			mama = service.obtenerParents(request.getParameter(PARAMETRO_MCOD));
			
			
			
			papa.setApPaterno(request.getParameter(PARAMETRO_apPaternoP));
			mama.setApPaterno(request.getParameter(PARAMETRO_apPaternoM));
			papa.setApMaterno(request.getParameter(PARAMETRO_apMaternoP));
			mama.setApMaterno(request.getParameter(PARAMETRO_apMaternoM));
			papa.setNombre(request.getParameter(PARAMETRO_nombreP));
			mama.setNombre(request.getParameter(PARAMETRO_nombreM));
			papa.setDianac(request.getParameter(PARAMETRO_dianacP));
			papa.setMesnac(request.getParameter(PARAMETRO_mesP));
			papa.setAnionac(request.getParameter(PARAMETRO_anionacP));
			mama.setDianac(request.getParameter(PARAMETRO_dianacM));
			papa.setMesnac(request.getParameter(PARAMETRO_mesh));
			mama.setAnionac(request.getParameter(PARAMETRO_anionacM));
			papa.setEstadocivil(request.getParameter(PARAMETRO_estadocivilP));
			mama.setEstadocivil(request.getParameter(PARAMETRO_estadocivilM ));
			papa.setNacionalidad(request.getParameter(PARAMETRO_nacionalidadP));
			mama.setNacionalidad(request.getParameter(PARAMETRO_nacionalidadM));
			papa.setTiposangre(request.getParameter(PARAMETRO_sangreP));
			mama.setTiposangre(request.getParameter(PARAMETRO_sangreM));
			papa.setProfesion(request.getParameter(PARAMETRO_profesionP));
			mama.setProfesion(request.getParameter(PARAMETRO_profesionM));
			papa.setDocumentoIdentidad(request.getParameter(PARAMETRO_documentoIdentidadP));
			mama.setDocumentoIdentidad(request.getParameter(PARAMETRO_documentoIdentidadM));
			papa.setCe(request.getParameter(PARAMETRO_ceP));
			mama.setCe(request.getParameter(PARAMETRO_ceM));
			papa.setOtrodoc(request.getParameter(PARAMETRO_otrodocP));
			mama.setOtrodoc(request.getParameter(PARAMETRO_otrodocM));
			papa.setCelular(request.getParameter(PARAMETRO_celularP));
			mama.setCelular(request.getParameter(PARAMETRO_celularM));
			papa.setEmail(request.getParameter(PARAMETRO_emailP));
			mama.setEmail(request.getParameter(PARAMETRO_emailM));

			
			papa.setEstado("Actualizado");
			mama.setEstado("Actualizado");
			
			logger.debug("Se Actualiz— al Papa'" + papa.getNombre() + "'");
			logger.debug("Se Actualiz— a la Mam‡'" +  mama.getNombre() + "'");
			
			
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
	
	

	/**
	 * @param service
	 */
	public void setService(Service service)
	{
		this.service = service;
	}
	
	
}