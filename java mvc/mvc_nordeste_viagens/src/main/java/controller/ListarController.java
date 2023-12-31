package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClienteDAO;
import model.ClienteModel;

@WebServlet("/ListarController")
public class ListarController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ClienteDAO clientDAO = new ClienteDAO();
		List<ClienteModel> clients = clientDAO.findAll();
		request.setAttribute("clients", clients);
		
		RequestDispatcher rd = request.getRequestDispatcher("listar.jsp");
		rd.forward(request, response);

	}

}
