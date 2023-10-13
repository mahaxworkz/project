package com.xworkz.landrecords.repo;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

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
	
	

}
