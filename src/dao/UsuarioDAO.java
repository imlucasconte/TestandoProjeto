package DAO;

import Negocio.Usuario;
import Connection.ConnectionFactory;
import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class UsuarioDAO {
	public boolean validarLogin(Usuario usuario) {
		String sqlSelect = "SELECT usuario, senha from usuario where usuario = ? and senha = ?";
		
		try {
			Connection conn = ConnectionFactory.realizarConexao();
			PreparedStatement stm = conn.prepareStatement(sqlSelect);
			stm.setString(1, usuario.getUsuario());
			stm.setString(2, usuario.getSenha());
			try (ResultSet rs = stm.executeQuery();) {
				if (rs.next()) {
					return true;
				} else {
					return false;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		
		
		return false;
	}
}
