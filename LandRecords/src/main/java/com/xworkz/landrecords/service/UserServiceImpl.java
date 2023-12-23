package com.xworkz.landrecords.service;

import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.util.Base64;
import java.util.Properties;
import java.util.Random;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
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

 
import com.xworkz.landrecords.dto.UserRegister;
import com.xworkz.landrecords.repo.UserRepo;
 

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepo repo;
	
	 
	
	@Override
	
	public boolean save(UserRegister user,Model model) throws Exception   {
		if( mailExists(user.getEmail())== null) {
			 if(pwdExists(user.getPassword())==null) {
				 
			 
				if(validateEntity(user, model)) {
				String epwd=	EncryptPWD(user.getPassword(), "ThisIsASecretKey");
				user.setPassword(epwd);
				user.setcPassword(epwd);
					return repo.save(user);
				}
				
			 }
			 model.addAttribute("isaccpwd", "This password Not available,try other  password   ");
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
					 UserRegister reg=	repo.mailExists(email);
					 if(reg!=null) {
						String orgpwd= DecryptPWD(reg.getPassword(), "ThisIsASecretKey");
						System.out.println(orgpwd);
						if(orgpwd.equals(password)) {
							 return reg;
						}
						 model.addAttribute("notmatch", "password Not matched"); 
						 return null; 
						
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
	public UserRegister checkotp1(String mail, Model model) {
		UserRegister check=	 findByMail(mail, model);
		if(check!=null ) {
		String otp=	randomotp(4);
		System.out.println(otp);
		
		try {
	     
		String enOTP =	EncryptPWD( otp, "EncryptingKey");
		boolean up=repo.updateotp1(enOTP , mail);
		System.out.println(up);
		UserRegister sendMail = sendMail1(otp, mail);
		System.out.println(sendMail);
		 model.addAttribute("otpsent",  "otp sended");
		 return check;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		  
		}
		System.out.println("no dto for otp");
		return  null;
	}
	@Override
	public UserRegister otpAndMailverification(String mail,String otp , Model model) throws Exception {
		 
		 
		UserRegister register= findByMail(mail, model);
	String decrypt=	DecryptPWD( register.getOtp(),"EncryptingKey"  );
	if(decrypt.equals( otp)) {
		return register;
	}
		  
		return null;
	}
	@Override
	public UserRegister findByOtp1(String otp, Model models) {
		try { 
			if(otp!=null) {
				UserRegister list=	repo.findByOtp1(otp);
				
			if(list.getOtp().equals(otp)) {
				return list;
			}else {
				models.addAttribute("findotp2", "otp not matched"); 
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
	public UserRegister sendMail1(String otp, String email) {
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
		return  null;
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
			 try {
				 if(password.equals(cPassword)) {
				
				String UP=	EncryptPWD(password,  "EncryptingKey" );
				 
				
					
					return repo.updatePassword(UP, UP, mail);
				} 
				
			 }
			 catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			 model.addAttribute("mismatch", "the password and confirm password must be same   ");  
			 
			 return false;
		 }
		 model.addAttribute("validpwd", "please give the password minimum length 8 to maximum 15  ");  
		return false;
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
	@Override
	public UserRegister mailExists(String mail) {
		try {
			 UserRegister reg= repo.mailExists(mail);
			 
			 if(reg!=null) {
				 return reg;
			 }
			  
		 }catch(NoResultException e) {
			 System.out.println("exception occured");
		 }
		return null;
	}
	@Override
	public UserRegister pwdExists(String password) {
		try {
			 UserRegister reg= repo.passwordExists(password);
			 
			 if(reg!=null) {
				 return reg;
			 }
			  
		 }catch(NoResultException e) {
			 System.out.println("exception occured");
		 }
		return null;
	}
	 
	
}
