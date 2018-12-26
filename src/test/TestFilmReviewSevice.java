package test;

import java.util.List;

import org.lanqiao.bean.FilmReview;
import org.lanqiao.service.FilmReviewService;
import org.lanqiao.service.impl.FilmReviewServiceImpl;
import org.lanqiao.util.Page;

public class TestFilmReviewSevice {
	public static void main(String[] args) {
		FilmReview fr = new FilmReview("12121", 1, "你好呀", "2018-11-14 2:08:30", 1, 1);
		FilmReviewService frs = new FilmReviewServiceImpl();
//		for(int i=0;i<20;i++) {
//			frs.addFilmReview(fr);
//		}
		Page page = new Page(8,1);
	    List list=frs.getFilmReviewAll(page, 0);
	    for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}
	}
}
