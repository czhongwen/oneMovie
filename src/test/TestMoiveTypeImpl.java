package test;

import org.lanqiao.bean.MoiveType;
import org.lanqiao.dao.impl.MoiveTypeDAOImpl;

public class TestMoiveTypeImpl {
	
	public static void main(String[] args) {
		MoiveTypeDAOImpl im = new MoiveTypeDAOImpl();
		MoiveType mt = new MoiveType(4,"惊悚");
		System.out.println(im.update(mt));
	}
	
}
