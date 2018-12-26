package org.lanqiao.service.impl;

import java.util.List;

import org.lanqiao.bean.Moive;
import org.lanqiao.dao.IMessageDAO;
import org.lanqiao.dao.impl.MessageDAOImpl;
import org.lanqiao.service.MessageService;
import org.lanqiao.util.Page;

public class MessageServiceImpl implements MessageService {

	public List<Moive> getMoiveByPage(Page page) {
		IMessageDAO imd = new MessageDAOImpl();
		return imd.getMoiveByPage(page);
	}

	public int getMoiveCount() {
		IMessageDAO imd = new MessageDAOImpl();
		return imd.getMoiveCount();
	}
}
