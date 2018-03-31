package service;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import com.grw.dao.impl.DaoImpl;

import meviii.CommonOperate;
import meviii.FaceSetOperate;
import meviii.Response;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class DeleteService {
	public void delete(String name,String identity) {
		DaoImpl dao = new DaoImpl();
		if(identity.equals("juming")) {
			String sql = "DELETE FROM Entity_1 WHERE name=?";
			dao.update(sql, name);
		}
		else if(identity.equals("linshi")) {
			String sql = "DELETE FROM linshi WHERE name=?";
			dao.update(sql, name);
		}
		dao.close();
	}
	
	public void deleteAllPic() {
		
	}

	public void DeletePic(String id) {
		DaoImpl dao = new DaoImpl();
		String sql1 = "select picture1 from entity_1 where id = ?";
		String sql2 = "select picture2 from entity_1 where id = ?";
		String sql3 = "select picture1 from entity_1 where id = ?";
		DeletePic(dao.queryString(sql1, id), dao.queryString(sql2, id), dao.queryString(sql3, id));
		/*if(DeletePic(dao.queryString(sql1, id), dao.queryString(sql2, id), dao.queryString(sql3, id))) {
			
		}*/
	}
	
	public boolean DeletePic(String path1, String path2, String path3) {
		// TODO Auto-generated method stub
		File file1 = new File(path1);
		byte[] buff1 = getBytesFromFile(file1);
		File file2 = new File(path2);
		byte[] buff2 = getBytesFromFile(file2);
		File file3 = new File(path3);
		byte[] buff3 = getBytesFromFile(file3);
		
		String token1 = dectect(buff1);
		String token2 = dectect(buff2);
		String token3 = dectect(buff3);
		if(token1!=null&token2!=null&token3!=null) {
			if(delete(token1)&delete(token2)&delete(token3)) {
				return true;
			}
			else
				return false;
		}else {
			return false;
		}
		
	}
	
	public boolean delete(String token) {
		 FaceSetOperate faceSetOperate = new FaceSetOperate("1C6PIleJmJ6GBjxPnygB8JFHAwYLq5Lq", "iojCR-HVuEV3feT0TExiftm0HDNAznEV", false);
		 try {
				Response response = faceSetOperate.removeFaceFromFaceSetByFaceSetToken("44a77d350bccf00195ec9f27c853a23f", token);
				while(response.getStatus()==403) {
					response = faceSetOperate.removeFaceFromFaceSetByFaceSetToken("44a77d350bccf00195ec9f27c853a23f", token);
				}
				JSONObject jsonObject = JSONObject.fromObject(new String(response.getContent()));
				if(jsonObject.getString("face_removed")!=null&jsonObject.getInt("face_removed")==1)
					return true;
				else 
					return false;
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return false;
		 
	}
	public String dectect(byte[] buff) {
		CommonOperate commonOperate = new CommonOperate("1C6PIleJmJ6GBjxPnygB8JFHAwYLq5Lq", "iojCR-HVuEV3feT0TExiftm0HDNAznEV", false);
		try {
			Response response = commonOperate.detectByte(buff, 1, null);
			while(response.getStatus()==403) {
				response = commonOperate.detectByte(buff, 1, null);
			}
			JSONObject jsonObject = JSONObject.fromObject(new String(response.getContent()));
			JSONArray jsonArray = jsonObject.getJSONArray("faces");
			return jsonArray.getJSONObject(0).getString("face_token");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public static byte[] getBytesFromFile(File f) {
       if (f == null) {
           return null;
       }
       try {
           FileInputStream stream = new FileInputStream(f);
           ByteArrayOutputStream out = new ByteArrayOutputStream(1000);
           byte[] b = new byte[1000];
           int n;
           while ((n = stream.read(b)) != -1)
               out.write(b, 0, n);
           stream.close();
           out.close();
           return out.toByteArray();
       } catch (IOException e) {
       }
       return null;
   }
}
