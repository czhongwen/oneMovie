package org.lanqiao.dao;

import java.util.List;

import org.lanqiao.bean.Index;

public interface IndexDAO {

	/**
	 * 添加首页轮播信息
	 * @param index
	 * @return
	 */
	boolean add(Index index);
	
	/**
	 * 根据ID删除首页轮播的信息
	 * @param ID
	 * @return
	 */
	int del(int ID);
	
	/**
	 * 修改首页轮播的信息
	 * @param index
	 * @return
	 */
	int update(Index index);
	
	/**
	 * 获得所有轮播的信息
	 * @return
	 */
	List<Index> query();
	
	Index queryById(int id);
}
