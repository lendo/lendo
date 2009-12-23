package org.census.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.census.manager.PersonManager;
import org.census.manager.PersonVO;

public class PersonSaveAction extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		PersonFormBean personForm = (PersonFormBean)form;
		
		String id = personForm.getId();
		
		PersonVO vo = new PersonVO();
		vo.setGroup(new Integer(personForm.getGroup()));
		vo.setHouseCode(new Integer(personForm.getHouseCode()));
		vo.setIdentity(personForm.getIdentity());
		vo.setIsMajor(new Integer(personForm.getIsMajor()));
		vo.setJob(personForm.getJob());
		
		if(new Integer(0).equals(vo.getIsMajor())){
			vo.setMajorId(new Integer(personForm.getMajorId()));
			vo.setMajorRelation(new Integer(personForm.getMajorRelation()));
		}
		
		vo.setName(personForm.getName());
		vo.setVillage(new Integer(personForm.getVillage()));
		
		if(id!=null&&!"".equals(id.trim())){
			vo.setId(new Integer(id));
			new PersonManager().updatePerson(vo);
		}else{
			new PersonManager().savePerson(vo);
		}
		
		return mapping.findForward("success");
	}
}
