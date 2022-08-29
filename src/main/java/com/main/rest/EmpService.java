package com.main.rest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EmpService {
    @GetMapping("/message")
    public String getEmp(){
        return "emp serv1 employee Prasd";
    }
}
