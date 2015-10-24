package com.myt.pmg.chat;

import org.jivesoftware.smack.tcp.XMPPTCPConnection;


public class Chat {
	private XmppManager xmppManager;
	private String server = "localhost";
	private int port = 5222;
	private XMPPTCPConnection connection;

	
//	public void startChat(String buddyJID) {
//		xmppManager = new XmppManager(server, port);
//		try {
//			xmppManager.init();
//			xmppManager.performLogin(user, password);
//		} catch (XMPPException e) {
//			e.printStackTrace();
//		} catch (SmackException e) {
//			e.printStackTrace();
//		} catch (IOException e) {
//			e.printStackTrace();
//		}}
//		
}
