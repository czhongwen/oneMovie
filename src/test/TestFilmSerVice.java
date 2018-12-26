package test;

import org.lanqiao.service.FilmReviewService;
import org.lanqiao.service.impl.FilmReviewServiceImpl;
import org.lanqiao.util.Page;

public class TestFilmSerVice {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		FilmReviewService fs=new FilmReviewServiceImpl();
		System.out.println(fs.getFilmReviewAll(new Page(8,1), 0));
	}

}
