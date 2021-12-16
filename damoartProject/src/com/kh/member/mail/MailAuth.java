package com.kh.member.mail;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class MailAuth extends Authenticator{
	
    PasswordAuthentication pa;
    
    public MailAuth() {
        String mail_id = "damoartad12@gmail.com";
        String mail_pw = "beoqawyldjpuwhgc";
        
        pa = new PasswordAuthentication(mail_id, mail_pw);
    }
    
    public PasswordAuthentication getPasswordAuthentication() {
        return pa;
    }
	
}
