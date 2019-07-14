package com.qzc.entity;

public class PgModel extends Pg{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1252962432397232827L;
	private int pinum;
	public PgModel() {
		super();
	}
	
	public PgModel(int pinum) {
		super();
		this.pinum = pinum;
	}

	public int getPinum() {
		return pinum;
	}
	public void setPinum(int pinum) {
		this.pinum = pinum;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
