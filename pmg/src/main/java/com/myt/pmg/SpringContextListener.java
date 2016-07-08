package com.myt.pmg;

import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;

@Component
public class SpringContextListener implements ApplicationListener<ContextRefreshedEvent> {
	
	
	
	@Override
    public void onApplicationEvent(ContextRefreshedEvent arg0) {
		
        System.out.println("ApplicationListener");
        
    }
}