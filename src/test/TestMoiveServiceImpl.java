package test;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.lanqiao.bean.Moive;
import org.lanqiao.dao.MoiveDAO;
import org.lanqiao.dao.impl.MoiveDAOImpl;
import org.lanqiao.service.MoiveService;
import org.lanqiao.service.impl.MoiveServiceImpl;
import org.lanqiao.util.Page;

public class TestMoiveServiceImpl {

	public static void main(String[] args) {
		MoiveService ms = new MoiveServiceImpl();
		List<Moive> list = new ArrayList<>();
		list = ms.getAll();
		for (Moive moive : list) {
			moive.setMoivePlay(new Random().nextInt(5000));
			moive.setMoiveScore(new Random().nextInt(500));
			ms.update(moive);
		}
		System.out.println("改完了");
		
//		MoiveDAO md = new MoiveDAOImpl();
//		
//		Page page = new Page(8, 1);
//		System.out.println(md.getMoiveByChar(page, "a"));
	}
	
}
