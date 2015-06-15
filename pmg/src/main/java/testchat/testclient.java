package testchat;

import java.io.IOException;

import org.jivesoftware.smack.SmackException;
import org.jivesoftware.smack.XMPPException;

import com.myt.pmg.chat.XmppManager;

public class testclient {
	public void chat() {
		XmppManager xm = new XmppManager("localhost", 5222);
		try {
			xm.init();
			xm.performLogin("a", "a");
			xm.sendMessage("khkhkhcvxv", "b@arpit-rig");
		} catch (XMPPException e) {
			e.printStackTrace();
		} catch (SmackException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static void main(String args[]) {
		testclient c = new testclient();
		c.chat();
	}
}
