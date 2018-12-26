package org.lanqiao.service;

import java.util.List;

import org.lanqiao.bean.Index;

public interface IndexService {

	/**
	 * 获得所有轮播的信息
	 * @return
	 */
	List<Index> queryAll();
	/**
	 * 根据ID删除首页轮播的信息
	 * @param ID
	 * @return
	 */
	boolean del(int ID);
	/**
	 * 添加首页轮播信息
	 * @param index
	 * @return
	 */
	boolean add(Index index);
	/**
	 * 修改首页轮播的信息
	 * @param index
	 * @return
	 */
	boolean update(Index index);
	
	/**
	 * 根据id查询单个首页轮播信息
	 * @param ID
	 * @return
	 */
	Index queryById(int ID);
}
