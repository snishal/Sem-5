package snishal;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.Date;

/**
 * @author Lenovo
 *
 */
public class User implements Serializable {

	private String name;
	private String dob;
	private String email;
	private Integer luckyNumber;
	private String[] favFood;

	public User() {
		
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getLuckyNumber() {
		return luckyNumber;
	}

	public void setLuckyNumber(int luckyNumber) {
		this.luckyNumber = luckyNumber;
	}

	public String[] getFavFood() {
		return favFood;
	}

	public void setFavFood(String[] favFood) {
		this.favFood = favFood;
	}
	
	public boolean isValidName() {
		
		if(this.name!=null && this.name.charAt(0) >= 65 && this.name.charAt(0) <= 91) {
			return true;
		}
		
		return false;
		
	}
	
	public boolean isValidDob() {
		
		if(this.dob != null && !this.dob.equals("2017-10-06")) {
			
			return true;
			
		}
		
		return false;
		
	}

	public boolean isValidEmail() {
		
		if(this.email != null && this.email.contains("@gmail.com")) {
			
			return true;
			
		}
		
		return false;
		
	}
	
	public boolean isValidLuckyNumber() {
	
		if(this.luckyNumber != null && this.luckyNumber > 0 && this.luckyNumber <= 100) {
			return true;
		}
		
		return false;
		
	}
	
	public boolean isValidFavFood() {
		
		if(this.favFood != null) {
			return true;
		}
		
		else {
			return false;
		}
		
	}
	
	public boolean isValid() {
		
		if(this.isValidName() && this.isValidDob() && this.isValidEmail() && this.isValidLuckyNumber() && this.isValidFavFood()) {
			return true;
		}
		
		return false;
		
	}
	
}
