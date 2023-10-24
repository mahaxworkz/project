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
import com.xworkz.landrecords.dto.UserRegister;
import com.xworkz.landrecords.repo.UserRepo;
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepo repo;
	@Override
	public boolean save(UserRegister user,Model model) {
		if( repo.mailExists(user.getEmail()) ==null) {
			if(repo.passwordExists(user.getcPassword())== null) {
				if(validateEntity(user, model)) {
					return repo.save(user);
				}
				 
			}
			model.addAttribute("pwdCheck", "password Already Exist,give other password");
			return false;
				
		}
		 model.addAttribute("isacc", "Email Already Exist,Use other email ");
		return false;
	}
	@Override
	public boolean validateEntity(UserRegister ent, Model model) {
		boolean valid = true; 
	    System.out.println("method validation");
	    if ( ent.getName()!=null) {
	        if (ent.getName().length()<2 || ent.getName().isEmpty()) {
	        	 model.addAttribute("isnamevalid", "please check the name ");
	            valid = false;  
	        }
	        
	        if ( ent.getEmail().length()<15 ) {
	        	 model.addAttribute("isemailvalid", "please check email id  ");
	            valid = false;  
	        }
	        
	        if (ent.getMobileNumber()==null || ent.getMobileNumber()<999999999) {
	        	model.addAttribute("ismobilevalid", "please check the mobile number");
	            valid = false;  
	        }
	        if (ent.getAadharNumber()==null || ent.getAadharNumber().length()!=12) {
	            model.addAttribute("IsAadharValid", "please check the  Aadhar Number");
	            valid = false;  
	        }
	        
	        if (ent.getPassword().length()>16|| ent.getPassword().length()<7) {
	            model.addAttribute("IspassValid", "please give the password minimum length 8 to maximum 15 ");
	            valid = false;  
	        }
	        if (!ent.getcPassword().equals(ent.getPassword() )  ) {
	            model.addAttribute("IscpassValid", "the password and confirm password must be same  ");
	            valid = false;  
	        }
	         
	         
	        
	        
	    } else {
	        System.out.println("null value");
	        valid = false;  
	    }

	    if (!valid) {
	        System.out.println("false scenario: " + model.asMap());
	    }
	    
	    return valid; 
		 
	}
	@Override
	public UserRegister ifexist(String email, String password, Model model) {
		
		 try {
			 UserRegister reg=	repo.ifExists(email, password);
			 if(reg!=null) {
				 return reg;
			 }
			  
		 }catch(NoResultException e) {
			 System.out.println("exception occured");
		 }
		return null;
	}
	@Override
	public UserRegister signin(String email, String password, Model model) {
		 try {
			 if(email != null) {
				 if(password != null) {
					 UserRegister reg=	repo.ifExists(email, password);
					 if(reg!=null) {
						 return reg;
					 }
					 model.addAttribute("account", "No Account founded "); 
					 return null;
				 }
				 model.addAttribute("emailE", " invalid Email,please check the email "); 
				 return null;
			 }
			 model.addAttribute("pwd", "invalid password ");
			 return null;
			
			  
		 }catch(NoResultException e) {
			 System.out.println("exception occured");
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
	public boolean checkotp1(String mail, Model model) {
		UserRegister check=	 findByMail(mail, model);
		if(check!=null ) {
		String otp=	randomotp(4);
		System.out.println(otp);
		
		boolean up=repo.updateotp1(otp, mail);
		System.out.println(up);
		  boolean sendMail = sendMail1(otp, mail);
		System.out.println(sendMail);
		 model.addAttribute("otpsent",  "otp sended");
		}
		System.out.println("no dto for otp");
		return false;
	}
	@Override
	public UserRegister findByOtp1(String otp, Model models) {
		try { 
			if(otp!=null) {
				UserRegister list=	repo.findByOtp1(otp);
			if(list.getOtp().equals(otp)) {
				return list;
			}else {
				models.addAttribute("findotp2", "otp not matched  "); 
				return null;
			}
			
			}
		}
		catch(NoResultException e) {
			 
			System.out.println("dto null");
			models.addAttribute("findotp1", "wrong otp "); 
			return null;
		}
		models.addAttribute("findotp", "notfound ");  
		
		return null;
	}
	@Override
	public boolean sendMail1(String otp, String email) {
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
            message.setText("Your OTP code is: " + otp +" this  otp is valid for 10 minutes only");

            // Send the message
            Transport.send(message);
            System.out.println("OTP sent successfully to " + recipientEmail);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
		return true;
	}
	@Override
	public UserRegister findByMail(String email, Model model) {
		try {
			 UserRegister reg=	repo.mailExists(email);
			 if(reg!=null) {
				 return reg;
			 }
			  
		 }catch(NoResultException e) {
			 System.out.println("no mail presented");
		 }
		return null;
	}
	@Override
	public boolean updatePassword(String password, String cPassword, String mail,Model model) {
		 if(password != null && password.length()>7&& password.length()<16) {
			 if(password.equals(cPassword)) {
				return repo.updatePassword(password, cPassword, mail);
			 }
			 model.addAttribute("mismatch", "the password and confirm password must be same   ");  
			 
			 return false;
		 }
		 model.addAttribute("validpwd", "please give the password minimum length 8 to maximum 15  ");  
		return false;
	}

}
