package org.sitecamisas.controllers;

import java.util.List;

import org.sitecamisas.daos.ProdutoDAO;
import org.sitecamisas.modelos.Produto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@Autowired
    private ProdutoDAO produtoDao;
	
	@RequestMapping("/")
    public ModelAndView index(){
        List<Produto> produtos = produtoDao.promocao();
	    ModelAndView modelAndView = new ModelAndView("home");
	    modelAndView.addObject("produtos", produtos);
	    return modelAndView;
    }
	
	@RequestMapping("/sobrenos")
    public String sobrenos(){
        return "sobrenos";
    }
	
	@RequestMapping("/feminino")
    public ModelAndView feminino(){
        List<Produto> produtos = produtoDao.genero("feminino");
	    ModelAndView modelAndView = new ModelAndView("feminino");
	    modelAndView.addObject("produtos", produtos);
	    return modelAndView;
    }
	
	@RequestMapping("/masculino")
    public ModelAndView masculino(){
		List<Produto> produtos = produtoDao.genero("masculino");
	    ModelAndView modelAndView = new ModelAndView("masculino");
	    modelAndView.addObject("produtos", produtos);
	    return modelAndView;
    }
}
