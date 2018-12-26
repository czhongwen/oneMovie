package org.lanqiao.dao;

import java.util.List;

import org.lanqiao.bean.TvDetail;

public interface TvDetailDAO {

	/**
	 * 增加电视剧
	 * @param tvDetail
	 * @return
	 */
	int add(TvDetail tvDetail);
	
	/**
	 * 根据ID获得电视剧所有集数
	 * @param tvId
	 * @return
	 */
	List<TvDetail> getAll(String tvId);
	/**
	 * 修改电视剧详情
	 * @param tvDetail
	 * @return
	 */
	int update(TvDetail tvDetail,String tvId);
}
