package com.xworkz.landrecords.service;

import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.persistence.NoResultException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.xworkz.landrecords.dto.AdminDto;
import com.xworkz.landrecords.repo.LoginRepo;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private LoginRepo repo;

	@Override
	public boolean save(AdminDto dto, Model model) {
		if(dto != null) {
			if(dto.getName().length()>3) {
				if(dto.getEmail().length()>13) {
					if(dto.getOTP().length()>3) {
						System.out.println("saved");
						return  repo.save(dto);
					}
					System.out.println("OTP invalid");
					model.addAttribute("OTPError", "OTP invalid");
					return false;
				}
				System.out.println("email invalid");
				model.addAttribute("emailError", "Email invalid");
				return false;
			}
			System.out.println("name invalid");
			model.addAttribute("nameError", "name invalid");
			return false;
			
		}
		return false;
	}

	@Override
	public AdminDto findByMail(String mail, Model model) {

		try {
			if(mail!=null) {
			AdminDto list=	repo.findByMail(mail);
			return list;
			}
		}
		catch(NoResultException e) {
			e.printStackTrace();
			model.addAttribute("find", " Email not found ");
			System.out.println("dto null");
			return null;
		}
		
		return null;
	}

	@Override
	public String randomotp(int length) {
		 String numbers = "0123456789";  
		    Random rndm_method = new Random();  
		    char[] otp = new char[length];  
		    for (int i = 0; i < length; i++) {  
		        otp[i] = numbers.charAt(rndm_method.nextInt(numbers.length()));  
		    }  
		    return new String(otp);  
	}

	@Override
	public boolean checkotp(String mail, Model model) {
		AdminDto check=  findByMail(mail, model);
		if(check!=null ) {
		String otp=	randomotp(4);
		System.out.println(otp);
		
		boolean up=repo.updateotp(otp, mail);
		System.out.println(up);
		  boolean sendMail = sendMail(otp, mail);
		System.out.println(sendMail);
		 model.addAttribute("otpsent",  "otp sended");
		}
		System.out.println("no dto for otp");  
		return false;
	}

	@Override
	public AdminDto findByOtp(String otp, Model model) {
		try { 
			if(otp!=null) {
			AdminDto list=	repo.findByOtp(otp);
			if(list.getOTP().equals(otp)) {
				return list;
			}else {
				model.addAttribute("findotp2", "otp not matched  "); 
				return null;
			}
			
			}
		}
		catch(NoResultException e) {
			 
			System.out.println("dto null");
			model.addAttribute("findotp1", "wrong otp "); 
			return null;
		}
		model.addAttribute("findotp", "notfound "); 
		return null;
	}

	@Override
	public boolean sendMail(String otp, String email) {
		String senderEmail = "mahalakshmi.xworkz@outlook.com";
        String senderPassword = "Maha$2211";

        // Recipient's email address
        String recipientEmail = email;

        // Generate a random OTP (You should implement your OTP generation logic here)
        

        // Outlook SMTP server settings
        String host = "smtp.office365.com";
        int port = 587;

        // Create properties for the SMTP session
        Properties properties = new Properties();
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", port);
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");

        // Create a session with the SMTP server
        Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
            protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
                return new javax.mail.PasswordAuthentication(senderEmail, senderPassword);
            }
        });

        try {
            // Create a message
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(senderEmail));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(recipientEmail));
            message.setSubject("Your OTP Code");
            message.setText("Your OTP code is: " + otp +"this  otp is valid for 10 minutes only");

            // Send the message
            Transport.send(message);
            System.out.println("OTP sent successfully to " + recipientEmail);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
		return true;
	}

}
