package com.xworkz.landrecords.repo;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xworkz.landrecords.dto.AdminDto;

@Repository
public class LoginRepoImpl implements LoginRepo{

	@Autowired
	private EntityManagerFactory emf;
	@Override
	public boolean save(AdminDto dto) {
		EntityManager em=	 emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(dto);
		em.getTransaction().commit();

		return true;
	}

	@Override
	public AdminDto findByMail(String name) {
		EntityManager em=	 emf.createEntityManager();
		Query query=	em.createNamedQuery("findMail").setParameter("em", name);
		
		 AdminDto dto=	(AdminDto) query.getSingleResult();
			 
			return dto;
	}

	@Override
	public boolean updateotp(String otp, String mail) {
		EntityManager em=	 emf.createEntityManager();
		em.getTransaction().begin();
	Query query=	 em.createNamedQuery("updateotp").setParameter("ot", otp).setParameter("em", mail);
	query.executeUpdate();
		em.getTransaction().commit();
		return true;
	}

	@Override
	public AdminDto findByOtp(String otp) {
		EntityManager em=	 emf.createEntityManager();
		Query query=	em.createNamedQuery("findOTP").setParameter("ot",otp);	
		 AdminDto dto=	(AdminDto) query.getSingleResult();
			 
			return dto;
	}
	
	
	

}
