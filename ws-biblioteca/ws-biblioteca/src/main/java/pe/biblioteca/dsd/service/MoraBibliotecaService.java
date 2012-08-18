package pe.biblioteca.dsd.service;

import java.util.ArrayList;
import java.util.List;


import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.springframework.stereotype.Service;


import pe.biblioteca.dsd.ws.bean.MoraBiblioteca;

@Service("moraBibliotecaService")
@Produces("application/xml")

public interface MoraBibliotecaService {
	
	public List<MoraBiblioteca> getAll();
	public MoraBiblioteca get( String id );
	public MoraBiblioteca add(MoraBiblioteca mora);
	public Boolean delete(String codLibro,String codAlumno);
	public Boolean edit(MoraBiblioteca mora);
	public ArrayList<MoraBiblioteca> getMoras( String id ) ;
	public ArrayList<MoraBiblioteca> getPendientes( String dni);
	public void edit(String codalu,String status,String libro);
}
