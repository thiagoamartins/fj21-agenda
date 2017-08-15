package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

@WebServlet("/adicionaContato")
public class AdicionaContatoServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 885926685202019945L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// super.service(arg0, arg1);

		// busca o writer
		PrintWriter out = response.getWriter();

		// buscando os parâmetro no request
		String nome = request.getParameter("nome");
		String endereco = request.getParameter("endereco");
		String email = request.getParameter("email");
		String dataEmTexto = request.getParameter("dataNascimento");
		Calendar dataNascimento = null;

		// fazendo a conversão da data
		try {
			Date date = new SimpleDateFormat("dd/MM/yyyy").parse(dataEmTexto);
			dataNascimento = Calendar.getInstance();
			dataNascimento.setTime(date);
		} catch (ParseException e) {
			out.println("Erro de conversão de data");
			return; // para a execução do método
		}

		// monta um objeto contato
		Contato contato = new Contato();
		contato.setNome(nome);
		contato.setEndereco(endereco);
		contato.setEmail(email);
		contato.setDataNascimento(dataNascimento);

		// salva o contato
		Connection connection = (Connection) request.getAttribute("conexao");
		
		ContatoDao dao = new ContatoDao(connection);
		dao.adiciona(contato);

		// imprime o nome do contato que foi adicionado - a linha abaixo executa HTML
		//out.println("<html><body>Contato " + contato.getNome() + " adicionado com sucesso! </body></html>");

		//RequestDispatcher abaixo para passar a request para o JSP mostrar o resultado no front end
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/jsp/contato-adicionado.jsp");
		rd.forward(request, response);
	}

}
