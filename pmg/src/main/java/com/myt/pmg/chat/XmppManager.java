package com.myt.pmg.chat;

import java.io.IOException;
import java.util.Collection;

import javax.security.sasl.SaslException;

import org.jivesoftware.smack.AccountManager;
import org.jivesoftware.smack.Chat;
import org.jivesoftware.smack.ChatManager;
import org.jivesoftware.smack.ConnectionConfiguration;
import org.jivesoftware.smack.ConnectionConfiguration.SecurityMode;
import org.jivesoftware.smack.MessageListener;
import org.jivesoftware.smack.Roster;
import org.jivesoftware.smack.RosterEntry;
import org.jivesoftware.smack.SASLAuthentication;
import org.jivesoftware.smack.SmackConfiguration;
import org.jivesoftware.smack.SmackException;
import org.jivesoftware.smack.SmackException.NoResponseException;
import org.jivesoftware.smack.SmackException.NotConnectedException;
import org.jivesoftware.smack.XMPPException;
import org.jivesoftware.smack.XMPPException.XMPPErrorException;
import org.jivesoftware.smack.packet.Message;
import org.jivesoftware.smack.packet.Presence;
import org.jivesoftware.smack.packet.Presence.Type;
import org.jivesoftware.smack.tcp.XMPPTCPConnection;

import com.myt.pmg.model.User;

public class XmppManager {

	public static final int packetTimeOut = 500;

	private String server;
	private int port;

	private ConnectionConfiguration config;
	private XMPPTCPConnection connection;
	private ChatManager chatManager;
	private MessageListener messageListener;

	public XmppManager(String server, int port) {
		this.server = server;
		this.port = port;
	}

	public void init() throws XMPPException, SmackException, IOException {

		System.out.println("Attemting to connect to server at: " + server
				+ " at port: " + port);
		SmackConfiguration.setDefaultPacketReplyTimeout(packetTimeOut);
		config = new ConnectionConfiguration(server, port);
		config.setDebuggerEnabled(true);
		config.setSecurityMode(SecurityMode.disabled);
		SASLAuthentication.supportSASLMechanism("PLAIN");
		connection = new XMPPTCPConnection(config);
		connection.connect();

		System.out.println("Connected: " + connection.isConnected());

		chatManager = ChatManager.getInstanceFor(connection);
		System.out.println(connection.getConnectionCounter());
		messageListener = new MyMessageListener();
	}

	public boolean createUser(User user) {
		if (!connection.isAuthenticated()) {
			AccountManager acManager = AccountManager.getInstance(connection);
			try {
				acManager.createAccount(user.getEmail(), user.getPassword());
			} catch (NoResponseException e) {
				e.printStackTrace();
			} catch (XMPPErrorException e) {
				System.out.println("asdasdasd");
				e.printStackTrace();
			} catch (NotConnectedException e) {
				e.printStackTrace();
			}
			return true;
		} else {
			return true;
		}
	}

	public void performLogin(String username, String password)
			throws SaslException, XMPPException, SmackException, IOException {

		if (connection != null && connection.isConnected()) {
			connection.login(username, password);
		}
	}

	public void setStatus(boolean isAvailable) throws NotConnectedException {

		Presence.Type type = isAvailable ? Type.available : Type.unavailable;
		Presence presence = new Presence(type);
		presence.setStatus("Online");
		connection.sendPacket(presence);
	}

	public void destroy() throws NotConnectedException {
		if (connection != null && connection.isConnected()) {
			connection.disconnect();
		}
	}

	public void sendMessage(String message, String buddyJID) {
		System.out.println(String.format(
				"Sending Message '%1$s' to user '%2$s'", message, buddyJID));
		Chat chat = chatManager.createChat(buddyJID, messageListener);
		try {
			chat.sendMessage(message);
		} catch (NotConnectedException e) {
			e.printStackTrace();
		} catch (XMPPException e) {
			e.printStackTrace();
		}
	}

	public void createEntry(String user, String name) throws Exception {
		System.out.println(String.format(
				"Creating entry for buddy '%1$s' with name %2$s", user, name));
		Roster roster = connection.getRoster();
		roster.createEntry(user, name, null);
	}

	public void printRoster() throws Exception {
		Roster roster = connection.getRoster();
		Collection<RosterEntry> entries = roster.getEntries();
		for (RosterEntry entry : entries) {
			System.out.println(String.format("Buddy:%1$s - Status:%2$s",
					entry.getUser(), entry.getName(), entry.getStatus()));
		}
	}

	class MyMessageListener implements MessageListener {

		public void processMessage(Chat chat, Message message) {
			String from = message.getFrom();
			String body = message.getBody();
			System.out.println(String.format(
					"Received message '%1$s' from %2$s", body, from));
		}

	}
}
