package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AlteraContatoLogic implements Logica {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub

		return "/WEB-INF/jsp/altera-contato.jsp";
	}

}
