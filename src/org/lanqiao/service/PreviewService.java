package org.lanqiao.service;

import java.util.List;

import org.lanqiao.bean.Preview;
import org.lanqiao.util.Page;

public interface PreviewService {

	/**
	 * 添加预告片
	 * @param preview
	 * @return
	 */
	boolean add(Preview preview);
	
	/**
	 * 删除预告片
	 * @param id
	 * @return
	 */
	boolean del(String id);
	/**
	 * 修改
	 * @param preview
	 * @return
	 */
	boolean update(Preview preview);
	
	/**
	 * 查询所有
	 * @return
	 */
	List<Preview> getAll();
	
	/**
	 * 查询单个
	 * @param id
	 * @return
	 */
	Preview getById(String id);
	/**
	 * 获得预告片总数
	 * @return
	 */
	int getTotalCount();
	/**
	 * 获得页面类容
	 * @param page
	 * @return
	 */
	List<Preview> getByPage(Page page);
	/**
	 * 获得页面类容
	 * @param page
	 * @return
	 */
	List<Preview> getByPage(Page page,String key);
	/**
	 * 获得预告片总数
	 * @return
	 */
	int getTotalCount(String key);
	/**
	 * 根据id删除预告
	 * @param ids
	 * @return
	 */
	boolean delByids(String[] ids);
	
}
