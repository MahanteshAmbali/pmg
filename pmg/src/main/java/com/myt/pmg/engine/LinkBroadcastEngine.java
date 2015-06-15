package com.myt.pmg.engine;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

@Service
public class LinkBroadcastEngine {

	static final Logger logger = Logger.getLogger(LinkBroadcastEngine.class);

	final ScheduledExecutorService scheduler = Executors
			.newScheduledThreadPool(1);

	private CustomScheduler customScheduler;
	
	public void setCustomScheduler(CustomScheduler customScheduler) {
		this.customScheduler = customScheduler;
	}

	public void autoPostLinks() {
		scheduler.scheduleAtFixedRate(customScheduler.getNewInstance(), 1, 1,
				TimeUnit.MINUTES);
	}

	public void startEngine() throws Exception {
		logger.info("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
		autoPostLinks();
	}

}
