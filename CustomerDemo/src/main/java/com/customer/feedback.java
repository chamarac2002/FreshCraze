package com.customer;

public class feedback {
	private int fno;
	private String name;
	private String email;
	private String subject;
	private String message;
	private String question;
	
	public feedback(int fno, String name, String email, String subject, String message, String question) {
		this.fno = fno;
		this.name = name;
		this.email = email;
		this.subject = subject;
		this.message = message;
		this.question = question;
	}

	public int getFno() {
		return fno;
	}
	
	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getSubject() {
		return subject;
	}

	public String getMessage() {
		return message;
	}
	
	public String getQuestion() {
		return question;
	}

}

