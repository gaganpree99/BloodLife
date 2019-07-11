package com.bloodlife.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class FAQ {

	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Long id;
//	
//	private String email;
//	
//	private String ticketID;
//	private boolean status;
//
//	public Long getId() {
//		return id;
//	}
//
//	public void setId(Long id) {
//		this.id = id;
//	}
//
//	public String getEmail() {
//		return email;
//	}
//
//	public void setEmail(String email) {
//		this.email = email;
//	}
//
//	public String getTicketID() {
//		return ticketID;
//	}
//
//	public void setTicketID(String ticketID) {
//		this.ticketID = ticketID;
//	}
//
//	public boolean isStatus() {
//		return status;
//	}
//
//	public void setStatus(boolean status) {
//		this.status = status;
//	}
//	
//	
//	
	
	
	
	private String tokenId;

    private String question;

    private String email;

	public String getTokenId() {
		return tokenId;
	}

	public void setTokenId(String string) {
		this.tokenId = string;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
    
}
