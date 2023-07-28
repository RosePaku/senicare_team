package com.java.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.java.dto.Auth_Vol;
import com.java.service.Auth_VolService;

import java.util.List;

@RestController
@RequestMapping("/auth_vol")
public class Auth_VolController {
    private final Auth_VolService auth_volService;

    @Autowired
    public Auth_VolController(Auth_VolService auth_volService) {
        this.auth_volService = auth_volService;
    }

    @PostMapping
    public void addAuth_Vol(@RequestBody Auth_Vol auth_vol) {
        auth_volService.insert(auth_vol);
    }

    @GetMapping("/{auth_volNo}")
    public Auth_Vol findAuth_Vol(@PathVariable String auth_volNo) {
        return auth_volService.getByNo(auth_volNo);
    }

    @GetMapping
    public List<Auth_Vol> findAllAuth_Vol() {
        return auth_volService.getAll();
    }

    @PutMapping("/{auth_volNo}")
    public void updateAuth_Vol(@PathVariable String auth_volNo, @RequestBody Auth_Vol auth_vol) {
        auth_volService.update(auth_vol);
    }

    @DeleteMapping("/{auth_volNo}")
    public void deleteAuth_Vol(@PathVariable String auth_volNo) {
        auth_volService.delete(auth_volNo);
    }
}
