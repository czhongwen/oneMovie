package org.lanqiao.service;

import java.util.List;

import org.lanqiao.bean.TV;
import org.lanqiao.util.Page;

public interface TvService {
	/**
	 * 获得所有电视剧
	 * @return
	 */
	List<TV> getAll();
	
	/**
	 * 根据ID查找电视剧
	 * @param id电视剧ID
	 * @return
	 */
	TV getById(String id);
	
	/**
	 * 添加电视剧
	 * @param tv电视剧
	 * @return
	 */
	boolean add(TV tv);
	
	/**
	 * 修改电视剧内容
	 * @param tv
	 * @return
	 */
	boolean update(TV tv);
	
	/**
	 * 删除根据ID删除电视剧
	 * @param id
	 * @return
	 */
	boolean del(String id);
	/**
	 * 获得电视剧总数
	 * @return
	 */
	int getTotalCount();
	/**
	 * 获取当前页类容
	 * @param page
	 * @return
	 */
	List<TV> getByPage(Page page);
	/**
	 * 根据ID删除Tv
	 * @param ids
	 * @return
	 */
	boolean delTvByIds(String[] ids);
	
	/**
	 * 根据关键字获得TV
	 * @param key
	 * @param page
	 * @return
	 */
	List<TV> getTvByPage(String key,Page page);
	/**
	 * 根据关键字查找总数
	 * @param key
	 * @return
	 */
	int getTotalCount(String key);
	/**
	 * 关联其他表  查出所属国家 和类型名称
	 * @param page
	 * @return
	 */
	List<TV> getTv(Page page);
	/**
	 * 获得当前首字母的电视剧总数
	 * @param headChar
	 * @return
	 */
	int getTotalCountByHeadChar(String headChar);
	/**
	 * 查出首字母的所有电视剧
	 * @param page
	 * @return
	 */
	List<TV> getTvByHeadChar(Page page,String headChar);
	/**
	 * 获得最新电影
	 * @param page
	 * @return
	 */
	List<TV> getNewTv(Page page);
	/**
	 * 获得最热电视剧
	 * @param page
	 * @return
	 */
	List<TV> getHot(Page page);
	 /**
	  * 获得最热电影
	  * @param page
	  * @return
	  */
	List<TV> getHighScore(Page page);
	/**
	 * 电视剧播放量加1
	 * @param tvId
	 * @return
	 */
	boolean addPlayback(String tvId);
}
