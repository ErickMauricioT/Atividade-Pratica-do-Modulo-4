package controller;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClienteDAO;
import model.ClienteModel;

@WebServlet("/AtualizarController")
public class AtualizarController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		
		ClienteDAO clientDAO = new ClienteDAO();
		ClienteModel client = clientDAO.findById(id);
		
		request.setAttribute("client", client);
		
		RequestDispatcher rd = request.getRequestDispatcher("atualizar.jsp");
		rd.forward(request, response);

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			ClienteModel client = new ClienteModel();
			client.setId(Long.parseLong(request.getParameter("id")));
			client.setCpf(Long.parseLong(request.getParameter("cpf")));
			client.setNome(request.getParameter("nome"));
			client.setBornDate(LocalDate.parse(request.getParameter("bornDate")));
			client.setAdress(request.getParameter("adress"));
			client.setEmail(request.getParameter("email"));
			client.setTel(Long.parseLong(request.getParameter("tel")));
			
			ClienteDAO cDAO = new ClienteDAO();
			cDAO.updateClient(client);
			
			response.sendRedirect("ListarController");
		} catch (Exception e) {
		}
	}
}
