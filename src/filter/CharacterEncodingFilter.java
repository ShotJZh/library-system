package filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.struts2.dispatcher.FilterDispatcher;

public class CharacterEncodingFilter extends FilterDispatcher {
	 @Override  
	    public void destroy() {  
	    }  
	  
	    @Override  
	    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException,ServletException   {  
	    request.setCharacterEncoding("utf-8");  
	    chain.doFilter(request, response);  
	    }  
	  
	    @Override  
	    public void init(FilterConfig arg0) throws ServletException {  
	    }  
}
