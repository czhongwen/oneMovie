package org.lanqiao.service.impl;

import java.util.List;

import org.lanqiao.bean.FilmReview;
import org.lanqiao.dao.FilmReviewDAO;
import org.lanqiao.dao.impl.FilmReviewDaoImpl;
import org.lanqiao.service.FilmReviewService;
import org.lanqiao.util.Page;

public class FilmReviewServiceImpl implements FilmReviewService {
	FilmReviewDAO frd = new  FilmReviewDaoImpl();
	@Override
	public List<FilmReview> getFilmReviewById(String moiveId) {
		return frd.getFilmReviewById(moiveId);
	}

	@Override
	public List<FilmReview> getFilmReviewAll(Page page, int key) {
		return frd.getFilmReviewAll(page, key);
	}

	@Override
	public int getFilmReviewCount(int key) {
		return frd.getFilmReviewCount(key);
	}

	@Override
	public boolean addFilmReview(FilmReview review) {
		return frd.addFilmReview(review)>0;
	}

	@Override
	public boolean updateFilmReview(FilmReview review) {
		return frd.updateFilmReview(review)>0;
	}

	@Override
	public boolean delFilmReviewById(int filmReviewId) {
		return frd.delFilmReviewById(filmReviewId)>0;
	}

	@Override
	public boolean delByIds(int[] ids) {
		return frd.delByIds(ids)>0;
	}

	@Override
	public boolean updateByIds(int[] ids) {
		return frd.updateByIds(ids)>0;
	}

	@Override
	public List<FilmReview> getPreviewFilmReview(Page page) {
		return frd.getPreviewFilmReview(page);
	}

	@Override
	public List<FilmReview> getTvFilmReview(String tvId) {
		return frd.getMoiveFilmReview(tvId);
	}

	@Override
	public List<FilmReview> getMoiveFilmReview(String moiveId) {
		return frd.getMoiveFilmReview(moiveId);
	}

}
