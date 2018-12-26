package test;

import org.lanqiao.service.MoiveService;
import org.lanqiao.service.impl.MoiveServiceImpl;
import org.lanqiao.util.Page;

public class TestSerachFilm {

		public static void main(String[] args) {
			Page page = new Page(24,1);
			
			MoiveService ms = new MoiveServiceImpl();
			int a  = ms.getTotalCountByTypeId(14);
			System.out.println(a);
			page.setTotalCount(a);
			System.out.println(ms.getMoiveByTypeId(page, 14));
			System.out.println(page.toString());
		}
	
}
