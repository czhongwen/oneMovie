package org.lanqiao.dao;

import java.util.List;

import org.lanqiao.bean.Moive;
import org.lanqiao.util.Page;

public interface MoiveDAO {

	/**
	 * 增加电影
	 * @param moive
	 * @return
	 */
	int add(Moive moive);
	/**
	 * 删除电影
	 * @param id
	 * @return
	 */
	int del(String id);
	/**
	 * 修改电影
	 * @param moive
	 * @return
	 */
	int update(Moive moive);
	/**
	 * 获得电影
	 * @return
	 */
	List<Moive> getAll();
	/**
	 * 根据ID获得电影
	 * @param id
	 * @return
	 */
	Moive getById(String id);
	/**
	 * 获得电影总数
	 * @return
	 */
	int getTotalCount();
	/**
	 * 根据关键字查找总数
	 * @param key
	 * @return
	 */
	int getTotalCount(String key);
	/**
	 * 根据page获得电影
	 * @param page
	 * @return
	 */
	List<Moive> getMoiveByPage(Page page);
	
	/**
	 * 根据ID删除moive
	 * @param ids
	 * @return
	 */
	int delMoiveByIds(String[] ids);
	
	/**
	 * 根据关键字获得电影
	 * @param key
	 * @param page
	 * @return
	 */
	List<Moive> getMoiveByPage(String key,Page page);
	/**
	 * 查询某一类电影的总数
	 * @param typeId
	 * @return
	 */
	int getTotalCountByTypeId(int typeId);
	/**
	 * 查询某一类电影的总数
	 * @param countryId
	 * @return
	 */
	int getTotalCountByCountryId(int countryId);
	/**
	 * 查询某一类电影
	 * @param typeId
	 * @return
	 */
	List<Moive> getMoiveByTypeId(Page page,int typeId);
	/**
	 * 查询某一类电影
	 * @param typeId
	 * @return
	 */
	List<Moive> getMoiveByCountryId(Page page,int countryId);
	/**
	 * 多表查询  包括电影国家 和类型
	 * @param page
	 * @return
	 */
	List<Moive> getMoive(Page page);
	
	/**
	 * 根据首字母查询总数
	 * @param headChar
	 * @return
	 */
	int getTotalByHeadChar(String headChar);
	/**
	 * 根据首字母获得电影信息
	 * @param page
	 * @param HeadChar
	 * @return
	 */
	List<Moive> getMoiveByChar(Page page ,String HeadChar);
	/**
	 * 获得最新上映的电影
	 * @param page
	 * @return
	 */
	List<Moive> getNewMoive(Page page);
	/**
	 * 获得播放最的电影
	 * @param page
	 * @return
	 */
	List<Moive> getHighPlay(Page page);
	/**
	 * 获得评分最高
	 * @param page
	 * @return
	 */
	List<Moive> getHighScore(Page page);
	/**
	 * 获得最受欢迎的电影  
	 * @param page
	 * @return
	 */
	List<Moive> getBestMoive(Page page);
	/**
	 * 播放量加1
	 * @return
	 */
	int addPlayback(String moiveId);
}
