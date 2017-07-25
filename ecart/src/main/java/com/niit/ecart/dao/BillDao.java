package com.niit.ecart.dao;

import com.niit.ecart.model.Bill;

public interface BillDao {

	public void addBill(Bill bill);

	public Bill returnbill(int id);

}
