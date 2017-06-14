package servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import domain.User;
import utils.imageUtils;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/login")
public class loginServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		req.setCharacterEncoding("utf-8");
		String method = req.getParameter("method");
		if(method.equals("login")){
			login(req,resp);
		}
		else
		{
			register(req,resp);
		}
	}
private void register(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		String user = req.getParameter("user");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		String image = req.getParameter("image");
		
		
		SimpleDateFormat df1 = new SimpleDateFormat("yyyyMMddHHmmss");//设置日期格式
		String date1 = df1.format(new Date());// new Date()为获取当前系统时间
		String newPath="E:\\workek\\Find3\\WebContent\\images\\"+date1+".jpg";//用来存取上传后的文件的路径
		String relativepaths="images/"+date1+".jpg";//设置图片存储的相对路径
		imageUtils.copyFile(image, newPath);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String date = df.format(new Date());// new Date()为获取当前系统时间
		//E:\workek\Find3\WebContent\images
		
		
		User u = new User();
		u.setUser(user);
		u.setPassword(password);
		u.setEmail(email);
		u.setPhone(phone);
		u.setImage(relativepaths);
		u.setDate(date);
		
		UserDao dao = new UserDao();
		boolean flag = dao.register(u);
		
		
		if(flag==true){
			req.getRequestDispatcher("login.jsp?status=1").forward(req, resp);
		}
		else{
			req.getRequestDispatcher("login.jsp?status=2").forward(req, resp);
		}
	}

	private void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String user = req.getParameter("user");
		String password = req.getParameter("password");
		UserDao dao = new UserDao();
		User u=dao.login(user,password);
		if(u==null){
			req.getRequestDispatcher("login.jsp?status=3").forward(req, resp);
		}
		else
		{
			//req.getRequestDispatcher("Persenal.jsp").forward(req, resp);
			req.getSession().setAttribute("user", u);
			resp.sendRedirect(req.getContextPath()+"/Persenal?method=login");
		}
	}
}
