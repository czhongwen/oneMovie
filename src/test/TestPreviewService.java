package test;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.lanqiao.bean.Preview;
import org.lanqiao.service.PreviewService;
import org.lanqiao.service.impl.PreviewServiceImpl;

public class TestPreviewService {

	public static void main(String[] args) {
		
		File file = new File("D:/img");
		String[] files = file.list();
		List<String> list = new ArrayList<>();
		for (String string : files) {
			list.add(string);
		}
		
		System.out.println(list.size());
		
		PreviewService ps = new PreviewServiceImpl();
		
		List<Preview>  listPre = ps.getAll();
		for (Preview preview : listPre) {
			preview.setPic("files/"+list.get(new Random().nextInt(51)));
			ps.update(preview);
		}
		System.out.println("改完了");
	}

}
