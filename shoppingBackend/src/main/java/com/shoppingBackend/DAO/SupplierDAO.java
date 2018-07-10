package com.shoppingBackend.DAO;

import java.util.List;

import com.shoppingBackend.model.Supplier;;

public interface SupplierDAO {
	public boolean addSupplier(Supplier supplier);
	public boolean updateSupplier(Supplier supplier);
	public boolean DeleteSupplier(int supplierid);
	public Supplier getSingleSupplier(int supplierid);
	public List<Supplier> getAllSupplier();
}
