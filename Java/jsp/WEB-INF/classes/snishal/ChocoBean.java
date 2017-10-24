package snishal;

import java.io.*;

public class ChocoBean implements Serializable{


	private String texture;
	
	public ChocoBean(){

		this.texture = null;

	}

	public void setTexture(String texture){

		this.texture = texture;

	}

	public String getTexture(){

		if(this.texture.equals("Chewy")){
			return "FiveStar, BarOne";
		}else{
			return "Munch, Kitkat";
		}

	}
 
}
