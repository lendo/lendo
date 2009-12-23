<%@ page contentType="text/html;charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html" />
		<title></title>
		<%String path = request.getContextPath(); %>

		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/page/yndemo/census.css" />
	</head>
	<body>
		<table height="100%" width="100%">
			<tbody>
				<tr>
					<td height="99%" valign="top">
						<table align="center" width="100%">
							<tbody>
								<tr>
									<td>
										<table borderColor="silver" class="datatable" cellspacing="0"
											cellpadding="5" border="1" align="center" width="80%">
											<thead>
												<tr>
													<td height="25">
														<b>姓名</b>
													</td>
													<td height="25">
														<b>身份证</b>
													</td>
													<td height="25">
														<b>是否户主</b>
													</td>
													<td height="25">
														<b>户主</b>
													</td>
													<td height="25">
														<b>与户主关系</b>
													</td>
													<td height="25">
														<b>户号</b>
													</td>
													<td height="25">
														<b>职业</b>
													</td>
													<td height="25">
														<b>村</b>
													</td>
													<td height="25">
														<b>组</b>
													</td>
													<td height="25">
														<b>操作</b>
													</td>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${result}" var="person">
													<tr bgcolor="#FFFFFF">
														<td height="25" class="alignleft">
															<c:out value="${person.name}" />
														</td>
														<td height="25" class="alignleft">
															<c:out value="${person.identity}" />
														</td>
														<td height="25" class="alignleft">
															<c:out value="${person.isMajorText}" />
														</td>
														<td height="25" class="alignleft">
															<c:out value="${person.majorName}" />
														</td>
														<td height="25" class="alignleft">
															<c:out value="${person.majorRelationText}" />
														</td>
														<td height="25" class="alignleft">
															<c:out value="${person.houseCode}" />
														</td>
														<td height="25" class="alignleft">
															<c:out value="${person.job}" />
														</td>
														<td height="25" class="alignleft">
															<c:out value="${person.village}" />
														</td>
														<td height="25" class="alignleft">
															<c:out value="${person.group}" />
														</td>
														<td height="25" class="aligncenter">
															<a href="<%=request.getContextPath()%>/editPerson.do?id=<c:out value="${person.id}" />">Edit</a>
															|
															<a href="<%=request.getContextPath()%>/deletePerson.do?id=<c:out value="${person.id}" />">Delete</a>
														</td>
													</tr>
												</c:forEach>
												<%
													    Integer maxItems = new Integer(0);
													    Integer count = new Integer(0);
													    Integer pageSize = new Integer(0);
													    Integer offset = new Integer(0);
													    Object maxItemsObj = request.getAttribute("maxItems");
													    Object countObj = request.getAttribute("count");
													    Object pageSizeObj = request.getAttribute("pageSize");
													    Object offsetObj = request.getAttribute("offset");
													    if(maxItemsObj!=null){
													    	maxItems = (Integer)maxItemsObj;
													    }
													    if(countObj!=null){
													    	count = (Integer)countObj;
													    }
													    if(pageSizeObj!=null){
													    	pageSize = (Integer)pageSizeObj;
													    }
													    if(offsetObj!=null){
													    	offset = (Integer)offset;
													    }
													%>
												<tr bgcolor="#FFFFFF">
													<td colspan="10" height="25" align="right">
														<pg:pager maxIndexPages="<%=maxItems.intValue()%>"
															url="listPerson.do" items="<%=count.intValue()%>"
															maxPageItems="<%=pageSize.intValue()%>" isOffset="true"
															index="center"
															export="offset,currentPageNumber=pageNumber"
															scope="request">
															<input type="hidden" name="pager.offset"
																value="<%=offset.intValue()%>" />
															<pg:index>
																<pg:first export="pageUrl">
																	<a href="<c:out value='${pageUrl}'/>">
																	    首页
																	</a>
																</pg:first>
																<pg:prev export="pageUrl" ifnull="${true}">
																	<c:if test="${offset>=pageSize}">
																		<a href="<c:out value='${pageUrl}'/>">
																		上页
																		</a>
																	</c:if>
																</pg:prev>
																<pg:pages>
																	<c:choose>
																		<c:when test="${pageNumber == currentPageNumber}">
																			<font color=#A90A08><c:out
																					value='${pageNumber}' />
																			</font>
																		</c:when>
																		<c:otherwise>
																			<a href="<c:out value='${pageUrl}'/>"><c:out
																					value='${pageNumber}' />
																			</a>
																		</c:otherwise>
																	</c:choose>
																</pg:pages>
																<pg:next export="pageUrl" ifnull="${true}">
																	<c:if test="${offset<(count-pageSize)}">
																		<a href="<c:out value='${pageUrl}'/>">
																		下页
																		</a>
																	</c:if>
																</pg:next>
																<pg:last export="pageUrl">
																	<a href="<c:out value='${pageUrl}'/>">
																	末页
																	</a>
																</pg:last> &nbsp;&nbsp;&nbsp;&nbsp;<c:out value='${totalPage}' />
																页
																<c:out value='${count}' />
																条记录 &nbsp;&nbsp;&nbsp;&nbsp;
																</pg:index>
														</pg:pager>
													</td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
	</body>
</html>
