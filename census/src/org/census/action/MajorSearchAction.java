package org.census.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.census.manager.PersonManager;

public class MajorSearchAction extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String houseCode = request.getParameter("houseCode");
		
		List list = new PersonManager().getPersonByProperty("houseCode",houseCode);
		
		request.setAttribute("list", list);
		
		return mapping.findForward("success");
	}
}
