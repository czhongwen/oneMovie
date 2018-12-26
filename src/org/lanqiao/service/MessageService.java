package org.lanqiao.service;

import java.util.List;

import org.lanqiao.bean.Moive;
import org.lanqiao.util.Page;

public interface MessageService {

	List<Moive> getMoiveByPage(Page page);

	int getMoiveCount();
}
