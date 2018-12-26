package org.lanqiao.dao;

import java.util.List;

import org.lanqiao.bean.MoiveCountry;

public interface MoiveCountryDAO {
	
	/**
	 * 添加电影国家分类
	 * @param moiveCountry
	 * @return
	 */
	int add(MoiveCountry moiveCountry);
	
	/**
	 * 根据ID删除国家分类
	 * @param id 电影国家分类的ID
	 * @return
	 */
	int del(int id);
	/**
	 * 修改国家分类
	 * @param moiveCountry
	 * @return
	 */
	int update(MoiveCountry moiveCountry);
	
	/**
	 * 获得所有国家分类
	 * @return
	 */
	List<MoiveCountry> getAll();
	
	/**
	 * 根据ID获得分类
	 * @param id
	 * @return
	 */
	MoiveCountry queryById(int id);
	
}
