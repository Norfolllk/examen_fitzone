package com.krakdev.fitzone.controllers;

import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import com.krakdev.fitzone.entidades.Socio;
import com.krakdev.fitzone.services.ServicioSocio;

@RestController
@RequestMapping("/socios")
public class SocioController {

    private final ServicioSocio servicioSocio;

    public SocioController(ServicioSocio servicioSocio) {
        this.servicioSocio = servicioSocio;
    }

    @PostMapping
    public ResponseEntity<?> crear(@RequestBody Socio socio) {
        try {
            Socio creado = servicioSocio.crear(socio);
            return new ResponseEntity<>(creado, HttpStatus.CREATED);
        } catch (IllegalArgumentException ex) {
            return ResponseEntity.badRequest().body(ex.getMessage());
        }
    }

    @GetMapping
    public ResponseEntity<List<Socio>> listar() {
        return new ResponseEntity<>(servicioSocio.listar(), HttpStatus.OK);
    }

    @GetMapping("/estado")
    public ResponseEntity<List<Socio>> buscarPorEstado(@RequestParam boolean activo) {
        return new ResponseEntity<>(servicioSocio.buscarPorEstado(activo), HttpStatus.OK);
    }
}
