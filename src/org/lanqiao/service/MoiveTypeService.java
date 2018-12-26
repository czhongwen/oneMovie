package org.lanqiao.service;

import java.util.List;

import org.lanqiao.bean.MoiveType;

public interface MoiveTypeService {

	/**
	 * 添加流派分类
	 * @param moiveCountry
	 * @return
	 */
	boolean add(MoiveType moiveType);
	
	/**
	 * 删除流派分类
	 * @param id
	 * @return
	 */
	boolean del(int id);
	
	/**
	 * 修改分类
	 * @param moiveCountry
	 * @return
	 */
	boolean update(MoiveType moiveType);
	
	/**
	 * 获得所有分类
	 * @return
	 */
	List<MoiveType> getAll();
	/**
	 * 根据ID获得分类
	 * @param id
	 * @return
	 */
	MoiveType queryById(int id);
	
}
