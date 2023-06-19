package com.erison.dojosandninjas.controllers;

import com.erison.dojosandninjas.models.Dojo;
import com.erison.dojosandninjas.models.Ninja;
import com.erison.dojosandninjas.services.DojoService;
import com.erison.dojosandninjas.services.NinjaService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class DojoNinjaController {

    @Autowired
    private DojoService dojoService;
    @Autowired
    private NinjaService ninjaService;

@GetMapping("/")
public String mainP(){

    return "index";
}
    @GetMapping("/dojos")
    public String dojos(Model model){
        List<Dojo>allDojos=dojoService.getAll();
        model.addAttribute("allDojos",allDojos);
        return "dojos";
    }

    @GetMapping("/dojos/new")
    public String newD(@ModelAttribute("newDojo")Dojo newDojo){

    return "newDojo";
}
    @PostMapping("/create")
    public String createD(@Valid @ModelAttribute("newDojo")Dojo newDojo, BindingResult result){
    if (result.hasErrors()){
        return "newDojo";
    }else {
        dojoService.createDojo(newDojo);
        return "redirect:/dojos";
    }
    }

    @GetMapping("/ninjas")
    public String ninjas(Model model){
        List<Ninja>allNinjas=ninjaService.getAll();
        model.addAttribute("allNinjas",allNinjas);
        return "ninjas";
    }
    @GetMapping("/ninjas/new")
    public String newN(@ModelAttribute("newNinja")Ninja newNinja , Model model){
        model.addAttribute("allDojos",dojoService.getAll());
        return "newNinja";
    }
    @PostMapping("/createN")
    public String createN(@Valid @ModelAttribute("newNinja")Ninja newNinja, BindingResult result){
        if (result.hasErrors()){
            return "newNinja";
        }else {
            ninjaService.createNinja(newNinja);
            return "redirect:/ninjas";
        }
    }
    @GetMapping("/dojos/{id}")
    public String details(@PathVariable Long id,Model model){
    model.addAttribute("theDojo",dojoService.details(id));
    return "details";
    }
}
