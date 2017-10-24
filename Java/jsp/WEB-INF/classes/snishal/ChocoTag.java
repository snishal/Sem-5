package snishal;

import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
import java.io.*;

public class ChocoTag extends SimpleTagSupport {


	private String texture;
	private ChocoBean chocoBean = new ChocoBean();

	public void setTexture(String texture){

		this.texture = texture;
		chocoBean.setTexture(texture);

	}  
	
	public void doTag() throws JspException, IOException {
		JspWriter out = getJspContext().getOut();
		out.print("Texture : " + texture);
		out.println("\tNames : " + chocoBean.getTexture());	
	}
 
}
