package pe.contabilidad.rest.controller;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.annotation.Resource;
import javax.imageio.ImageIO;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import pe.contabilidad.rest.domain.Alumno;
import pe.contabilidad.rest.domain.AlumnoList;
import pe.contabilidad.rest.service.AlumnoService;

/**
 * REST service provider
 * 
 * Only GET and POST will return values PUT and DELETE will not.
 */
@Controller
public class AlumnoController {
	
	protected static Logger logger = Logger.getLogger("controller");
	
	@Resource(name = "alumnoService")
	private AlumnoService alumnoService;
	
	@RequestMapping(value = "/alumno/{dni}", method = RequestMethod.GET, headers = "Accept=application/xml, application/json")
	public @ResponseBody Alumno getAlumno(@PathVariable("dni") String dni) {
		logger.debug("Provider has received request to get alumno with dni: " + dni);

		// Call service here
		return alumnoService.get(dni);
	}

	@RequestMapping(value = "/alumno/{dni}", method = RequestMethod.GET, headers = "Accept=application/html, application/xhtml+xml")
	public String getPersonHTML(@PathVariable("dni") String dni, Model model) {
		logger.debug("Provider has received request to get alumno with dni: " + dni);

		// Call service to here
		model.addAttribute("alumno", alumnoService.get(dni));

		// This will resolve to /WEB-INF/jsp/getpage.jsp
		return "getpage";
	}

	@RequestMapping(value = "/alumnos", method = RequestMethod.GET, headers = "Accept=application/xml, application/json")
	public @ResponseBody AlumnoList getAlumno() {
		logger.debug("Provider has received request to get all alumnos");

		// Call service here
		AlumnoList result = new AlumnoList();
		
		result.setData(alumnoService.getAll());

		return result;
	}

}
