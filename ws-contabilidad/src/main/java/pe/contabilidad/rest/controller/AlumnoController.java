package pe.contabilidad.rest.controller;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;

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
	
	@RequestMapping(value = "/alumno/{dni}", method = RequestMethod.GET, headers = "Accept=application/json")
	public @ResponseBody AlumnoList getAlumno(@PathVariable("dni") String dni) {
		logger.debug("Provider has received request to get alumno with dni: " + dni);
		
		AlumnoList result = new AlumnoList();
		
		result.setData(alumnoService.get(dni));

		return result;		
		
	}	
	
	@RequestMapping(value = "/alumnopendiente/{dni}", method = RequestMethod.GET, headers = "Accept=application/json")
	public @ResponseBody AlumnoList getAlumnoPendiente(@PathVariable("dni") String dni) {
		logger.debug("Provider has received request to get alumno with dni: " + dni);
		
		AlumnoList result = new AlumnoList();
		
		result.setData(alumnoService.getPendientes(dni));

		return result;		
		
	}	
	
	
	
	
	
	@RequestMapping(value = "/alumnos", method = RequestMethod.GET, headers = "Accept=application/xml, application/json")
	public @ResponseBody AlumnoList getAlumno() {
		logger.debug("Provider has received request to get all alumnos");

		AlumnoList result = new AlumnoList();
		
		result.setData(alumnoService.getAll());

		return result;
	}
	
	@RequestMapping(value = "/alumnoedit/{id}/{status}/{periodo}", method = RequestMethod.GET, headers = "Accept=application/xml, application/json")
	public @ResponseBody
	AlumnoList updateAlumno(@PathVariable("id") String codalu,@PathVariable("status") String status,@PathVariable("periodo") String periodo) {
		logger.debug("Provider has received request to edit person with id: "
				+ codalu + " " + status);

		// Call service here
		
		alumnoService.edit(codalu, status,periodo);
		AlumnoList result = new AlumnoList();
		result.setData(alumnoService.get(codalu));
		return result;
	}
	
	
	
}
