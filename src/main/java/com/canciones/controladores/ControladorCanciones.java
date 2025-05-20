package com.canciones.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.canciones.modelos.Cancion;
import com.canciones.servicios.ServicioCanciones;

import jakarta.validation.Valid;

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
	
	@GetMapping("/canciones/formulario/agregar")
	public String formularioAgregarCancion(@ModelAttribute("cancion") Cancion cancion) {
		return "agregarCancion.jsp";
	}
	
	@GetMapping("/canciones/formulario/editar/{idCancion}")
	public String formularioEditarCancion(@PathVariable("idCancion") Long idCancion,
										  Model modelo) {
		Cancion cancionActual = this.servicioCanciones.obtenerCancionPorId(idCancion);
		
		if (cancionActual == null) {
			return "redirect:/canciones";
		}
		
		modelo.addAttribute("cancion", cancionActual);
		

		return "editarCancion.jsp";
	}
	
	@PostMapping("/canciones/procesa/agregar")
	public String procesarAgregarCancion(@Valid @ModelAttribute("cancion") Cancion cancion,
										 BindingResult validaciones) {
		if (validaciones.hasErrors()) {
			return "agregarCancion.jsp";
		}
		
		this.servicioCanciones.agregarCancion(cancion);
		return "redirect:/canciones";
	}
	
	@PutMapping("/canciones/procesa/editar/{idCancion}")
	public String procesarEditarCancion(@PathVariable("idCancion") Long idCancion,
										@Valid @ModelAttribute("cancion") Cancion cancion,
										BindingResult validaciones) {
		
		if (validaciones.hasErrors()) {
			return "editarCancion.jsp";
		}
		
		Cancion cancionActual = this.servicioCanciones.obtenerCancionPorId(idCancion);
		cancion.setId(cancionActual.getId());
		
		this.servicioCanciones.actualizaCancion(cancion);
		return "redirect:/canciones";
	}

}
