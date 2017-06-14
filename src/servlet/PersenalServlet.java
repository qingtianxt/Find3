package servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import dao.findinfoDao;
import domain.User;
import domain.losefindinfo;
import utils.imageUtils;

/**
 * Servlet implementation class PersenalServlet
 */
@WebServlet("/Persenal")
public class PersenalServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		String method = req.getParameter("method");
		
		if(method.equals("login")){
			login(req,resp);
		}else if(method.equals("insert")){
			insert(req,resp);
		}
	}
	
	
	private void insert(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String status = req.getParameter("status");
		
		losefindinfo lfi = new losefindinfo();
		lfi.setCategory(req.getParameter("category"));
		lfi.setPlace(req.getParameter("place"));
		lfi.setDatetime(req.getParameter("date"));
		lfi.setInformation(req.getParameter("infomation"));
		lfi.setShorttitle(req.getParameter("shorttitle"));
		String image = req.getParameter("image");
		
		
		User user = (User)req.getSession().getAttribute("user");
		
		
		UserDao dao = new UserDao();
		User u = dao.getinfo(user.getUser());
		
		lfi.setAddress(u.getEmail());
		lfi.setPhone(u.getPhone());
		lfi.setUser(u.getUser());
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//�������ڸ�ʽ
		String date = df.format(new Date());// new Date()Ϊ��ȡ��ǰϵͳʱ��
		lfi.setReleasetime(date);
		//��ȡͼƬ·��
		SimpleDateFormat df1 = new SimpleDateFormat("yyyyMMddHHmmss");//�������ڸ�ʽ
		String date1 = df1.format(new Date());// new Date()Ϊ��ȡ��ǰϵͳʱ��
		String newPath=null;
		if(status.equals("1")){
			//E:\workek\Find3\WebContent\images
			newPath="E:\\workek\\Find3\\WebContent\\images1\\"+date1+".jpg";//������ȡ�ϴ�����ļ���·��
		}
		else{
			newPath="E:\\workek\\Find3\\WebContent\\images2\\"+date1+".jpg";//������ȡ�ϴ�����ļ���·��
		}
		String relativepaths="images/"+date1+".jpg";//����ͼƬ�洢�����·��
		imageUtils.copyFile(image, newPath);
		lfi.setImage(relativepaths);
		
		
		
		findinfoDao dao1  = new findinfoDao();
		System.out.println(lfi.toString());
		
		
		boolean flag=true;
		if(status.equals("1")){
			flag=dao1.insertlose(lfi);
		}
		else
		{
			flag=dao1.insertfind(lfi);
		}
		if(flag==true){
			resp.sendRedirect("Persenal?method=login&status=1");
		}
		else{
			resp.sendRedirect("Persenal?method=login&status=2");
		}
	}




/**
 * �ӵ�¼�������������ת��������ҳ֮ǰ��Ҫ��
 * @param req
 * @param resp
 * @throws ServletException
 * @throws IOException
 */
	private void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String status = req.getParameter("status");
		
		findinfoDao dao =new findinfoDao();
		//����ʱ��˳���ȡ��ʧ��Ϣ
		List<losefindinfo> list = new ArrayList<>();
		list=dao.getLoseinfo();
		
		//����ʱ��˳���ȡȫ��������Ϣ
		List<losefindinfo> list1 = new ArrayList<>();
		list1=dao.getFindinfo();
		
		req.setAttribute("list", list);
		req.setAttribute("list1", list1);
		req.getRequestDispatcher("Persenal.jsp?status="+status).forward(req, resp);
	}
	

}
