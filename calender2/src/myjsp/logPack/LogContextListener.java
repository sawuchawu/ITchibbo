package myjsp.logPack;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.commons.logging.*;

public class LogContextListener implements ServletContextListener{
	
	static Log log;
	
	public void contextDestroyed(ServletContextEvent arg0){
		log.debug("LogContextListener 종료");
	}
	
	public void contextInitialized(ServletContextEvent arg0){
		log = LogFactory.getLog(this.getClass());
		log.debug("LogContextListener 시작");
		
	}

}
