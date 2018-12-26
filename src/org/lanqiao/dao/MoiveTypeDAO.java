package org.lanqiao.dao;

import java.util.List;

import org.lanqiao.bean.MoiveType;

public interface MoiveTypeDAO {
	
	/**
	 * 添加电影分类流派
	 * @param moiveType
	 * @return
	 */
	int add(MoiveType moiveType);
	
	/**
	 * 根据ID删除电影流派
	 * @param id 流派主键
	 * @return
	 */
	int del(int id);
	
	/**
	 * 修改流派
	 * @param moiveType
	 * @return
	 */
	int update(MoiveType moiveType);
	/**
	 * 获取所有流派
	 * @return
	 */
	List<MoiveType> getAll();
	
	/**
	 * 根据ID获得流派
	 * @param id
	 * @return
	 */
	MoiveType queryById(int id);
}
