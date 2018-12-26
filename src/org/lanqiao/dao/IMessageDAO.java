package org.lanqiao.dao;

import java.util.List;

import org.lanqiao.bean.Moive;
import org.lanqiao.util.Page;

public interface IMessageDAO {

	List<Moive> getMoiveByPage(Page page);
	
	int  getMoiveCount();
}
