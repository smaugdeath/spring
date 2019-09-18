package kr.or.ddit.prod.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.ddit.prod.service.IProdService;

@Controller
public class ProdController {
	
	@Resource(name="prodService")
	private IProdService prodService;

	
	@RequestMapping(path= "prodList", method = RequestMethod.GET)
	public String userList(Model model, String lprod_gu) {
		
		model.addAttribute("prodList", prodService.getProdList(lprod_gu));
		
		return "prod/prodList";
	}	
	
	
}

