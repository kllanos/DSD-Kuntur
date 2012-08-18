package pe.biblioteca.dsd.controller;

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

import pe.biblioteca.dsd.domain.MoraBibliotecaList;
import pe.biblioteca.dsd.service.MoraBibliotecaService;
import pe.biblioteca.dsd.ws.bean.MoraBiblioteca;





/**
 * REST service provider
 * 
 * Only GET and POST will return values PUT and DELETE will not.
 */
@Controller
public class MoraBibliotecaController {

	protected static Logger logger = Logger.getLogger("controller");

	
	@Resource(name = "moraBibliotecaService")
	private MoraBibliotecaService moraBibliotecaService;

	/*
	@RequestMapping(value = "/person/{id}", method = RequestMethod.GET, headers = "Accept=image/jpeg, image/jpg, image/png, image/gif")
	public @ResponseBody
	byte[] getPhoto(@PathVariable("id") Long id) {

		// Call service here
		try {
			// Retrieve image from the classpath
			InputStream is = this.getClass().getResourceAsStream("/bella.jpg");

			// Prepare buffered image
			BufferedImage img = ImageIO.read(is);

			// Create a byte array output stream
			ByteArrayOutputStream bao = new ByteArrayOutputStream();

			// Write to output stream
			ImageIO.write(img, "jpg", bao);

			logger.debug("Retrieving photo as byte array image");
			return bao.toByteArray();

		} catch (IOException e) {
			logger.error(e);
			throw new RuntimeException(e);
		}
	}

	@RequestMapping(value = "/person/{id}", method = RequestMethod.GET, headers = "Accept=application/xml, application/json")
	public @ResponseBody MoraBiblioteca getPerson(@PathVariable("id") String id) {
		logger.debug("Provider has received request to get person with id: "
				+ id);

		// Call service here
		return moraBibliotecaService.get(id);
	}

	@RequestMapping(value = "/person/{id}", method = RequestMethod.GET, headers = "Accept=application/html, application/xhtml+xml")
	public String getPersonHTML(@PathVariable("id") String id, Model model) {
		logger.debug("Provider has received request to get person with id: "
				+ id);

		// Call service to here
		model.addAttribute("person", moraBibliotecaService.get(id));

		// This will resolve to /WEB-INF/jsp/getpage.jsp
		return "getpage";
	}
*/
	
	@RequestMapping(value = "/person/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public @ResponseBody MoraBibliotecaList getPerson(@PathVariable("id") String id) {
		MoraBibliotecaList result = new MoraBibliotecaList();
		
		result.setData(moraBibliotecaService.getMoras(id));

		return result;
		
	}
	
	@RequestMapping(value = "/bibliotecapendiente/{dni}", method = RequestMethod.GET, headers = "Accept=application/json")
	public @ResponseBody MoraBibliotecaList getBibliotecaPendiente(@PathVariable("dni") String dni) {
		logger.debug("Provider has received request to get alumno with dni: " + dni);
		
		MoraBibliotecaList result = new MoraBibliotecaList();
		
		result.setData(moraBibliotecaService.getPendientes(dni));

		return result;		
		
	}	
	
	
	@RequestMapping(value = "/persons", method = RequestMethod.GET, headers = "Accept=application/xml, application/json")
	public @ResponseBody MoraBibliotecaList getPerson() {
		logger.debug("Provider has received request to get all persons");

		// Call service here
		MoraBibliotecaList result = new MoraBibliotecaList();
		
		result.setData(moraBibliotecaService.getAll());

		return result;
	}

	@RequestMapping(value = "/person", method = RequestMethod.POST, headers = "Accept=application/xml, application/json")
	public @ResponseBody
	MoraBiblioteca addPerson(@RequestBody MoraBiblioteca person) {
		logger.debug("Provider has received request to add new person");

		// Call service to here
		return moraBibliotecaService.add(person);
	}

	@RequestMapping(value = "/person/{id}", method = RequestMethod.PUT, headers = "Accept=application/xml, application/json")
	public @ResponseBody
	String updatePerson(@PathVariable("id") String id, @RequestBody MoraBiblioteca person) {
		logger.debug("Provider has received request to edit person with id: "
				+ id);

		// Call service here
		person.setCodigoAlumno(id);
		return moraBibliotecaService.edit(person).toString();
	}

	@RequestMapping(value = "/person/{id}", method = RequestMethod.DELETE, headers = "Accept=application/xml, application/json")
	public @ResponseBody
	String deleteEmployee(@PathVariable("id") String id) {
		logger.debug("Provider has received request to delete person with id: "
				+ id);

		// Call service here
		return moraBibliotecaService.delete(id,id).toString();
	}
	
	@RequestMapping(value = "/editstatus/{codalu}/{codlibro}/{status}", method = RequestMethod.GET, headers = "Accept=application/xml, application/json")
	public @ResponseBody MoraBibliotecaList editPerson(
			@PathVariable("codalu") String codalu,@PathVariable("codlibro") String codlibro,@PathVariable("status") String status
			) {
		logger.debug("Provider has received request to get all persons");

		// Call service here
		MoraBibliotecaList result = new MoraBibliotecaList();
		moraBibliotecaService.edit(codalu, status, codlibro);
		
		result.setData(moraBibliotecaService.getMoras(codalu));

		return result;
	}
	
	
	
}
