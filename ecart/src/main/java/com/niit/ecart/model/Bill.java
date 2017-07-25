package com.niit.ecart.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import com.niit.ecart.model.Cart;
@Entity
public class Bill implements Serializable {
	
	@Id
	@GeneratedValue
	private int billId;
	
	private String billAddress;
	private Date billDate;
	private double total;
	
	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public Date getBillDate() {
		return billDate;
	}

	public void setBillDate(Date billDate) {
		this.billDate = billDate;
	}
	

	@ManyToOne
	@JoinColumn(name="userId")
	User user;



	public int getBillId() {
		return billId;
	}

	public void setBillId(int billId) {
		this.billId = billId;
	}

	public String getBillAddress() {
		return billAddress;
	}

	public void setBillAddress(String billAddress) {
		this.billAddress = billAddress;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}


	

	
}
