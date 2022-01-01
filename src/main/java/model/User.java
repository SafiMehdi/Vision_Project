package model;

public class User {
	
	private int ID;
	private String first_name;
	private String last_name;
	private String password;
	private String email;
	private String saltvalue;
	
	public String role = "user";
	
	public User(String first_name, String last_name, String password, String email, String saltvalue) {
		this.first_name = first_name;
		this.last_name = last_name;
		this.password = password;
		this.email = email;
		this.saltvalue = saltvalue;
	}
	public User() {
		
	}
	

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	
	public String getsaltvalue() {
		return saltvalue;
	}

	public void setsaltvalue(String saltvalue) {
		this.saltvalue = saltvalue;
	}
	
	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getID() {
		return ID;
	}
	
	public void setID(int ID) {
		this.ID = ID;
	}
	@Override
	public String toString() {
		return "User [ID=" + ID + ", first_name=" + first_name + ", last_name=" + last_name + ", password=" + password
				+ ", email=" + email + ", saltvalue=" + saltvalue + "]";
	}
	
	public void affiche() {
		System.out.println(this.toString());
	}
	
	
	
}

