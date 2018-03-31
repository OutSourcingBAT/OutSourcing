package service;
import com.grw.dao.impl.DaoImpl;
public class LoginService {
	public Boolean login(String id,String password){
		DaoImpl dao = new DaoImpl();
		String sql="select password from Test where id = "+id ;
		if(dao.queryString(sql)!=null&&dao.queryString(sql).equals(password))
			return true;
		return false;
		
	}

}
