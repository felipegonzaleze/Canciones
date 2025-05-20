package com.canciones.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.canciones.modelos.Cancion;
import com.canciones.repositorios.RepositorioCanciones;

@Service
public class ServicioCanciones {
	
	// Atributo
	@Autowired
	private final RepositorioCanciones repositorioCanciones;
	
	// Constructor
	public ServicioCanciones(RepositorioCanciones repositorioCanciones) {
		this.repositorioCanciones = repositorioCanciones;
	}
	
	// Métodos
	public List<Cancion> obtenerTodasLasCanciones() {
		return this.repositorioCanciones.findAll();
	}
	
	public Cancion obtenerCancionPorId(Long cancionId) {
		return this.repositorioCanciones.findById(cancionId).orElse(null);
	}

}
