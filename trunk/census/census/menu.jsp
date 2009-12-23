<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%>
<%
String cpath = request.getContextPath();
%>
<HTML>
	<HEAD>
		<TITLE></TITLE>
		<script type="text/javascript" src="<%=cpath%>/js/jquery.js"></script>
		<STYLE type="text/css">
		    BODY{
	            BACKGROUND: #C0EBD8; 
	            FONT: 9pt 宋体; 
	            MARGIN: 0px;
	            SCROLLBAR-FACE-COLOR: #0d93d9; 
	            SCROLLBAR-HIGHLIGHT-COLOR:#EDF4FD; 
	            SCROLLBAR-SHADOW-COLOR: #EDF4FD; 
	            SCROLLBAR-3DLIGHT-COLOR: #0d93d9; 
	            SCROLLBAR-ARROW-COLOR: #EDF4FD; 
	            SCROLLBAR-TRACK-COLOR: #EDF4FD; 
	            SCROLLBAR-DARKSHADOW-COLOR: #0d93d9;
	        }
            TABLE{
	            BORDER-BOTTOM: 0px; 
	            BORDER-LEFT: 0px; 
	            BORDER-RIGHT: 0px; 
	            BORDER-TOP: 0px
            }
            TD{
	            FONT: 12px 宋体
            }
            IMG{
	            BORDER-BOTTOM: 0px; 
	            BORDER-LEFT: 0px; 
	            BORDER-RIGHT: 0px; 
	            BORDER-TOP: 0px; 
	            VERTICAL-ALIGN: bottom;
	        }
            A{
	            COLOR: #000000; 
	            FONT: 12px 宋体; 
	            TEXT-DECORATION: none;
            }
            A:hover{
	            COLOR: #428eff; 
	            TEXT-DECORATION: underline;
            }
            .sec_menu{
	            BACKGROUND: #C0EBD8;
	            BORDER-BOTTOM: white 1px solid; 
	            BORDER-LEFT: white 1px solid; 
	            BORDER-RIGHT: white 1px solid; 
	            OVERFLOW: hidden;
            }
            .menu_title{

            }
            .menu_title SPAN{
	            COLOR: #465F45; 
	            LEFT: 9px; 
	            POSITION: relative; 
	            TOP: 2px ; 
	            cursor: hand
	        }
	        .menu_title2{
            
            }
            .menu_title2 SPAN {
	            COLOR: #465F45; 
	            LEFT: 8px; 
	            POSITION: relative; 
	            TOP: 2px ; 
	            cursor: hand;
            }
            .ff{  
                color: 064ca4
            }
        </STYLE>
		<SCRIPT language=javascript1.2>
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
}
}

function showall(){
    <logic:iterate id="my" name="list" indexId="i">
    <logic:equal name="my" property="parentId" value="-1">
        eval("submenu" + <bean:write name="i" /> + ".style.display=\"none\";");
    </logic:equal>
    </logic:iterate>
}

</SCRIPT>
		<META content="MSHTML 5.00.3315.2870" name=GENERATOR>
	</HEAD>
	<BODY leftMargin=0 topMargin=0 marginwidth="0" marginheight="0"
		onload="showall()">
		<TABLE align=left border=0 cellPadding=0 cellSpacing=0 width="100%">
			<TBODY>
				<TR>
					<TD vAlign=top>
						<TABLE align=center cellPadding=0 cellSpacing=0 width=158>
							<TBODY>
								<TR>
									<TD height="14">
										<IMG style="border:1px solid white;" height=38 src="image/pic_wddj.gif" width=158>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
						<logic:iterate id="my" name="list" indexId="i">
							<logic:equal name="my" property="parentId" value="-1">
								<TABLE align=center cellPadding=0 cellSpacing=0 width=158>
									<TBODY>
										<TR>
											<TD background=image/back.bmp class=menu_title height=23
												id=menuTitle1 onclick=showsubmenu(<bean:write name="i" />)
										        onmouseout="this.className='menu_title';"
												onmouseover="this.className='menu_title2';"
												style="cursor:pointer;">
												&nbsp;&nbsp;&nbsp;<bean:write name='my' property='name' />
											</TD>
										</TR>
										<TR id=submenu<bean:write name="i" />>
											<TD>
												<DIV class=sec_menu style="WIDTH: 158px">
													<TABLE align=center cellPadding=0 cellSpacing=0 width=139>
														<TBODY>
															<logic:iterate id="myy" name="list">
																<logic:equal name="myy" property="parentId"
																	value="${my.privilegeId}">
																	<TR>
																		<TD height=19>
																			<a href="${myy.url }" target="${myy.target}"><bean:write
																					name='myy' property='name' /> </a>
																		</TD>
																	</TR>
																</logic:equal>
															</logic:iterate>
														</TBODY>
													</TABLE>
												</DIV>
											</TD>
										</TR>
									</TBODY>
								</TABLE>
							</logic:equal>
						</logic:iterate>
						<TABLE align=center cellPadding=0 cellSpacing=0 width=158
							height="23">
							<TBODY>
								<TR>
									<a href="#" onClick="parent.close()">
									<TD background=image/back.bmp class=menu_title
										style="cursor:pointer;" height=23
										onmouseout="this.className='menu_title';"
										onmouseover="this.className='menu_title2';">
										&nbsp;&nbsp;&nbsp;注销
									</TD>
									</a>
								</TR>
							</TBODY>
						</TABLE>
				</TR>
			</TBODY>
		</TABLE>
	</BODY>
</HTML>
