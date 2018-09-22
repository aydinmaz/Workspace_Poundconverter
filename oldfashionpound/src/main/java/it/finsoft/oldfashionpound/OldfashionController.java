package it.finsoft.oldfashionpound;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
public class OldfashionController {

	Pound pound1 = new Pound();
	Pound pound2= new Pound();
	Pound poundresult= new Pound();
	
	@GetMapping("/sum")
	public String sum(@RequestParam("p1") int p1,@RequestParam("s1") int s1,@RequestParam("d1") int d1
			         ,@RequestParam("p") int p2,@RequestParam("s") int s2,@RequestParam("d") int d2,
			         @RequestParam("act") String action, Model model)
	{
		int sum=0;
		int temp= d1+s1*12+p1*20*12;
		int temp1= d2+s2*12+p2*20*12;
		if (action.equals("somma")) {
			 sum= temp+temp1;
		}
		else{sum=temp-temp1;
		
		if (sum<0) {
			
			model.addAttribute("errore","Il secondo valore non dovrebbe essere inferiore al primo");
			return "/result";
		}
		}
		   
		
		
		int p= sum/(20*12);
		int s= (sum%(20*12))/12;
		int d=(sum%(20*12))%12;
		
		pound1.setS(s1);
		pound1.setP(p1);
		pound1.setD(d1);
		
		pound2.setS(s2);
		pound2.setP(p2);
		pound2.setD(d2);
		
		poundresult.setS(s);
		poundresult.setP(p);
		poundresult.setD(d);
		
		model.addAttribute("pound1",pound1 );
		model.addAttribute("pound2",pound2 );
		model.addAttribute("poundresult",poundresult );
		model.addAttribute("act",action);
		return "/result";
	}
	
	
	@GetMapping("/multiple")
	public String multipleDivide(@RequestParam("p") int p,@RequestParam("s") int s,@RequestParam("d") int d
			         ,@RequestParam("f") int fattore,
			         @RequestParam("act") String action, Model model)
	{
		int sum=0;int remain=0;
		int temp= d+s*12+p*20*12;
		if (action.equals("multiplicazione")) {
			 sum= temp*fattore;
		}
		else
		{sum=temp/fattore;
		 remain=temp%fattore;
		 poundresult.setR(remain);
		}
		
		int p0= sum/(20*12);
		int s0= (sum%(20*12))/12;
		int d0=(sum%(20*12))%12;
		
		pound1.setS(s);
		pound1.setP(p);
		pound1.setD(d);
		
		poundresult.setS(s0);
		poundresult.setP(p0);
		poundresult.setD(d0);
		
		
		model.addAttribute("pound1",pound1 );
		model.addAttribute("f",fattore);
		model.addAttribute("poundresult",poundresult );
		model.addAttribute("act",action);
		
		return "/result";
	}
	
	
	@RequestMapping(value = { "/", "/welcome" }, method = RequestMethod.GET)
	public String welcome(Model model) {

		return "/welcome";
	}
}
