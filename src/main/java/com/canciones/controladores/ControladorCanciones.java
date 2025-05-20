package com.canciones.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.canciones.modelos.Cancion;
import com.canciones.servicios.ServicioCanciones;

@Controller
public class ControladorCanciones {
	
	// Atributo
	@Autowired
	private final ServicioCanciones servicioCanciones;
	
	// Constructor
	public ControladorCanciones(ServicioCanciones servicioCanciones) {
		this.servicioCanciones = servicioCanciones;
	}
	
	// GET, POST, DELETE, PUT
	@GetMapping("/canciones")
	public String desplegarCanciones(Model modelo) {
		List<Cancion> listaCanciones = this.servicioCanciones.obtenerTodasLasCanciones();
		modelo.addAttribute("listaCanciones", listaCanciones);
		return "canciones.jsp";
	}
	
	@GetMapping("/canciones/detalle/{idCancion}")
	public String desplegarDetalleCancion(@PathVariable("idCancion") Long idCancion,
										  Model modelo) {
		Cancion cancionActual = this.servicioCanciones.obtenerCancionPorId(idCancion);

		if (cancionActual == null) {
			return "redirect:/canciones";
		}
		
		modelo.addAttribute("cancion", cancionActual);
		
		return "detalleCancion.jsp";
	}

}
