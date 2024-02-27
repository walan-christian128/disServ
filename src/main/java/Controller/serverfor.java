package Controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import DAO.FornecedoresDAO;
import Model.Fornecedores;
import org.json.JSONObject;

/**
 * Servlet implementation class serverfor
 */

@WebServlet(urlPatterns = { "/insert","/select" })
public class serverfor extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Fornecedores obj = new Fornecedores();
	FornecedoresDAO dao = new FornecedoresDAO();

	public serverfor() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String action = request.getServletPath();
		System.out.println(action);
		if (action.equals("/insert")) {
			CadastrarFornecedor(request, response);
		} else if (action.equals("/select")) {
			modalFornecedor(request, response);

		} else {
			response.sendRedirect("Fornecedores.jsp");

		}
	}

	private void modalFornecedor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String idFornec = request.getParameter("modalId");
		JSONObject jsonResponse = new JSONObject();

		if(idFornec !=null && !idFornec.trim().isEmpty()) {
			try {
				obj.setId(Integer.parseInt(idFornec));
				dao.modalFornecedores(obj);

				request.setAttribute("modalId", obj.getId());
				request.setAttribute("modalNome", obj.getNome());
				request.setAttribute("modalCnpj", obj.getCnpj());
				request.setAttribute("modalEmail", obj.getEmail());
				request.setAttribute("modalCelular", obj.getCelular());
				request.setAttribute("modalTelefone", obj.getTelefone());
				request.setAttribute("modalCep", obj.getCep());
				request.setAttribute("modalEndereco", obj.getEndereco());
				request.setAttribute("modalNumero", obj.getNumero());
				request.setAttribute("modalBairro", obj.getBairro());
				request.setAttribute("modalCidade", obj.getCidade());
				request.setAttribute("modalComplemento", obj.getComplemento());
				request.setAttribute("modalEstado", obj.getUf());
				
			} catch (Exception e) {
				e.printStackTrace();
			}

			RequestDispatcher rd = request.getRequestDispatcher("TesteJson.jsp");
			rd.forward(request, response);
			
			
			
		}
		System.out.println();
		System.out.println("Nome:" + obj.getNome());
		System.out.println("Cnpj:" + obj.getCnpj());
		System.out.println("Email:" + obj.getEmail());
		System.out.println("Endereço:" + obj.getEndereco());
		System.out.println("Numero:" + obj.getNumero());

	}

	private void CadastrarFornecedor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String fornecNome = request.getParameter("nome");
		if (fornecNome != null && !fornecNome.trim().isEmpty()) {
			try {

				obj.setNome(fornecNome);
				obj.setCnpj(request.getParameter("cnpj"));
				obj.setEmail(request.getParameter("email"));
				obj.setCelular(request.getParameter("celular"));
				obj.setTelefone(request.getParameter("telefone"));
				obj.setCep(request.getParameter("cep"));
				obj.setEndereco(request.getParameter("endereco"));
				obj.setNumero(Integer.parseInt(request.getParameter("numero")));
				obj.setBairro(request.getParameter("bairro"));
				obj.setCidade(request.getParameter("cidade"));
				obj.setComplemento(request.getParameter("complemento"));
				obj.setUf(request.getParameter("estado"));
				dao.cadastrarFornecedores(obj);

				response.sendRedirect("Fornecedores.jsp");

			} catch (Exception e) {

			}
			RequestDispatcher rd = request.getRequestDispatcher("Teste.Json.jsp");
			rd.forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
