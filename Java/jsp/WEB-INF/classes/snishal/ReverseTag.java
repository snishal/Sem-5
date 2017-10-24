package snishal;

import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.*;
import java.lang.*;

public class ReverseTag extends SimpleTagSupport {


	private StringBuilder input;
	
	public void setInput(String input){

		this.input = new StringBuilder();
		this.input.append(input);

	}
	
	public void doTag() throws JspException, IOException {
		JspWriter out = getJspContext().getOut();					out.println(this.input.reverse());
	}
 
}
