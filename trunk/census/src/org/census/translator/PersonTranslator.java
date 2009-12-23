package org.census.translator;

import java.util.ArrayList;
import java.util.List;

import org.census.dao.PersonDAO;
import org.census.dao.PersonPO;
import org.census.manager.PersonVO;

public class PersonTranslator {
    public PersonVO translateToVO(PersonPO po){
    	PersonVO vo = null;
    	
    	if(po!=null){
    		vo = new PersonVO();
    		vo.setGroup(po.getGroup());
    		vo.setHouseCode(po.getHouseCode());
    		vo.setId(po.getId());
    		vo.setIdentity(po.getIdentity());
    		vo.setIsMajor(po.getIsMajor());
    		vo.setJob(po.getJob());
    		vo.setMajorId(po.getMajorId());
    		if(vo.getMajorId()!=null){
    			PersonPO poo = PersonDAO.getInstance().getPersonById(vo.getMajorId());
    			if(poo==null){
    				System.out.println("MajorId is:---------------" + po.getMajorId());
    				vo.setMajorName("A01-户主被删，数据恢复中...");
    			}else{
    				vo.setMajorName(poo.getName());
    			}
    		}
    		vo.setMajorRelation(po.getMajorRelation());
    		vo.setName(po.getName());
    		vo.setVillage(po.getVillage());
    	}
    	
    	return vo;
    }
    
    public PersonPO translatToPO(PersonVO vo){
    	PersonPO po = null;
    	
    	if(vo!=null){
    		po = new PersonPO();
    		po.setGroup(vo.getGroup());
    		po.setHouseCode(vo.getHouseCode());
    		po.setId(vo.getId());
    		po.setIdentity(vo.getIdentity());
    		po.setIsMajor(vo.getIsMajor());
    		po.setJob(vo.getJob());
    		po.setMajorId(vo.getMajorId());
    		po.setMajorRelation(vo.getMajorRelation());
    		po.setName(vo.getName());
    		po.setVillage(vo.getVillage());
    	}
    	
    	return po;
    }
    
    public List translatePOList(List poList){
    	List list = null;
    	
    	if(poList!=null&&poList.size()>0){
    		list = new ArrayList();
    		PersonVO vo = null;
    		for(int i=0;i<poList.size();i++){
    			vo = this.translateToVO((PersonPO)poList.get(i));
    			list.add(vo);
    		}
    	}
    	
    	return list;
    }
}
