package org.sitecamisas.controllers;

import java.util.List;

import javax.validation.Valid;

import org.sitecamisas.daos.ProdutoDAO;
import org.sitecamisas.infra.FileSaver;
import org.sitecamisas.modelos.Produto;
import org.sitecamisas.validation.ProdutoValidation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class ProdutosController {
	
	@Autowired
    private ProdutoDAO produtoDao;
	
	@Autowired
	private FileSaver saver;
	
	@InitBinder
	public void InitBinder(WebDataBinder binder) {
		binder.addValidators(new ProdutoValidation());
	}
	
	@RequestMapping(value="/cadproduto")
    public ModelAndView cadProduto(Produto produto){
		
		ModelAndView mv = new ModelAndView("produto/formProduto");
		mv.addObject("produto", produto);
		return mv;
		
    }
	
	@RequestMapping(value="/inserirproduto", method=RequestMethod.POST)
	@CacheEvict(value="produtosHome", allEntries=true)
	public ModelAndView cadastrarProduto(MultipartFile imagem, @Valid Produto produto, BindingResult result,
			RedirectAttributes redirectAttributes) {

		System.out.println(result.getFieldValue("promocao"));
		if(result.getFieldValue("promocao").equals("true")) {
			produto.setPromocao(true);
		}else {
			produto.setPromocao(false);
		}

		if (result.hasErrors()) {

			System.out.println(result.getFieldErrors());

			return cadProduto(produto);
			// return new ModelAndView("produtos/form");
		}
		
		String path = saver.write("imagens_produtos", imagem);
	    produto.setUrl_imagem(path);
	    
	    if(produto.getId() !=0) {
			redirectAttributes.addFlashAttribute("sucesso", "Produto alterado com sucesso!!");
		}else {
			redirectAttributes.addFlashAttribute("sucesso", "Produto cadastrado com sucesso!");
		}

		produtoDao.inserir(produto);

		return new ModelAndView("redirect:/listarprodutos");
	}
	
	@RequestMapping("/listarprodutos")
	public ModelAndView listarProdutos(){
	    List<Produto> produtos = produtoDao.listar();
	    ModelAndView modelAndView = new ModelAndView("/produto/listaProdutos");
	    modelAndView.addObject("produtos", produtos);
	    return modelAndView;
	}
	
	@RequestMapping(value = "/editarproduto")
	public ModelAndView editarProduto(int id) {

		Produto produto = produtoDao.find(id);
		
		ModelAndView modelAndView = new ModelAndView("produto/formProduto");
		modelAndView.addObject("produto", produto);
		return modelAndView;

	}
	
	@RequestMapping(value = "/excluirproduto/{id}", method = RequestMethod.GET)
	public String removerProduto(@PathVariable("id") int id, RedirectAttributes redirectAttributes) {

		produtoDao.remove(id);

		redirectAttributes.addFlashAttribute("message", "Produto excluido com sucesso!");

		return "redirect:/listarprodutos";
	}

}
