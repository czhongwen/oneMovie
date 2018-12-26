package org.lanqiao.service;

import java.util.List;

import org.lanqiao.bean.MoiveCountry;

public interface MoiveCountryService {

	/**
	 * 添加国家分类
	 * @param moiveCountry
	 * @return
	 */
	boolean add(MoiveCountry moiveCountry);
	
	/**
	 * 删除国家分类
	 * @param id
	 * @return
	 */
	boolean del(int id);
	
	/**
	 * 修改分类
	 * @param moiveCountry
	 * @return
	 */
	boolean update(MoiveCountry moiveCountry);
	
	/**
	 * 获得所有分类
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
