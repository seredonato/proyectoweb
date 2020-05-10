package ar.edu.unlam.tallerweb1.servicios;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.modelo.Usuario;
import ar.edu.unlam.tallerweb1.repositorios.UsuarioDao;

@Service
@Transactional
public class ServicioUsuarioImpl implements ServicioUsuario {
	@Inject
	private UsuarioDao usuarioDao;
	@Override
	public Long registrarUsuario(Usuario usuario) {
		return usuarioDao.registrarUsuario(usuario);
	}
}