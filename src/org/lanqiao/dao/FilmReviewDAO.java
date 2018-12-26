package org.lanqiao.dao;

import java.util.List;

import org.lanqiao.bean.FilmReview;
import org.lanqiao.util.Page;

public interface FilmReviewDAO {

	/**
	 * 根据电影id查询评论
	 * @param review
	 * @return
	 */
	List<FilmReview> getFilmReviewById(String moiveId);
	
	/**
	 * 查询所有评论
	 * @param movieId
	 * @return
	 */
	List<FilmReview> getFilmReviewAll(Page page,int key);
	
	/**
	 * 查询评论总数
	 * @return
	 */
	int getFilmReviewCount(int key);
	
	/**
	 * 增加评论
	 * @param review
	 * @return
	 */
	int addFilmReview(FilmReview review);
	
	/**
	 * 更新评论
	 * @param review
	 * @return
	 */
	int updateFilmReview(FilmReview review);
	
	/**
	 * 根据id删除评论
	 * @param movieId
	 * @return
	 */
	int delFilmReviewById(int filmReviewId);
	/**
	 * 根据ID删除评论
	 * @param ids
	 * @return
	 */
	int delByIds(int[] ids);
	/**
	 * 根据id通过审核
	 * @param ids
	 * @return
	 */
	int updateByIds(int[] ids);
	/**
	 * 获得预告片评论
	 * @param page
	 * @return
	 */
	List<FilmReview>  getPreviewFilmReview(Page page);
	/**
	 * 根据电视剧获得影评
	 * @param page
	 * @return
	 */
	List<FilmReview>  getTvFilmReview(String tvId);
	/**
	 * 根据电影ID获得影评
	 * @param moiveId
	 * @return
	 */
	List<FilmReview>  getMoiveFilmReview(String moiveId);
}
