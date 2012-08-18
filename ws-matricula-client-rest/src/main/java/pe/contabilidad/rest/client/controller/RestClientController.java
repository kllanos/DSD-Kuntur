package pe.contabilidad.rest.client.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import pe.contabilidad.rest.client.domain.Alumno;
import pe.contabilidad.rest.client.domain.AlumnoList;
import pe.contabilidad.rest.util.Writer;

@Controller
public class RestClientController {
	
	protected static Logger logger = Logger.getLogger("controller");
	
	private RestTemplate restTemplate = new RestTemplate();
	
	@RequestMapping(value = "/getall", method = RequestMethod.GET)
	public String getAll(Model model) {
		logger.debug("Retrieve all alumnos");
		
		// Prepare acceptable media type
		List<MediaType> acceptableMediaTypes = new ArrayList<MediaType>();
		acceptableMediaTypes.add(MediaType.APPLICATION_XML);
		
		// Prepare header
		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(acceptableMediaTypes);
		HttpEntity<Alumno> entity = new HttpEntity<Alumno>(headers);

		// Send the request as GET
		try {
			ResponseEntity<AlumnoList> result = 
					restTemplate.exchange("http://localhost:8080/ws-contabilidad/contabilidad/alumnos",
							HttpMethod.GET, entity, AlumnoList.class);
			// Add to model
			model.addAttribute("alumnos", result.getBody().getData());
			
		} catch (Exception e) {
			logger.error(e);
		}
		
		// This will resolve to /WEB-INF/jsp/personspage.jsp
		return "AlumnosPagos";
	}
	
	@RequestMapping(value = "/get", method = RequestMethod.GET)
	public String getAlumno(@RequestParam("dni") String dni, Model model) {
		logger.debug("Retrieve alumno with id: " + dni);
		
		// Prepare acceptable media type
		List<MediaType> acceptableMediaTypes = new ArrayList<MediaType>();
		acceptableMediaTypes.add(MediaType.APPLICATION_XML);
		
		// Prepare header
		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(acceptableMediaTypes);
		HttpEntity<Alumno> entity = new HttpEntity<Alumno>(headers);

		// Send the request as GET
		try {
			ResponseEntity<Alumno> result = restTemplate.exchange("http://localhost:8080/ws-contabilidad/contabilidad/alumno/{dni}", HttpMethod.GET, entity, Alumno.class, dni);
			// Add to model
			model.addAttribute("alumno", result.getBody());
			
		} catch (Exception e) {
			logger.error(e);
		}
		
		// This will resolve to /WEB-INF/jsp/getpage.jsp
		return "DetalleAlumnoPagos";
	}
	
}
