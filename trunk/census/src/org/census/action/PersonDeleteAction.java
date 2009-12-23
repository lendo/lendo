package org.census.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.census.manager.PersonManager;

public class PersonDeleteAction extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		
		if(id!=null&&!"".equals(id.trim())){
			new PersonManager().deletePerson(new Integer(id));
		}
		
		return mapping.findForward("success");
	}
}
