package service;

import com.grw.dao.impl.DaoImpl;

import javabean.Person;

public class ChangeService {
	public void change(Person person,String name ,String identity) {
		DaoImpl dao = new DaoImpl();
		if(identity.equals("juming")) {
			String sql = "UPDATE  Entity_1 SET name=?,id=?,lou_number=?,phone=?,birthday=?,ru_zhu_time=?,jie_zhi_time=?,picture1=?,picture2=?,picture3=?,zhuang_tai=? WHERE name = ? ";
			dao.update(sql, person.getName(),person.getId(),person.getLou_number(),person.getPhone(),person.getBirthday(),person.getRu_zhu_time(),
							person.getJie_zhi_time(),person.getPicture1(),person.getPicture2(),person.getPicture3(),name);
		}
		else if(identity.equals("linshi")) {
			String sql = "UPDATE  linshi SET name=?,id=?,lou_number=?,phone=?,birthday=?,ru_zhu_time=?,jie_zhi_time=?,picture1=?,picture2=?,picture3=?,zhuang_tai=? WHERE name = ? ";
			dao.update(sql, person.getName(),person.getId(),person.getLou_number(),person.getPhone(),person.getBirthday(),person.getRu_zhu_time(),
							person.getJie_zhi_time(),person.getPicture1(),person.getPicture2(),person.getPicture3(),name);
		}
	}

}
