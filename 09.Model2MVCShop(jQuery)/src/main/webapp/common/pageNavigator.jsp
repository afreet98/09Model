<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=euc-kr" %>

	
	<c:if test="${ resultPage.currentPage > resultPage.pageUnit && resultPage.currentPage%5 != 0}">
			<a href="javascript:fncGet${type}List('${ resultPage.currentPage-resultPage.currentPage%5}')">�� ����</a>
	</c:if>
	
	<c:if test="${ resultPage.currentPage > resultPage.pageUnit && resultPage.currentPage%5 == 0}">
			<a href="javascript:fncGet${type}List('${ resultPage.currentPage-5}')">�� ����</a>
	</c:if>
	
	<c:forEach var="i"  begin="${resultPage.beginUnitPage}" end="${resultPage.endUnitPage}" step="1">
		<a href="javascript:fncGet${type}List('${ i }');">${ i }</a>
	</c:forEach>
	
	<c:if test="${ resultPage.endUnitPage < resultPage.maxPage }">
			<a href="javascript:fncGet${type}List('${resultPage.endUnitPage+1}')">���� ��</a>
	</c:if>