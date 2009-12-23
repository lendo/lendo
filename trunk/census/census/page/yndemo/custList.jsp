<%@ page contentType="text/html;charset=GBK"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" />
<title>云南建行电子银行部客户指标类报表系统</title>
<%String path = request.getContextPath(); %>
    <meta http-equiv="Content-Type" content="text/html" lang="GB2312" />

    <link rel="stylesheet" type="text/css" href="/yndemo/css/public.css" />
	<link rel="stylesheet" type="text/css" href="/yndemo/css/ext.css" />
	<link rel="stylesheet" type="text/css" href="/yndemo/css/ThemeOffice/theme.css" />	
	<style media="print">
		.button{display:none;}
		.hiddenprint{display:none;}
		.tree{width:1px;display:none;}
	</style>
	    
	<script type="text/javascript" src="/yndemo/js/JSCookMenu.js"></script>
    <script type="text/javascript" src="/yndemo/js/effect.js"></script>
	<script type="text/javascript" src="/yndemo/js/ThemeOffice/theme.js"></script>
	<script language="javascript">
	    function print(){WebBrowser1.ExecWB(7,1);}
    </script>
	
	<object ID="WebBrowser1" WIDTH="0" HEIGHT="0" CLASSID="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2"></object>
</head>
<body>
<table height="100%" width="100%">
	<tbody>
		<tr>
			<td height="48" valign="top">
			<table border="0" width="100%" class="hiddenprint">
				<tbody>
					<tr>
						<td align="left">
						    <img src="/yndemo/images/logo_yn.gif" height="60" width="200" />
						</td>
						<td align="right">
						<table border="0" cellspacing="2">
							<tbody>
								<tr>
									<td class="table_rlbt">用户名: 测试用户 | 云南省分行电子银行部 | 机构编号:
									XXXXXXXXX | 登录时间: 2007-04-02 12:41:26 | <a id="header:_id7"
										href="/yndemo/index.jsp"><span class="black">退出系统</span></a></td>
								</tr>
							</tbody>
						</table>
						</td>
					</tr>
					<tr>
						<td class="menuleft"><font color="white">指标类报表系统</font></td>
						<td class="menuright">
						    <script type="text/javascript">
                                var menu =
                                [
                                  [null, '客户分布', null, 'linkDummyForm', null,
                                    ['<img src="/yndemo/images/help.gif"/>', '活动客户分布', '<%=path%>/page/yndemo/activeCust.jsp', '_self', null],
                                    ['<img src="/yndemo/images/help.gif"/>', '新增客户分布', '<%=path%>/page/yndemo/newCust.jsp', '_self', null],
                                    ['<img src="/yndemo/images/help.gif"/>', '新增活动客户分布', '<%=path%>/page/yndemo/newActiveCust.jsp', '_self', null]
                                  ],
                                  [null, '交易统计', null, '_parent', null,
                                    ['<img src="/yndemo/images/help.gif"/>', '电子渠道交易统计', '<%=path%>/page/yndemo/transStatis.jsp', '_self', null]
                                  ],
                                  [null, '数据查询', null, '_self', null,
                                    ['<img src="/yndemo/images/help.gif"/>', '客户基本信息查询', '<%=path%>/page/yndemo/custList.jsp', '_self', null],
                                    ['<img src="/yndemo/images/help.gif"/>', '客户交易明细查询', '<%=path%>/page/yndemo/transList.jsp', '_self', null]
                                  ],
                                  [null, '系统管理', null, '_self', null,
	                                ['<img src="/yndemo/images/help.gif"/>', '密码管理', null, '_self', null],
	                                ['<img src="/yndemo/images/help.gif"/>', '机构管理', null, '_self', null],
	                                ['<img src="/yndemo/images/help.gif"/>', '部门管理', null, '_self', null],
	                                ['<img src="/yndemo/images/help.gif"/>', '角色管理', null, '_self', null],
	                                ['<img src="/yndemo/images/help.gif"/>', '用户管理', null, '_self', null],
    	                            ['<img src="/yndemo/images/help.gif"/>', '指标库定义', null, '_self', null],
	                                ['<img src="/yndemo/images/help.gif"/>', '指标分组维护', null, '_self', null],
	                                ['<img src="/yndemo/images/help.gif"/>', '员工信息维护', null, '_self', null],
	                                ['<img src="/yndemo/images/help.gif"/>', '个性化页面定制', null, '_self', null],
	                                ['<img src="/yndemo/images/help.gif"/>', '报表任务维护', null, '_self', null],
	                                ['<img src="/yndemo/images/help.gif"/>', '机构关联维护', null, '_self', null],
	                                ['<img src="/yndemo/images/help.gif"/>', 'PCA部门对照关系维护', null, '_self', null],
	                                ['<img src="/yndemo/images/help.gif"/>', '产品维护', null, '_self', null],
	                                ['<img src="/yndemo/images/help.gif"/>', '数据项维护', null, '_self', null]
                                  ]
                                ];
                        </script>
						<div style="width:10" id="header__id13_menu"></div>
						<script type="text/javascript">
	                        cmDraw ('header__id13_menu', menu, 'hbr', cmThemeOffice, 'ThemeOffice');
                        </script></td>
					</tr>
				</tbody>
			</table>
			</td>
		</tr>
		<tr>
			<td height="99%" valign="top"><script language="javascript"
				src="/yndemo/js/excelExportOnPage.js">
	</script> <input type="hidden" id="body:_id15" name="body:_id15" value="" />
			<form id="body:myform" name="body:myform"
				onsubmit="return submitTest();" method="post"
				action="/yndemo/myMonitor.jsf"
				enctype="application/x-www-form-urlencoded">
			<table align="center" width="100%">
				<tbody>
					<tr>
						<td>客户分布 -&gt; 客户列表</td>
					</tr>
					<tr>
						<td><br>
						</td>
					</tr>
				</tbody>
			</table>
			<table align="center" width="100%">
				<tbody>
					<tr>
						<td>
						<table align="center" width="80%">
							<tbody>
								<tr>
									<td align="center"><b><span id="body:myform:title">客户列表</span></b></td>
								</tr>
							</tbody>
						</table>
						</td>
					</tr>
					<tr>
						<td><br>
						</td>
					</tr>
					<tr>
						<td>
						<table align="center" width="80%">
							<tbody>
								<tr>
									<td align="left">您所在的用户组是：省行电银部，当前数据日期是：2007-3-17。 </td>
								</tr>
							</tbody>
						</table>
						</td>
					</tr>
					<tr>
						<td>
						<table borderColor="silver" class="datatable" cellspacing="0"
							cellpadding="0" border="1" id="body:myform:data" align="center"
							width="80%">
							<thead>
								<tr>
									<th height="25">客户姓名</th>
									<th height="25">平台客户号</th>
									<th height="25">DCC客户编号</th>
									<th height="25">工作单位名称</th>
									<th height="25">联系电话</th>
									<th height="25">首次登记机构</th>
									<th height="25">首次登记日期</th>
									<th height="25">变更机构</th>
									<th height="25">变更日期</th>
									<th height="25">详细信息</th>
								</tr>
							</thead>
							<tbody>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">张三</td>
									<td height="25" class="alignright">T5200000000000000001</td>
									<td height="25" class="alignright">A510227198103027351</td>
									<td height="25" class="alignright">云南省建行</td>
									<td height="25" class="alignright">08711234567</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20051001</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20060320</td>
									<td height="25" class="aligncenter"><a href="custInfo.jsp">查看</a></td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">张三</td>
									<td height="25" class="alignright">T5200000000000000001</td>
									<td height="25" class="alignright">A510227198103027351</td>
									<td height="25" class="alignright">云南省建行</td>
									<td height="25" class="alignright">08711234567</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20051001</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20060320</td>
									<td height="25" class="aligncenter"><a href="custInfo.jsp">查看</a></td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">张三</td>
									<td height="25" class="alignright">T5200000000000000001</td>
									<td height="25" class="alignright">A510227198103027351</td>
									<td height="25" class="alignright">云南省建行</td>
									<td height="25" class="alignright">08711234567</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20051001</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20060320</td>
									<td height="25" class="aligncenter"><a href="custInfo.jsp">查看</a></td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">张三</td>
									<td height="25" class="alignright">T5200000000000000001</td>
									<td height="25" class="alignright">A510227198103027351</td>
									<td height="25" class="alignright">云南省建行</td>
									<td height="25" class="alignright">08711234567</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20051001</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20060320</td>
									<td height="25" class="aligncenter"><a href="custInfo.jsp">查看</a></td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">张三</td>
									<td height="25" class="alignright">T5200000000000000001</td>
									<td height="25" class="alignright">A510227198103027351</td>
									<td height="25" class="alignright">云南省建行</td>
									<td height="25" class="alignright">08711234567</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20051001</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20060320</td>
									<td height="25" class="aligncenter"><a href="custInfo.jsp">查看</a></td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">张三</td>
									<td height="25" class="alignright">T5200000000000000001</td>
									<td height="25" class="alignright">A510227198103027351</td>
									<td height="25" class="alignright">云南省建行</td>
									<td height="25" class="alignright">08711234567</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20051001</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20060320</td>
									<td height="25" class="aligncenter"><a href="custInfo.jsp">查看</a></td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">张三</td>
									<td height="25" class="alignright">T5200000000000000001</td>
									<td height="25" class="alignright">A510227198103027351</td>
									<td height="25" class="alignright">云南省建行</td>
									<td height="25" class="alignright">08711234567</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20051001</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20060320</td>
									<td height="25" class="aligncenter"><a href="custInfo.jsp">查看</a></td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">张三</td>
									<td height="25" class="alignright">T5200000000000000001</td>
									<td height="25" class="alignright">A510227198103027351</td>
									<td height="25" class="alignright">云南省建行</td>
									<td height="25" class="alignright">08711234567</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20051001</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20060320</td>
									<td height="25" class="aligncenter"><a href="custInfo.jsp">查看</a></td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">张三</td>
									<td height="25" class="alignright">T5200000000000000001</td>
									<td height="25" class="alignright">A510227198103027351</td>
									<td height="25" class="alignright">云南省建行</td>
									<td height="25" class="alignright">08711234567</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20051001</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20060320</td>
									<td height="25" class="aligncenter"><a href="custInfo.jsp">查看</a></td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">张三</td>
									<td height="25" class="alignright">T5200000000000000001</td>
									<td height="25" class="alignright">A510227198103027351</td>
									<td height="25" class="alignright">云南省建行</td>
									<td height="25" class="alignright">08711234567</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20051001</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20060320</td>
									<td height="25" class="aligncenter"><a href="custInfo.jsp">查看</a></td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">张三</td>
									<td height="25" class="alignright">T5200000000000000001</td>
									<td height="25" class="alignright">A510227198103027351</td>
									<td height="25" class="alignright">云南省建行</td>
									<td height="25" class="alignright">08711234567</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20051001</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20060320</td>
									<td height="25" class="aligncenter"><a href="custInfo.jsp">查看</a></td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">张三</td>
									<td height="25" class="alignright">T5200000000000000001</td>
									<td height="25" class="alignright">A510227198103027351</td>
									<td height="25" class="alignright">云南省建行</td>
									<td height="25" class="alignright">08711234567</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20051001</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20060320</td>
									<td height="25" class="aligncenter"><a href="custInfo.jsp">查看</a></td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">张三</td>
									<td height="25" class="alignright">T5200000000000000001</td>
									<td height="25" class="alignright">A510227198103027351</td>
									<td height="25" class="alignright">云南省建行</td>
									<td height="25" class="alignright">08711234567</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20051001</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20060320</td>
									<td height="25" class="aligncenter"><a href="custInfo.jsp">查看</a></td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">张三</td>
									<td height="25" class="alignright">T5200000000000000001</td>
									<td height="25" class="alignright">A510227198103027351</td>
									<td height="25" class="alignright">云南省建行</td>
									<td height="25" class="alignright">08711234567</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20051001</td>
									<td height="25" class="alignright">机构1001</td>
									<td height="25" class="alignright">20060320</td>
									<td height="25" class="aligncenter"><a href="custInfo.jsp">查看</a></td>
								</tr>
							</tbody>
						</table>
						</td>
					</tr>
					<tr>
						<td><br>
						</td>
					</tr>
					<tr>
						<td>
						<table align="center" width="15%">
							<tbody>
								<tr>
									<td><input id="body:myform:_id47" name="body:myform:_id47"
										type="submit" value="&#23548;&#20986;Excel&#34920;"
										onclick="javascript:ExportExcelWithOutUnite();;clear_body_3Amyform();document.forms['body:myform'].elements['autoScroll'].value=getScrolling();"
										class="button" /></td>
									<td><input id="body:myform:_id48" name="body:myform:_id48"
										type="submit" value=" &#25171; &#21360; "
										onclick="javascript:print();return false;clear_body_3Amyform();document.forms['body:myform'].elements['autoScroll'].value=getScrolling();"
										class="button" /></td>
								</tr>
							</tbody>
						</table>
						</td>
					</tr>
				</tbody>
			</table>
			<input type="hidden" name="body:myform_SUBMIT" value="1" /><input
				type="hidden" name="autoScroll" /><input type="hidden"
				name="body:myform:_link_hidden_" /><script type="text/javascript"><!--
