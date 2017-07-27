package br.com.alura.gerenciador.web;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.Empresa;
import br.com.alura.gerenciador.dao.EmpresaDAO;

@WebServlet(urlPatterns="/novaEmpresa")
public class NovaEmpresa implements Tarefa{

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse repsonse) {
		String nome = request.getParameter("nome");
		Empresa novaEmpresa = new Empresa(nome);
		new EmpresaDAO().adiciona(novaEmpresa);
		request.setAttribute("empresa", novaEmpresa);
		return "WEB-INF/paginas/novaEmpresa.jsp";
	}
}
