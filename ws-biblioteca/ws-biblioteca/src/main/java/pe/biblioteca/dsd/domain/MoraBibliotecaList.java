package pe.biblioteca.dsd.domain;

import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;

import pe.biblioteca.dsd.ws.bean.MoraBiblioteca;

@XmlRootElement(name="morabibliotecalists")
public class MoraBibliotecaList {

	private List<MoraBiblioteca> data;

	public List<MoraBiblioteca> getData() {
		return data;
	}

	public void setData(List<MoraBiblioteca> data) {
		this.data = data;
	}
	

}
 