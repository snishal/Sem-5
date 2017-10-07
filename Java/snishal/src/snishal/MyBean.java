package snishal;

import java.io.Serializable;
import java.time.LocalTime;

public class MyBean implements Serializable {

	public MyBean() {}
	
	public String getQuote() {
		
		LocalTime time = LocalTime.now();
		String quote = "";
		
		if(time.isBefore(LocalTime.NOON)) {
			quote = "Good Morning";
		}else if( time.isBefore(LocalTime.parse("17:00:00"))){
			quote = "Good Afternoon";
		}else {
			quote = "Good Evening";
		}
		
		return quote;
	}
	
}
