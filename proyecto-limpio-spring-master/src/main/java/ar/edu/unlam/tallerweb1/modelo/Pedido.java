package ar.edu.unlam.tallerweb1.modelo;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Pedido {
 
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate fecha;
	private Estado estado;
	private Double precio;
	//Agregada la relacion 1:N entre Usuario y Pedido
	@ManyToOne
	private Usuario usuario;
	//esta anotation es opcional pero sirve para manejar mejor la tabla n:n
	@JoinTable(
			//nombre de la tabla n:n en la bdd
			name = "pedidos_comidas",
			//nombre de la fk de comida
			joinColumns = @JoinColumn(name = "fk_pedido"),
			//nombre de la fk de pedido
			inverseJoinColumns = @JoinColumn(name = "fk_comida")
			)
	@ManyToMany(cascade = CascadeType.ALL)
	private List<Comida> comidas;
	@OneToOne
	private Posicion ubicacionDestino;
	@OneToOne
	private CuponDescuento cuponDescuento;
	
	public LocalDate getFecha() {
		return fecha;
	}
	public void setFecha(LocalDate fecha) {
		this.fecha = fecha;
	}
	public CuponDescuento getCuponDescuento() {
		return cuponDescuento;
	}
	public void setCuponDescuento(CuponDescuento cuponDescuento) {
		this.cuponDescuento = cuponDescuento;
	}
	
	public Posicion getUbicacionDestino() {
		return ubicacionDestino;
	}
	public void setUbicacionDestino(Posicion ubicacionDestino) {
		this.ubicacionDestino = ubicacionDestino;
	}
	
	public Long getUbicacionId() {
		return this.ubicacionDestino.getId();
	}
	
	public Double getPrecio() { 
		return precio;
	}
	public void setPrecio(Double precio) {
		this.precio = precio;
	}
	public List<Comida> getComidas() {
		return comidas;
	}
	public void setComidas(List<Comida> comidas) {
		this.comidas = comidas;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Estado getEstado() {
		return estado;
	}
	public void setEstado(Estado estado) {
		this.estado = estado;
	}
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	
}
