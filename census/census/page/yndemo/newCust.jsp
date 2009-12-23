<%@ page contentType="text/html;charset=GBK"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" />
    <title>云南建行电子银行部客户指标类报表系统</title>
    <%String path = request.getContextPath(); %>

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
                        </script>
                        </td>
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
						<td>客户分布 -&gt; 新增客户分布</td>
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
									<td align="center"><b><span id="body:myform:title">新增客户分布</span></b></td>
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
									<td align="left">您所在的用户组是：省行电银部，当前数据日期是：2007-3-17。 单位：户、%</td>
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
									<th height="25" rowspan="2">机构名称</th>
									<th height="25" rowspan="2">拥有客户总数</th>
									<th height="25" colspan="2">本期新增客户</th>
									<th height="25" colspan="2">手机银行</th>
									<th height="25" colspan="2">电话银行</th>
									<th height="25" colspan="2">网络银行</th>
								</tr>
								<tr>
									<th height="25">总数</th>
									<th height="25">占比</th>
									<th height="25">客户数</th>
									<th height="25">占比</th>
									<th height="25">客户数</th>
									<th height="25">占比</th>
									<th height="25">客户数</th>
									<th height="25">占比</th>
								</tr>
							</thead>
							<tbody>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">机构1001</td>
									<td height="25" class="alignright"><a href="custList.jsp">106</a></td>
									<td height="25" class="alignright"><a href="custList.jsp">83</a></td>
									<td height="25" class="alignright">78.30</td>
									<td height="25" class="alignright"><a href="custList.jsp">13</a></td>
									<td height="25" class="alignright">15.66</td>
									<td height="25" class="alignright"><a href="custList.jsp">72</a></td>
									<td height="25" class="alignright">86.75</td>
									<td height="25" class="alignright"><a href="custList.jsp">67</a></td>
									<td height="25" class="alignright">80.72</td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">机构1002</td>
									<td height="25" class="alignright"><a href="custList.jsp">53</a></td>
									<td height="25" class="alignright"><a href="custList.jsp">21</a></td>
									<td height="25" class="alignright">39.62</td>
									<td height="25" class="alignright"><a href="custList.jsp">6</a></td>
									<td height="25" class="alignright">28.57</td>
									<td height="25" class="alignright"><a href="custList.jsp">15</a></td>
									<td height="25" class="alignright">71.43</td>
									<td height="25" class="alignright"><a href="custList.jsp">15</a></td>
									<td height="25" class="alignright">71.43</td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">机构1003</td>
									<td height="25" class="alignright"><a href="custList.jsp">78</a></td>
									<td height="25" class="alignright"><a href="custList.jsp">71</a></td>
									<td height="25" class="alignright">91.03</td>
									<td height="25" class="alignright"><a href="custList.jsp">15</a></td>
									<td height="25" class="alignright">21.13</td>
									<td height="25" class="alignright"><a href="custList.jsp">69</a></td>
									<td height="25" class="alignright">97.18</td>
									<td height="25" class="alignright"><a href="custList.jsp">45</a></td>
									<td height="25" class="alignright">63.38</td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">机构1004</td>
									<td height="25" class="alignright"><a href="custList.jsp">32</a></td>
									<td height="25" class="alignright"><a href="custList.jsp">15</a></td>
									<td height="25" class="alignright">46.88</td>
									<td height="25" class="alignright"><a href="custList.jsp">1</a></td>
									<td height="25" class="alignright">6.67</td>
									<td height="25" class="alignright"><a href="custList.jsp">11</a></td>
									<td height="25" class="alignright">73.33</td>
									<td height="25" class="alignright"><a href="custList.jsp">10</a></td>
									<td height="25" class="alignright">66.67</td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">机构1005</td>
									<td height="25" class="alignright"><a href="custList.jsp">105</a></td>
									<td height="25" class="alignright"><a href="custList.jsp">98</a></td>
									<td height="25" class="alignright">93.33</td>
									<td height="25" class="alignright"><a href="custList.jsp">9</a></td>
									<td height="25" class="alignright">9.18</td>
									<td height="25" class="alignright"><a href="custList.jsp">76</a></td>
									<td height="25" class="alignright">77.55</td>
									<td height="25" class="alignright"><a href="custList.jsp">71</a></td>
									<td height="25" class="alignright">72.45</td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">机构1006</td>
									<td height="25" class="alignright"><a href="custList.jsp">120</a></td>
									<td height="25" class="alignright"><a href="custList.jsp">56</a></td>
									<td height="25" class="alignright">46.67</td>
									<td height="25" class="alignright"><a href="custList.jsp">20</a></td>
									<td height="25" class="alignright">35.71</td>
									<td height="25" class="alignright"><a href="custList.jsp">40</a></td>
									<td height="25" class="alignright">71.43</td>
									<td height="25" class="alignright"><a href="custList.jsp">10</a></td>
									<td height="25" class="alignright">17.86</td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">机构1007</td>
									<td height="25" class="alignright"><a href="custList.jsp">113</a></td>
									<td height="25" class="alignright"><a href="custList.jsp">45</a></td>
									<td height="25" class="alignright">39.82</td>
									<td height="25" class="alignright"><a href="custList.jsp">19</a></td>
									<td height="25" class="alignright">42.22</td>
									<td height="25" class="alignright"><a href="custList.jsp">45</a></td>
									<td height="25" class="alignright">100.00</td>
									<td height="25" class="alignright"><a href="custList.jsp">11</a></td>
									<td height="25" class="alignright">24.44</td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">机构1008</td>
									<td height="25" class="alignright"><a href="custList.jsp">11</a></td>
									<td height="25" class="alignright"><a href="custList.jsp">42</a></td>
									<td height="25" class="alignright">26.14</td>
									<td height="25" class="alignright"><a href="custList.jsp">13</a></td>
									<td height="25" class="alignright">23.62</td>
									<td height="25" class="alignright"><a href="custList.jsp">46</a></td>
									<td height="25" class="alignright">90.56</td>
									<td height="25" class="alignright"><a href="custList.jsp">4</a></td>
									<td height="25" class="alignright">23.81</td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">机构1009</td>
									<td height="25" class="alignright"><a href="custList.jsp">67</a></td>
									<td height="25" class="alignright"><a href="custList.jsp">45</a></td>
									<td height="25" class="alignright">37.23</td>
									<td height="25" class="alignright"><a href="custList.jsp">29</a></td>
									<td height="25" class="alignright">64.90</td>
									<td height="25" class="alignright"><a href="custList.jsp">29</a></td>
									<td height="25" class="alignright">102.60</td>
									<td height="25" class="alignright"><a href="custList.jsp">56</a></td>
									<td height="25" class="alignright">18.34</td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">机构1010</td>
									<td height="25" class="alignright"><a href="custList.jsp">241</a></td>
									<td height="25" class="alignright"><a href="custList.jsp">20</a></td>
									<td height="25" class="alignright">28.34</td>
									<td height="25" class="alignright"><a href="custList.jsp">18</a></td>
									<td height="25" class="alignright">59.21</td>
									<td height="25" class="alignright"><a href="custList.jsp">78</a></td>
									<td height="25" class="alignright">69.06</td>
									<td height="25" class="alignright"><a href="custList.jsp">7</a></td>
									<td height="25" class="alignright">29.74</td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">机构1011</td>
									<td height="25" class="alignright"><a href="custList.jsp">110</a></td>
									<td height="25" class="alignright"><a href="custList.jsp">21</a></td>
									<td height="25" class="alignright">67.30</td>
									<td height="25" class="alignright"><a href="custList.jsp">14</a></td>
									<td height="25" class="alignright">32.62</td>
									<td height="25" class="alignright"><a href="custList.jsp">43</a></td>
									<td height="25" class="alignright">34.98</td>
									<td height="25" class="alignright"><a href="custList.jsp">5</a></td>
									<td height="25" class="alignright">90.12</td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="25" class="alignleft">总计</td>
									<td height="25" class="alignright"><a href="custList.jsp">607</a></td>
									<td height="25" class="alignright"><a href="custList.jsp">389</a></td>
									<td height="25" class="alignright">64.09</td>
									<td height="25" class="alignright"><a href="custList.jsp">83</a></td>
									<td height="25" class="alignright">21.34</td>
									<td height="25" class="alignright"><a href="custList.jsp">28</a></td>
									<td height="25" class="alignright">84.32</td>
									<td height="25" class="alignright"><a href="custList.jsp">22</a></td>
									<td height="25" class="alignright">58.87</td>
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
