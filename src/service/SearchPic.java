package service;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;

import javax.imageio.stream.FileImageOutputStream;

import com.grw.dao.impl.DaoImpl;

import javabean.SearchResult;
import meviii.CommonOperate;
import meviii.Response;
import net.sf.json.JSONObject;

public class SearchPic {

	// 需要一个facesetToken,传入图片地址,返回识别的人名和相似度
	public String search(String picPath) {
		// TODO Auto-generated method stub
		File file = new File(picPath);
		byte[] buff = getBytesFromFile(file);
		CommonOperate commonOperate = new CommonOperate("1C6PIleJmJ6GBjxPnygB8JFHAwYLq5Lq",
				"iojCR-HVuEV3feT0TExiftm0HDNAznEV", false);
		try {
			Response response = commonOperate.searchByFaceSetToken(null, null, buff, "44a77d350bccf00195ec9f27c853a23f",
					1);
			while (response.getStatus() == 403) {
				response = commonOperate.searchByFaceSetToken(null, null, buff, "44a77d350bccf00195ec9f27c853a23f", 1);
			}
			System.out.println(new String(response.getContent()));
			JSONObject jsonObject = JSONObject.fromObject(new String(response.getContent()));
			if (jsonObject.getJSONArray("faces").size() != 0) {
				JSONObject jsonObject2 = jsonObject.getJSONArray("results").getJSONObject(0);
				return "姓名：" + jsonObject2.getString("user_id") + " 置信度：" + jsonObject2.getString("confidence");
				/**
				 * 添加出行记录
				 */
			} else {
				return "传入图片未检测到人脸";
			}
			// System.out.println(new String(response.getContent()));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}

	public SearchResult search(byte[] buff) {
		// TODO Auto-generated method stub
		CommonOperate commonOperate = new CommonOperate("1C6PIleJmJ6GBjxPnygB8JFHAwYLq5Lq",
				"iojCR-HVuEV3feT0TExiftm0HDNAznEV", false);
		SearchResult rs = new SearchResult();
		try {
			Response response = commonOperate.searchByFaceSetToken(null, null, buff, "44a77d350bccf00195ec9f27c853a23f",
					1);
			while (response.getStatus() == 403) {
				response = commonOperate.searchByFaceSetToken(null, null, buff, "44a77d350bccf00195ec9f27c853a23f", 1);
			}
			// System.out.println(new String(response.getContent()));
			JSONObject jsonObject = JSONObject.fromObject(new String(response.getContent()));
			// System.out.println(new String(response.getContent()));
			/*
			 * if(jsonObject.getString("error_message")!=null) { return
			 * "传入图片未检测到人脸"; } else
			 */ if (jsonObject.getJSONArray("faces").size() != 0) {
				JSONObject jsonObject2 = jsonObject.getJSONArray("results").getJSONObject(0);
				// return "姓名："+jsonObject2.getString("user_id")+"
				// 置信度："+jsonObject2.getString("confidence");
				rs.setConfidence(jsonObject2.getDouble("confidence"));
				rs.setUserId(jsonObject2.getString("user_id"));
				rs.setDate(new Date());
				// addSearchRecord(rs);
				return rs;
				/**
				 * 添加出行记录
				 */
			} else {
				// return "传入图片未检测到人脸";
				rs.setConfidence(0.0);
				return rs;
			}
			// System.out.println(new String(response.getContent()));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// return null;
		return rs;

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

	public void base64StringToImage(byte[] bytes1) {
		try {

			/*
			 * ByteArrayInputStream bais = new ByteArrayInputStream(bytes1);
			 * FileInputStream fStream = new FileInputStream(new
			 * File("C:\\Users\\Lenovo\\Desktop\\lgx\\1.jpg")); BufferedImage
			 * bi1 =ImageIO.read(fStream); File w2 = new
			 * File("d://testFwwb");//可以是jpg,png,gif格式
			 * 
			 * ImageIO.write(bi1, "jpg", w2);//不管输出什么格式图片，此处不需改动
			 */
			/*
			 * MemorySystem Image image =
			 */

			/*
			 * OutputStream os = new FileOutputStream(new
			 * File("F:\\"+1+".jpg")); os.write(bytes1); os.flush();
			 * System.out.println("保存成功！"); os.close();
			 */

			FileImageOutputStream imageOut = new FileImageOutputStream(
					new File("F:\\" + UUID.randomUUID().toString() + ".png"));
			imageOut.write(bytes1, 0, bytes1.length);
			imageOut.flush();
			imageOut.close();
			System.out.println("Make Picture success,Please find image in " + "F:\\");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void addSearchRecord(SearchResult rs) {
		DaoImpl dao = new DaoImpl();

		/*
		 * Date d = new Date(); SimpleDateFormat sdf = new SimpleDateFormat(
		 * "yyyy-MM-dd HH:mm:ss"); System.out.println("当前时间：" + sdf.format(d));
		 */

		String sql = "INSERT INTO Entity_6(userid)values(?)";
		dao.update(sql, rs.getUserId());

	}
}
