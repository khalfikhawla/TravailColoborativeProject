package SendEmail;

import java.util.*;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendE_mail {
	
	public void SendE_mail(){}
	
	public void sendMsgMethod(String host , String from , String login , String pwd , String to , String TextEmail ){
		
		System.out.println("Host: "+host+"\nFrom: "+from+"\n To:"+to);
		
		Transport t= null;
		
		 Properties properties = System.getProperties();
		 
		 properties.setProperty("mail.smtp.host", host);
		 Session session = Session.getDefaultInstance(properties ,null);
		 MimeMessage message = new MimeMessage(session);
		 
		
		try {
		message.setFrom(new InternetAddress(from));
		message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		message.setSubject("Hello it's Hamza");
		message.setText(TextEmail);
		
		System.out.println("Tentative de connexion...");
		t = session.getTransport("smtps");
		
        t.connect(host, login, pwd);

			
		System.out.println("Envoi de mail...");
		t.sendMessage(message , message.getAllRecipients());
		
		System.out.println("Mail envoyé avec succés");
	}
		catch(Exception ex) {
			ex.printStackTrace();}
	}
	public void usage() {
		System.out.println("usage : java sendMsg  <smtp> <from> <login> <pwd> <to>");
	}
}
