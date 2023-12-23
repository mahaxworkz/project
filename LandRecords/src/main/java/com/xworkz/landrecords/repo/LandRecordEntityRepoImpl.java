package com.xworkz.landrecords.repo;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

 
import com.xworkz.landrecords.dto.LandEntity;

@Repository
public class LandRecordEntityRepoImpl implements LandRecordEntityRepo {

	@Autowired
	private EntityManagerFactory enmf;
	@Override
	public boolean saveentity(LandEntity dto) {
		
		EntityManager em=	enmf.createEntityManager();
		
		em.getTransaction().begin();
		em.persist(dto);
		em.getTransaction().commit();
		
		return true;
	}
	@Override
	public List<LandEntity> readAll() {
		EntityManager em=	enmf.createEntityManager();
	Query query=	em.createNamedQuery("readAll");
List<LandEntity> ent=	query.getResultList();
		
		return ent;
	}
	@Override
	public List<LandEntity> readBYVillage(String taluk, String hobli, String village) {
		EntityManager em=	enmf.createEntityManager();
		Query query=	em.createNamedQuery("readbyvillage").setParameter("tl", taluk).setParameter("hb", hobli).setParameter("vl",  village);
	List<LandEntity> ent=	query.getResultList();
			
		return ent;
	}
	@Override
	public boolean EditBySurveyno(String ownerName, long phoneNumber, String adharNumber, int hissaNumber,
			int surveyNumber) {
		EntityManager em=	enmf.createEntityManager();
	    em.getTransaction().begin();
		Query query=	em.createNamedQuery("Edit").setParameter("on", ownerName ).setParameter("pn", phoneNumber).setParameter("an",   adharNumber)
				.setParameter( "hn",  hissaNumber).setParameter("sn",  surveyNumber);
		query.executeUpdate();
		
	em.getTransaction().commit();
		return  true;
	}
	@Override
	public  boolean deleteRecords(int hissaNumber, int surveyNumber,int status) {
		 
		EntityManager em=	enmf.createEntityManager();
	    em.getTransaction().begin();
		Query query=	em.createNamedQuery("delete") .setParameter( "hn",  hissaNumber).setParameter("sn",  surveyNumber).setParameter( "st", status);
		query.executeUpdate();
		 
		
	em.getTransaction().commit();
		return  true  ;
		 
	}
	@Override
	public LandEntity ifExists(int hissaNumber, int surveyNumber) {
		EntityManager em=	enmf.createEntityManager();
		Query query=	em.createNamedQuery("ifExist").setParameter("hn", hissaNumber).setParameter("sn", surveyNumber);
		
		 LandEntity dto=	  (LandEntity) query.getSingleResult();
			 
			 
		return dto;
	}
	@Override
	public List<LandEntity> FindByHissaNo(int hissanumber) {
		EntityManager em=	enmf.createEntityManager();
		 TypedQuery<LandEntity> query=	em.createNamedQuery("findhissa",  LandEntity.class);
		 query.setParameter("hs", hissanumber);
	List<LandEntity> ent=	query.getResultList();
			
			return ent;
	}
	@Override
	public List<LandEntity> FindBySurveyNo(int surveynumber) {
		EntityManager em=	enmf.createEntityManager();
		 TypedQuery<LandEntity> query=	em.createNamedQuery("findsurvey",  LandEntity.class);
		 query.setParameter("sn",surveynumber  );
	List<LandEntity> ent=	query.getResultList();
			
			return ent;
	}
	@Override
	public List<LandEntity> FindBySurveyNoAndVillage(int surveynumber, String village) {
		EntityManager em=	enmf.createEntityManager();
		 TypedQuery<LandEntity> query=	em.createNamedQuery("findsurveyAndVillage",  LandEntity.class);
		 query.setParameter("sn",surveynumber  ).setParameter("vl", village);
	List<LandEntity> ent=	query.getResultList();
			
			return ent;
	}
	
	

}
