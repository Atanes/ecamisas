package org.sitecamisas.controllers;

import java.util.List;

import org.sitecamisas.daos.ContatoDAO;
import org.sitecamisas.modelos.Contato;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class ContatosController {

	@Autowired
	private ContatoDAO contatoDao;

	@RequestMapping(value = "/cadcontato")
	public ModelAndView cadContato(Contato contato) {
		
		ModelAndView modelAndView = new ModelAndView("/contato/formContato");
		modelAndView.addObject("contato", contato);
		return modelAndView;
	}

	@RequestMapping(value = "/editarcontato")
	public ModelAndView editarContato(int id) {

		Contato contato = contatoDao.find(id);
		
		ModelAndView modelAndView = new ModelAndView("/contato/formContato");
		modelAndView.addObject("contato", contato);
		return modelAndView;

	}

	@RequestMapping("/incluircontato")
	public String incluirContato(Contato contato, RedirectAttributes redirectAttributes) {
		System.out.println("inserindo um contato de id=" + contato.getId() + " em eCamisas");
		
		if(contato.getId() !=0) {
			redirectAttributes.addFlashAttribute("sucesso", "Contato alterado com sucesso!!");
		}else {
			redirectAttributes.addFlashAttribute("sucesso", "Contato incluido com sucesso!");
		}
		
		contatoDao.inserir(contato);
		
		return "redirect:/listarContatos";
	}

	@RequestMapping("/listarContatos")
	public ModelAndView listar() {
		List<Contato> contatos = contatoDao.listar();
		ModelAndView modelAndView = new ModelAndView("/contato/listaContatos");
		modelAndView.addObject("contatos", contatos);
		return modelAndView;
	}
	
	@RequestMapping(value = "/excluirContato/{id}", method = RequestMethod.GET)
	public String removerContato(@PathVariable("id") int id, RedirectAttributes redirectAttributes) {

		contatoDao.remove(id);

		redirectAttributes.addFlashAttribute("message", "Contato excluido com sucesso!");

		return "redirect:/listarContatos";
	}

}
