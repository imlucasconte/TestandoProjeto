package Command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class RealizarLogout implements Command {

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("logado"));
		session.removeAttribute("logado");
		session.invalidate();
		System.out.println("Entrei no logout");
		response.sendRedirect("index.jsp");
		
	}

}
