package com.xworkz.landrecords.service;

import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.util.Base64;
import java.util.Properties;
import java.util.Random;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
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
		try{
			if(check!=null ) {
		
		String otp=	randomotp(4);
		System.out.println(otp);
		
		  
		 String encryptOtp=   EncryptPWD(otp,"EncryptAdmin");
		
		boolean up=repo.updateotp(encryptOtp, mail);
		System.out.println(up);
		  boolean sendMail = sendMail(otp, mail);
		System.out.println(sendMail);
		 model.addAttribute("otpsent",  "otp sended");
		 return sendMail;
		}
		}catch(Exception e) {
			e.printStackTrace();
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
            message.setText("Your OTP code is: " + otp +". this  otp is valid for 10 minutes only");

            // Send the message
            Transport.send(message);
            System.out.println("OTP sent successfully to " + recipientEmail);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
		return true;
	}

	@Override
	public String EncryptPWD(String password, String Secretkey)  throws Exception{
		SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");
        KeySpec spec = new PBEKeySpec(Secretkey.toCharArray(), Secretkey.getBytes(), 65536, 256);
        SecretKey secret = new SecretKeySpec(factory.generateSecret(spec).getEncoded(), "AES");

        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(Cipher.ENCRYPT_MODE, secret);
        byte[] iv = cipher.getParameters().getParameterSpec(IvParameterSpec.class).getIV();

        byte[] encryptedPassword = cipher.doFinal(password.getBytes("UTF-8"));
        byte[] combined = new byte[iv.length + encryptedPassword.length];
        System.arraycopy(iv, 0, combined, 0, iv.length);
        System.arraycopy(encryptedPassword, 0, combined, iv.length, encryptedPassword.length);

        return Base64.getEncoder().encodeToString(combined);
		 
	}

	@Override
	public String DecryptPWD(String encryptPwd,String Secretkey) {
		
		
		 byte[] combined = Base64.getDecoder().decode(encryptPwd);

       byte[] iv = new byte[16];
       byte[] encrypted = new byte[combined.length - 16];
       System.arraycopy(combined, 0, iv, 0, 16);
       System.arraycopy(combined, 16, encrypted, 0, encrypted.length);

       SecretKeyFactory factory;
		try {
			factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");
		
       KeySpec spec = new PBEKeySpec(Secretkey.toCharArray(), Secretkey.getBytes(), 65536, 256);
       SecretKey secret;
		 
			secret = new SecretKeySpec(factory.generateSecret(spec).getEncoded(), "AES");
			Cipher cipher;
			 
				cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
			 
	         
				cipher.init(Cipher.DECRYPT_MODE, secret, new IvParameterSpec(iv));
			  
	         
				return new String(cipher.doFinal(encrypted), "UTF-8");
			    

		} catch (UnsupportedEncodingException|IllegalBlockSizeException|BadPaddingException |InvalidKeySpecException|NoSuchPaddingException|
				InvalidKeyException|InvalidAlgorithmParameterException|NoSuchAlgorithmException e ) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		 
	}  
     return null;  
      
	}

}
