/**
 * 
 */
package com.xworkz.landrecords.repo;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xworkz.landrecords.dto.AdminDto;
import com.xworkz.landrecords.dto.UserRegister;

 @Repository
public class UserRepoImpl implements UserRepo {
    @Autowired
	private EntityManagerFactory emf;
	@Override
	public boolean save(UserRegister user) {
	EntityManager em=	 emf.createEntityManager();
	em.getTransaction().begin();
	em.persist(user);

	try {
		em.getTransaction().commit();
		return true;
		
	}catch(Exception e) {
		em.getTransaction().rollback();
		e.printStackTrace();
	}
	finally {
		em.close();
	}
		
		return false;
	}
	@Override
	public UserRegister ifExists(String mail, String password) {
		EntityManager em=	 emf.createEntityManager();
	Query query=	em.createNamedQuery("ifExists").setParameter("em", mail).setParameter("ps",  password);
	UserRegister ref=(UserRegister) query.getSingleResult();
		return ref;
	}
	@Override
	public UserRegister passwordExists(String password) {
		EntityManager em=	 emf.createEntityManager();
		Query query=	em.createNamedQuery("pwdExists").setParameter("ps",  password);
		UserRegister ref1=(UserRegister) query.getSingleResult();
			return ref1;
		 
	}
	@Override
	public UserRegister mailExists(String mail) {
		EntityManager em=	 emf.createEntityManager();
		Query query=	em.createNamedQuery("mailExists").setParameter("em", mail);
		UserRegister ref1=(UserRegister) query.getSingleResult();
			return ref1;
	}
	@Override
	public boolean updateotp1(String otp, String mail) {
		EntityManager em=	 emf.createEntityManager();
		em.getTransaction().begin();
		Query query=	em.createNamedQuery("updatingotp").setParameter("ot",  otp).setParameter("em", mail);
		query.executeUpdate();
		em.getTransaction().commit();
		return true;
	}
	@Override
	public  UserRegister findByOtp1(String otp) {
		EntityManager em=	 emf.createEntityManager();
		Query query=	em.createNamedQuery("findotp").setParameter("ot",  otp);
		UserRegister reg=(UserRegister) query.getSingleResult();
		return reg;
	}
	@Override
	public boolean updatePassword(String password, String cPassword, String mail) {
		EntityManager em=	 emf.createEntityManager();
		em.getTransaction().begin();
		Query query=	em.createNamedQuery("updatingpwd").setParameter("pd",   password).setParameter("cpd", cPassword).setParameter("em",  mail);
		query.executeUpdate();
		em.getTransaction().commit();
		return true;
	}
	

}
