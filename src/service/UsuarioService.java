package Service;
import Negocio.Usuario;
import DAO.UsuarioDAO;

public class UsuarioService {
	UsuarioDAO dao;
	
	public UsuarioService() {
		dao = new UsuarioDAO();
	}
	
	public boolean validarLogin(Usuario usuario) {
		return dao.validarLogin(usuario);
	}
	
}
