package service;

import com.grw.dao.impl.DaoImpl;

import javabean.Person;

public class AddService {

	public void add(Person person) {
		DaoImpl dao = new DaoImpl();
		String sql = "INSERT INTO Entity_1(name,id,id4,id2,lou_number,phone,birthday,ru_zhu_time,jie_zhi_time,picture1,picture2,picture3,zhuang_tai)VALUES (?,?,null,null,?,?,?,?,?,?,?,?,'ÔÚ¼Ò')";
		//System.out.println(person.getName());
		dao.update(sql, person.getName(),person.getId(),person.getLou_number(),person.getPhone(),person.getBirthday(),person.getRu_zhu_time(),person.getJie_zhi_time(),person.getPicture1(),person.getPicture2(),person.getPicture3());
	}
}
