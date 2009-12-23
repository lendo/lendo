package org.census.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.census.manager.PersonManager;
import org.census.manager.PersonVO;

public class PersonEditAction extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		PersonFormBean personForm = (PersonFormBean)form;
		
		String id = request.getParameter("id");
		
		if(id!=null&&!"".equals(id.trim())){
			PersonVO vo = new PersonManager().getPersonById(new Integer(id));
			if(vo.getGroup()!=null){
				personForm.setGroup(String.valueOf(vo.getGroup()));
			}
			
			if(vo.getHouseCode()!=null){
				personForm.setHouseCode(String.valueOf(vo.getHouseCode()));
			}
			
			if(vo.getId()!=null){
				personForm.setId(String.valueOf(vo.getId()));
			}
			
			if(vo.getIdentity()!=null){
				personForm.setIdentity(String.valueOf(vo.getIdentity()));
			}
			
			if(vo.getIsMajor()!=null){
				personForm.setIsMajor(String.valueOf(vo.getIsMajor()));
			}
			
			if(vo.getJob()!=null){
				personForm.setJob(String.valueOf(vo.getJob()));
			}
			
			if(vo.getMajorId()!=null){
				personForm.setMajorId(String.valueOf(vo.getMajorId()));
				personForm.setMajorName(vo.getMajorName());
			}
			
			if(vo.getMajorRelation()!=null){
				personForm.setMajorRelation(String.valueOf(vo.getMajorRelation()));
			}
			
			if(vo.getName()!=null){
				personForm.setName(vo.getName());
			}
			
			if(vo.getVillage()!=null){
				personForm.setVillage(String.valueOf(vo.getVillage()));
			}
		}
		
		return mapping.findForward("success");
	}
}
