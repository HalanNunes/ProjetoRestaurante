package br.com.catolica.impl;

import java.util.List;

public interface CrudImpl<T> {
	
	public T searchById(int id);
	
	public void save(T obj);
	
	public void removeById(int id);
	
	public List<T> searchAll();
	
}
