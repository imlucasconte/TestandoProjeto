package Command;

import java.io.File;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Negocio.Usuario;
import Service.UsuarioService;
import Utils.CryptoAES;

public class RealizarLogin implements Command {

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		CryptoAES crypto = new CryptoAES();
		
		File chave = new File("/Users/lucasduarte/git/Java-SaoJudas/src/Utils","minhaChave");
		try {
			crypto.geraCifra(password.getBytes("ISO-8859-1"), chave);
		} catch (InvalidKeyException | NoSuchAlgorithmException | NoSuchPaddingException | IllegalBlockSizeException
				| BadPaddingException | InvalidAlgorithmParameterException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		Usuario usuario = null;
		try {
			usuario = new Usuario(username, crypto.getTextoCifrado());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		UsuarioService service = new UsuarioService();
		boolean validar = service.validarLogin(usuario);
		System.out.println(validar);
		if(validar) {
			HttpSession session = request.getSession();
			session.setAttribute("logado", usuario);
			System.out.println("Logou: "+usuario);
			response.sendRedirect("logado.jsp");
		}else {
			response.sendRedirect("index.jsp");
			System.out.println("Nao Logou" + usuario);
		}
		
	}

}