function clear_body_3Amyform() {
  var f = document.forms['body:myform'];
  f.elements['body:myform:_link_hidden_'].value='';
}
clear_body_3Amyform();
//--></script></form>
			</td>
		</tr>
		<tr>
			<td height="10" valign="top">
			<table border="0" width="100%" class="text_footer">
				<tbody>
					<tr>
						<td><span class="white">&#29256;&#26435;&#25152;&#26377;</span><span
							class="white">&nbsp;&copy;&nbsp;</span><span class="white">2005-2008
						&#20013;&#22269;&#24314;&#35774;&#38134;&#34892;
						&#24314;&#35758;&#22312;IE6
						1024*768&#20998;&#36776;&#29575;&#19979;&#20351;&#29992;</span></td>
					</tr>
				</tbody>
			</table>
			</td>
		</tr>
	</tbody>
</table>
</body>
<form id="linkDummyForm" name="linkDummyForm" style="display:none"
	method="post" action="/yndemo/myMonitor.jsf"><input type="hidden"
	name="autoScroll" /><input type="hidden" name="jscook_action" /><script
	type="text/javascript"><!--
function clear_linkDummyForm() {
  var f = document.forms['linkDummyForm'];
  f.elements['jscook_action'].value='';
}
clear_linkDummyForm();
//--></script></form>
<script type="text/javascript"><!--
function getScrolling() {
    var x = 0; var y = 0;
    if (self.pageXOffset) {
        x = self.pageXOffset;
        y = self.pageYOffset;
    } else if (document.documentElement && document.documentElement.scrollLeft) {
        x = document.documentElement.scrollLeft;
        y = document.documentElement.scrollTop;
    } else if (document.body) {
        x = document.body.scrollLeft;
        y = document.body.scrollTop;
    }
    return x + "," + y;
}

