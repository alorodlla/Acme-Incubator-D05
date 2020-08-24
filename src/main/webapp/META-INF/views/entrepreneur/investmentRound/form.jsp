<%@page language="java"%>
<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form>
	<acme:form-textbox code="entrepreneur.investmentRound.list.label.title" path="title"/>
	<acme:form-select code="entrepreneur.investmentRound.list.label.round" path="round">
		<acme:form-option code="SEED" value="SEED" selected="true"/>
		<acme:form-option code="ANGEL" value="ANGEL"/>
		<acme:form-option code="SERIES_A" value="SERIES A"/>
		<acme:form-option code="SERIES_B" value="SERIES B"/>
		<acme:form-option code="SERIES_C" value="SERIES C"/>
		<acme:form-option code="BRIDGE" value="BRIDGE"/>
	</acme:form-select>
	<acme:form-textarea code="entrepreneur.investmentRound.list.label.description" path="description"/>
	<jstl:if test="${command != 'create'}">
		<acme:form-moment code="entrepreneur.investmentRound.list.label.creation" path="creation" readonly="true"/>
	</jstl:if>
	<acme:form-money code="entrepreneur.investmentRound.list.label.amount" path="amount"/>
	<acme:form-textbox code="entrepreneur.investmentRound.list.label.ticker" path="ticker"/>
	<jstl:if test="${command != 'show'}">
	<acme:form-url code="entrepreneur.investmentRound.list.label.optionalLink" path="optionalLink"/>
	</jstl:if>
	<jstl:if test="${command == 'show'}">
	<acme:form-textbox code="entrepreneur.investmentRound.list.label.optionalLink" path="optionalLink"/>
	</jstl:if>
	<jstl:if test="${command != 'create' && finalMode == 'false' || command == 'update' && finalMode == 'true'}">
    <acme:form-select code="entrepreneur.investmentRound.form.label.finalMode" path="finalMode">
    	<acme:form-option code="entrepreneur.investmentRound.form.label.false" value="false"/>
    	<acme:form-option code="entrepreneur.investmentRound.form.label.true" value="true"/>
    </acme:form-select>
    
    <jstl:if test="${command != 'create'}">
    <acme:message code="entrepreneur.investmentRound.form.delete.message"/>	
    </jstl:if>
    <br>
    
    
	</jstl:if>    
    <acme:form-submit test="${command == 'show'  && finalMode == 'false'}"
  		code="entrepreneur.investmentRound.form.button.update"
  		action="/entrepreneur/investment-round/update"/>
  		
  	<acme:form-submit test="${command == 'show'}"
  		code="entrepreneur.investmentRound.form.button.delete"
  		action="/entrepreneur/investment-round/delete"/>
  		
  	<acme:form-submit method="post" test="${command == 'create'}"
  		code="entrepreneur.investmentRound.form.button.create"
  		action="/entrepreneur/investment-round/create"/>
  		
  	<acme:form-submit test="${command == 'update'}"
  		code="entrepreneur.investmentRound.form.button.update"
  		action="/entrepreneur/investment-round/update"/>
  		
  	<acme:form-submit test="${command == 'delete'}"
  		code="entrepreneur.investmenRound.form.button.delete"
  		action="/entrepreneur/investment-round/delete"/>
  		
	
	<acme:form-submit method="get" code="entrepreneur.investmentRound.form.label.activities" action="/entrepreneur/activity/list-from-investment?investmentRoundId=${id}"/>
	
	<acme:form-return code="entrepreneur.investmentRound.button.return"/>
</acme:form>