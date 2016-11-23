<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="cui" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib prefix="elfn" uri="/WEB-INF/tld/elutil.tld"%>

<%@page import="com.cesgroup.core.utils.*" %>
<%@page import="com.cesgroup.common.global.*" %>
<%@page import="java.util.*" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="serverName" value="${pageContext.request.serverName}"/>
<c:set var="serverPort" value="${pageContext.request.serverPort}"/>
<%
 	String idSuffix = request.getParameter("idSuffix");
	if(idSuffix==null||idSuffix.equals(""))
		idSuffix = "_"+ DateUtil.getDateNoUnderlined();
	request.setAttribute("idSuffix", idSuffix);
	request.setAttribute("currentDateTime", DateUtil.getCurrentDateTime());
	request.setAttribute("currentDate", DateUtil.getCurrentStringDate());

//	ShiroUser currentUser = (ShiroUser) SecurityUtils.getSubject().getPrincipal();
//	request.setAttribute("CURRENTUSER", currentUser);
//	session.setAttribute("sessionId", session.getId());
%>

