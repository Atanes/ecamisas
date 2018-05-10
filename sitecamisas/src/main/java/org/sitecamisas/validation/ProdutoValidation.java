package org.sitecamisas.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import org.sitecamisas.modelos.Produto;

public class ProdutoValidation implements Validator {
	
	public boolean supports(Class<?> clazz) {
        return Produto.class.isAssignableFrom(clazz);
    }

    public void validate(Object target, Errors errors) {
    	
        ValidationUtils.rejectIfEmpty(errors, "preco_atual", "field.required" );
        ValidationUtils.rejectIfEmpty(errors, "descricao", "field.required" );
        ValidationUtils.rejectIfEmpty(errors, "url_imagem", "field.required" );
        
    }

	
}
