<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form>
	<acme:form-textbox code="investor.application.form.label.ticker" path="ticker" readonly="true"/>
	<acme:form-textbox code="investor.application.form.label.creation-moment" path="creationMoment" readonly="true"/>
	<acme:form-textarea  code="investor.application.form.label.statement" path="statement" readonly="true"/>
	<acme:form-textarea  code="investor.application.form.label.money-offer" path="moneyOffer" readonly="true"/>
	
	<acme:form-submit test= "${command== 'show' }"
		method="get" code="investor.application.form.label.investmentRounds" action="/investor/investment-round/show_mine?applicationId=${id}"/>
	


	<acme:form-return code="investor.application.form.button.return"/>
</acme:form>
