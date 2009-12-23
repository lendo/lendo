package org.census.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class MenuBuilderAction extends Action {

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		PrivilegeBo pb1 = new PrivilegeBo();
		pb1.setParentId("-1");
		pb1.setPrivilegeId("1");
		pb1.setName("基础户籍信息管理");
		pb1.setUrl("http://www.china.cn");
		pb1.setTarget("_blank");
		PrivilegeBo pb2 = new PrivilegeBo();
		pb2.setParentId("1");
		pb2.setPrivilegeId("2");
		pb2.setName("户籍信息列表");
		pb2.setUrl(request.getContextPath()+"/listPerson.do");
		pb2.setTarget("mainFrame");
		PrivilegeBo pb3 = new PrivilegeBo();
		pb3.setParentId("1");
		pb3.setPrivilegeId("3");
		pb3.setName("添加户籍信息");
		pb3.setUrl(request.getContextPath()+"/editPerson.do");
		pb3.setTarget("mainFrame");
//		PrivilegeBo pb7 = new PrivilegeBo();
//		pb7.setParentId("1");
//		pb7.setPrivilegeId("7");
//		pb7.setName("锦江区");
//		pb7.setUrl("http://www.qihoo.com");
//		pb7.setTarget("mainFrame");
		
		
		PrivilegeBo pb4 = new PrivilegeBo();
		pb4.setParentId("-1");
		pb4.setPrivilegeId("4");
		pb4.setName("权限管理");
//		PrivilegeBo pb5 = new PrivilegeBo();
//		pb5.setParentId("4");
//		pb5.setPrivilegeId("5");
//		pb5.setName("罗湖区");
//		pb5.setUrl("http://www.sina.com");
//		pb5.setTarget("mainFrame");
//		PrivilegeBo pb6 = new PrivilegeBo();
//		pb6.setParentId("4");
//		pb6.setPrivilegeId("6");
//		pb6.setName("南山区");
//		pb6.setUrl("http://www.tianya.cn");
//		pb6.setTarget("mainFrame");
//		
//		PrivilegeBo pb8 = new PrivilegeBo();
//		pb8.setParentId("-1");
//		pb8.setName("重庆市");
//		pb8.setPrivilegeId("8");
//		pb8.setUrl("http://www.chongqing.gov.cn");
//		pb8.setTarget("mainFrame");
//		
//		PrivilegeBo pb9 = new PrivilegeBo();
//		pb9.setParentId("8");
//		pb9.setName("江北区");
//		pb9.setPrivilegeId("9");
		
		List list = new ArrayList();
		list.add(pb1);
		list.add(pb2);
		list.add(pb3);
		list.add(pb4);
//		list.add(pb5);
//		list.add(pb6);
//		list.add(pb7);
//		list.add(pb8);
//		list.add(pb9);
		
		request.setAttribute("list", list);
		
        return mapping.findForward("success");
	}

}
