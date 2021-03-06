package ar.edu.unlam.tallerweb1.repositorios;

import java.util.List;

import org.hibernate.SessionFactory;

import ar.edu.unlam.tallerweb1.modelo.Comida;
import ar.edu.unlam.tallerweb1.modelo.Restriccion;

public interface ComidaDao {

	Long crearComida(Comida comida);

	Comida ObtenerPorId(Long id);

	void borrar(Comida comida);

	List<Comida> obtenerComidasSegunCalorias(Double calorias);

	List<Comida> obtenerComidas();
	
	List<Comida> obtenerComidasPorRestriccion(Restriccion restriccion);

	List<Comida> obtenerComidasMasVistas();

	List<Comida> obtenerComidasMenosVistas();

	void updateComida(Comida comida);

	void setSesion(SessionFactory sessionFactory);
}
