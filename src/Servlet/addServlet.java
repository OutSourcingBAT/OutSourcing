package Servlet;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


import javabean.Person;
import service.AddService;
import service.RegisterPic;

/**
 * Servlet implementation class addServlet
 */
@WebServlet("/addServlet")
@MultipartConfig
public class addServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public addServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		
		RegisterPic registerPic = new RegisterPic();
		AddService addService = new AddService();
        Person person = new Person();
		
		person.setName(request.getParameter("name"));
		System.err.println(person.getName());
		person.setPhone(request.getParameter("phone"));
		person.setId(request.getParameter("id"));
		person.setBirthday(request.getParameter("year1") + "-" + request.getParameter("month1") + "-"
				+ request.getParameter("day1"));
		person.setRu_zhu_time(request.getParameter("year2") + "-" + request.getParameter("month2") + "-"
				+ request.getParameter("day2"));
		person.setJie_zhi_time(request.getParameter("year3") + "-" + request.getParameter("month3") + "-"
				+ request.getParameter("day3"));
		person.setLou_number(request.getParameter("danyuan") + request.getParameter("lou") + "-"
				+ request.getParameter("jia"));
				
		/*person.setPicture1(request.getParameter("file1"));
		person.setPicture2(request.getParameter("file2"));
		person.setPicture3(request.getParameter("file3"));*/
		
		String root = request.getServletContext().getRealPath("/upload");
		Part part1 = request.getPart("file1");
		Part part2 = request.getPart("file2");
		Part part3 = request.getPart("file3");
		String name1 = part1.getHeader("content-disposition");
		String name2 = part2.getHeader("content-disposition");
		String name3 = part3.getHeader("content-disposition");
		
		if(name1.lastIndexOf(".") != -1&name2.lastIndexOf(".") != -1&name3.lastIndexOf(".") != -1) {
			String str1 = name1.substring(name1.lastIndexOf("."), name1.length()-1);
			System.out.println(str1);
			System.out.println(part1.getSize());
			String str2 = name2.substring(name2.lastIndexOf("."), name2.length()-1);
			String str3 = name3.substring(name3.lastIndexOf("."), name3.length()-1);
			String filename1	= root+"\\"+UUID.randomUUID().toString()+str1;
			String filename2	= root+"\\"+UUID.randomUUID().toString()+str2;
			String filename3	= root+"\\"+UUID.randomUUID().toString()+str3;
			
			person.setPicture1(filename1);
			person.setPicture2(filename2);
			person.setPicture3(filename3);
			System.out.println(filename1+" "+filename2+" "+filename3);
			
			part1.write(filename1);
			part2.write(filename2);
			part3.write(filename3);
			
			
			System.err.println(person.getName());
			if(registerPic.UploadPic(filename1,filename2,filename3,person.getId()))
				//request.setAttribute("status", "×¢²á³É¹¦!");
				System.out.println("status ×¢²áÍ¼Æ¬³É¹¦!");
			else
				//request.setAttribute("status", "×¢²áÊ§°Ü!");
				System.out.println("status ×¢²áÍ¼Æ¬Ê§°Ü!");
			//request.getRequestDispatcher("registerStatus.jsp").forward(request, response);
		
		}
		addService.add(person);
		System.out.println("×¢²á¸öÈËÐÅÏ¢³É¹¦£¡");
		response.sendRedirect("about.jsp");
	}
}
