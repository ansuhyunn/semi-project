package com.kh.member.mail;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.kh.member.model.vo.Member;

public class MailSend {
	
	public void MailSend() {
        Properties prop = System.getProperties();
        prop.put("mail.smtp.starttls.enable", "true");
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.port", "587");
        
        Authenticator auth = new MailAuth();
        
        Session session = Session.getDefaultInstance(prop, auth);
        
        MimeMessage msg = new MimeMessage(session);
        
        Random random = new Random();
        int checkNum = random.nextInt(888888) + 111111;
    
        try {
            msg.setSentDate(new Date());
            
            msg.setFrom(new InternetAddress("damoartad12@gmail.com", "DAMOART"));
            InternetAddress to = new InternetAddress("atti5701@gmail.com");         
            msg.setRecipient(Message.RecipientType.TO, to);            
            msg.setSubject("DAMOART 회원가입 인증 메일입니다.", "UTF-8");            
            msg.setText("인증번호는 [" + checkNum + "]입니다. 회원가입 페이지에 인증번호를 입력해주세요.", "UTF-8");            

            Transport.send(msg);
            
        } catch(AddressException ae) {            
            System.out.println("AddressException : " + ae.getMessage());           
        } catch(MessagingException me) {            
            System.out.println("MessagingException : " + me.getMessage());
        } catch(UnsupportedEncodingException e) {
            System.out.println("UnsupportedEncodingException : " + e.getMessage());			
        }
                
    }

}
