
<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form>
	<acme:form-textbox code="entrepreneur.application.form.label.ticker" path="ticker" readonly="true"/>
	<acme:form-textbox code="entrepreneur.application.form.label.creation-moment" path="creationMoment" readonly="true"/>
	<acme:form-textarea  code="entrepreneur.application.form.label.statement" path="statement" readonly="true"/>
	<acme:form-textarea  code="entrepreneur.application.form.label.money-offer" path="moneyOffer" readonly="true"/>

	
	

    <acme:form-return code="entrepreneur.application.form.button.return"/>
	
	
	
	
	
</acme:form>
