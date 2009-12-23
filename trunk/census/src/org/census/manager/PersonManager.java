package org.census.manager;

import java.util.List;
import java.util.Map;

import org.census.dao.PersonDAO;
import org.census.dao.PersonPO;
import org.census.system.MajorRelation;
import org.census.translator.PersonTranslator;

public class PersonManager {
    public void savePerson(PersonVO vo){
    	Integer id = PersonDAO.getInstance().save(new PersonTranslator().translatToPO(vo));
    	
    	if(new Integer(1).equals(vo.getIsMajor())){
			vo.setId(id);
			vo.setMajorId(id);
			vo.setMajorRelation(MajorRelation.MR_01);
			PersonDAO.getInstance().update(new PersonTranslator().translatToPO(vo));
		}
    }
    
    public void updatePerson(PersonVO vo){
    	PersonDAO.getInstance().update(new PersonTranslator().translatToPO(vo));
    }
    
    public void deletePerson(Integer id){
    	PersonPO po = PersonDAO.getInstance().getPersonById(id);
    	PersonDAO.getInstance().delete(po);
    }
    
    public PersonVO getPersonById(Integer id){
    	return new PersonTranslator().translateToVO(PersonDAO.getInstance().getPersonById(id));
    }

	public List getPersons(Map query, int start, int pageSize) {
		return new PersonTranslator().translatePOList(PersonDAO.getInstance().getPersons(query, start, pageSize));
	}

	public int getPersonsCount(Map query) {
		return PersonDAO.getInstance().getPersonsCount(query);
	}
	
	
	public List getPersonByProperty(String propertyName, String value){
		return new PersonTranslator().translatePOList(PersonDAO.getInstance().getPersonsByProperty(propertyName, value));
	}
}
