package snishal;

import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
import java.io.*;

public class SubStringTag extends SimpleTagSupport {


	private String input;
	private int start;
	private int end;

	public void setInput(String input){

		this.input = input;

	}

	public void setStart(String start){

		this.start = Integer.parseInt(start);

	}

	public void setEnd(String end){

		this.end = Integer.parseInt(end);

	}
	
	public void doTag() throws JspException, IOException {
		JspWriter out = getJspContext().getOut();
		out.println(this.input.substring(start, end));
	}
 
}
