<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:list>
	<acme:list-column code="administrator.toolRecord.list.label.title" path="title" width="30%"/>
	<acme:list-column code="administrator.toolRecord.list.label.activitySector" path="activitySector" width="30%"/>
	<acme:list-column code="administrator.toolRecord.list.label.inventor" path="inventor" width="30%"/>
	<acme:list-column code="administrator.toolRecord.list.label.stars" path="stars" width="10%"/>
</acme:list>
