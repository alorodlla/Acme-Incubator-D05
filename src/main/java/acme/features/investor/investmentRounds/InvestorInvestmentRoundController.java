
package acme.features.investor.investmentRounds;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import acme.components.CustomCommand;
import acme.entities.investmentRounds.InvestmentRound;
import acme.entities.roles.Investor;
import acme.framework.components.BasicCommand;
import acme.framework.controllers.AbstractController;

@Controller
@RequestMapping("/investor/investment-round/")
public class InvestorInvestmentRoundController extends AbstractController<Investor, InvestmentRound> {

	@Autowired
	private InvestorInvestmentRoundShowService2 showService2;


	@PostConstruct
	private void initialise() {

		super.addCustomCommand(CustomCommand.SHOW_MINE, BasicCommand.SHOW, this.showService2);

	}
}
