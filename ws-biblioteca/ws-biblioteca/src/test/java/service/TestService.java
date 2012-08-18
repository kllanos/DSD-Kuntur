package service;

import junit.framework.TestCase;


import org.apache.cxf.jaxrs.client.WebClient;
import org.apache.log4j.Logger;
import org.junit.Test;

public class TestService extends TestCase{
	
	Logger logger = Logger.getLogger(TestService.class);
	
	@Test
    public void testGetPagoAlumno() {
    	   	
    	System.out.println(invokeService("http://localhost:8080/ws-biblioteca/deudas/bibliotecapendiente/ALU0002"));
    }
	
	@Test
    public void testGetPagosAlumnos() {
    	   	
    	System.out.println(invokeService("http://localhost:8080/ws-biblioteca/deudas/persons"));
    }
	
	private String invokeService(String targetURL) {
        WebClient webClient = WebClient.create(targetURL);
        webClient.accept("application/json");
        return webClient.get(String.class);
    }

}