//--></script>
<a id="hiddenReloadLink" name="hiddenReloadLink"
	href="/yndemo/myMonitor.jsf?1174106517343" target="_self"
	style="display:none"></a>
<iframe id="HideFrame" name="HideFrame" height="0" style="display:none"></iframe>
<iframe id="submitForm/myMonitor.jsp" name="submitForm/myMonitor.jsp"
	height="0" style="display:none"></iframe>
<div style="display:none"><input id="checkSubmitFlg"
	name="checkSubmitFlg" value="0" style="display:none" /></div>
<script type="text/javascript"><!--
if(window.parent.document.getElementById("checkSubmitFlg")!=null){ 	
window.parent.document.getElementById("checkSubmitFlg").value="0"; 	
} 	
window.status="";

//--></script>
<script type="text/javascript"><!--
function submitTest() { 	
var checkSubmitFlg = document.getElementById("checkSubmitFlg").value; 	
if (checkSubmitFlg == '1') { 
		alert("\u540e\u53f0\u6570\u636e\u5904\u7406\u4e2d\uff0c\u8bf7\u60a8\u7a0d\u7b49\u2026\u2026\u2026\u2026"); 
		return false; 
	} 
	document.getElementById("checkSubmitFlg").value="1";
 var v=document.createElement("<img id=submitImg border=0 style ='position: absolute; left: 40%; top: 40%;visibility:visible'  src=/yndemo/faces/myFacesExtensionResource/xmdc.Resource/11302665/images/wait.gif>");
	document.body.insertBefore(v);
window.status="\u4e1a\u52a1\u5904\u7406\u4e2d\u2026\u2026\u2026\u2026";
	return true; 
}

//--></script>
</html>
