package org.census.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.census.manager.PersonManager;

public class PersonListAction extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		int count = 0;
		int pageSize = 20;
	    request.setAttribute("pageSize",new Integer(pageSize));
	    int maxItems = 9;
	    request.setAttribute("maxItems",new Integer(maxItems));

	    int pageNumber = 1;
		String strPageNumber = "0";
		int number = 0;
		
		if(request.getParameter("pager.offset")!=null&&!request.getParameter("pager.offset").equals("")){
			number = Integer.parseInt(request.getParameter("pager.offset"))/pageSize + 1;
		}else{
			number = 1;
		}
		strPageNumber = String.valueOf(number);

		if (strPageNumber != null&&!"".equals(strPageNumber))
			pageNumber = Integer.parseInt(strPageNumber);
		
		int start = (pageNumber-1)*pageSize;
		
		Map query = new HashMap();
		
		List result = new PersonManager().getPersons(query, start, pageSize);
		count = new PersonManager().getPersonsCount(query);
	    
		if(result==null){
			result = new ArrayList();
		}
	    int size = result.size();
	    int totalPage = count % pageSize == 0 ? count / pageSize : (count / pageSize + 1);
	    
	    request.setAttribute("result", result);
	    request.setAttribute("totalPage",new Integer(totalPage));
	    request.setAttribute("count",new Integer(count));
	    request.setAttribute("size", new Integer(size));
	    
		return mapping.findForward("success");
	}
}
