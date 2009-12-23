package org.census.dao;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 * A data access object (DAO) providing persistence and search support for
 * PersonPO entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see org.census.dao.PersonPO
 * @author MyEclipse Persistence Tools
 */

public class PersonDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(PersonDAO.class);
	// property constants
	public static final String NAME = "name";
	public static final String IDENTITY = "identity";
	public static final String IS_MAJOR = "isMajor";
	public static final String MAJOR_RELATION = "majorRelation";
	public static final String JOB = "job";
	public static final String HOUSE_CODE = "houseCode";
	public static final String GROUP = "group";
	public static final String VILLAGE = "village";

	public Integer save(PersonPO transientInstance) {
		Integer id = 0;
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		try {
			id = (Integer)session.save(transientInstance);
			tx.commit();
		} catch (RuntimeException re) {
			re.printStackTrace();
			session.close();
		} finally {
			session.close();
		}
		
		return id;
	}
	
	public void update(PersonPO transientInstance) {
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		try {
			session.merge(transientInstance);
			tx.commit();
		} catch (RuntimeException re) {
			re.printStackTrace();
			session.close();
		} finally {
			session.close();
		}
	}

	public void delete(PersonPO persistentInstance) {
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		try {
			session.delete(persistentInstance);
			tx.commit();
		} catch (RuntimeException re) {
			re.printStackTrace();
			session.close();
		} finally {
			session.close();
		}
	}

	public PersonPO getPersonById(java.lang.Integer id) {
		Session session = getSession();
		try {
			PersonPO instance = (PersonPO) session.get("org.census.dao.PersonPO", id);
			return instance;
		} catch (RuntimeException re) {
			re.printStackTrace();
			session.close();
			return null;
		}
	}

	public List getPersonsByProperty(String propertyName, Object value) {
		try {
			String queryString = "from PersonPO as model where model.isMajor=1 and model."+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			
			if("houseCode".equals(propertyName)){
				if(value!=null&&!"".equals(String.valueOf(value))){
					queryObject.setParameter(0, new Integer(String.valueOf(value)));
				}else{
					queryObject.setParameter(0, null);
				}
				
			}else{
				queryObject.setParameter(0, value);
			}
			
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByName(Object name) {
		return getPersonsByProperty(NAME, name);
	}

	public List findByIdentity(Object identity) {
		return getPersonsByProperty(IDENTITY, identity);
	}

	public List findByIsMajor(Object isMajor) {
		return getPersonsByProperty(IS_MAJOR, isMajor);
	}

	public List findByMajorRelation(Object majorRelation) {
		return getPersonsByProperty(MAJOR_RELATION, majorRelation);
	}

	public List findByJob(Object job) {
		return getPersonsByProperty(JOB, job);
	}

	public List findByHouseCode(Object houseCode) {
		return getPersonsByProperty(HOUSE_CODE, houseCode);
	}

	public List findByGroup(Object group) {
		return getPersonsByProperty(GROUP, group);
	}

	public List findByVillage(Object village) {
		return getPersonsByProperty(VILLAGE, village);
	}

	public List findAll() {
		try {
			String queryString = "from PersonPO";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			re.printStackTrace();
			return null;
		}
	}
	
	public static PersonDAO getInstance(){
		return new PersonDAO();
	}

	public List getPersons(Map query, int start, int pageSize) {
		List list = null;
		
		try {
			String queryString = "from PersonPO as model where 1=1 ";
			
			StringBuffer sb = new StringBuffer();
			if(query!=null){
				Set keySet = query.keySet();
				if(keySet!=null){
					Iterator keySetIt = keySet.iterator();
					while(keySetIt.hasNext()){
						String key = (String)keySetIt.next();
						String value = (String)query.get(key);
						sb.append(" and model.").append(key).append("=").append(value).append(" ");
					}
				}
			}
			
			queryString = queryString + sb.toString() + " order by model.houseCode desc";
			
			Query queryObject = getSession().createQuery(queryString);
			
			if(pageSize>-1){
				queryObject.setFirstResult(start);
				queryObject.setMaxResults(pageSize);
			}
			
			list = queryObject.list();
		} catch (RuntimeException re) {
			re.printStackTrace();
		}
		
		return list;
	}

	public int getPersonsCount(Map query) {
		int count = 0;
		
		List list = this.getPersons(query, 0, -1);
		
		if(list!=null&&list.size()>0){
			count = list.size();
		}
		
		return count;
	}
}