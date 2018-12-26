package test;

import org.lanqiao.bean.MoiveCountry;
import org.lanqiao.service.MoiveCountryService;
import org.lanqiao.service.impl.MoiveCountryServiceImpl;

public class TestMoiveCountryDAOImpl {

	public static void main(String[] args) {
		MoiveCountryService  mcs = new MoiveCountryServiceImpl();
		MoiveCountry mc = new MoiveCountry(0,"中国");
		System.out.println(mcs.add(mc));
	}	
	
}
