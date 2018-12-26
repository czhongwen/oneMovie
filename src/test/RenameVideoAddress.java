package test;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.lanqiao.bean.Moive;
import org.lanqiao.bean.TV;
import org.lanqiao.bean.TvDetail;
import org.lanqiao.service.MoiveService;
import org.lanqiao.service.TvDetailService;
import org.lanqiao.service.TvService;
import org.lanqiao.service.impl.MoiveServiceImpl;
import org.lanqiao.service.impl.TvDetailServiceImpl;
import org.lanqiao.service.impl.TvServiceImpl;

public class RenameVideoAddress {

	public static void main(String[] args) {
		MoiveService ms = new MoiveServiceImpl();
		TvDetailService td = new TvDetailServiceImpl();
		TvService ts = new TvServiceImpl();
		List<String> list = new ArrayList<>();
		
		File file = new File("D:/files");
		String[] files = file.list();
		for (int i = 0; i < files.length; i++) {
			list.add(files[i]);
		}
		
		List<TV> listTv = ts.getAll();
		
		for (TV tv : listTv) {
			
			List<TvDetail> listTvDetail = td.getAll(tv.getTvId());
			for (TvDetail tvDetail : listTvDetail) {
				tvDetail.setTvAddress("files/"+list.get(new Random().nextInt(list.size()-1)));
				td.update(tvDetail, tv.getTvId());
			}
		}
		
		
		
//		List<Moive> listMoive = ms.getAll();
//		for (Moive moive : listMoive) {
//			moive.setMoiveAddress("files/"+list.get(new Random().nextInt(list.size()-1)));
//			ms.update(moive);
//		}
		System.out.println("改完了！");
		
	}

}
