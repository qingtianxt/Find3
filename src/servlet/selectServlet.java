package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class selectServlet
 */
@WebServlet("/select")
public class selectServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String method = req.getParameter("method");
		if(method.equals("select")){
			select(req,resp);
		}
	}

	private void select(HttpServletRequest req, HttpServletResponse resp) {
		String[] message = req.getParameterValues("message");//获取是寻物消息还是认领消息
		String m = "";
		for(int i=0;i<message.length;i++){
			if(message[i]!=null){
				m=message[i];
			}
		}
		
		String time = req.getParameter("time1");//获取时间
		 String[] place = req.getParameterValues(("address"));//获取物品找到或者丢失的地点
		 String p ="";
		 for(int i=0;i<place.length;i++){
				if(place[i]!=null){
					p=place[i];
				}
			}
		String[] thing = req.getParameterValues(("thing"));//获取物品的种类
		String t="";
		for(int i=0;i<thing.length;i++){
			if(thing[i]!=null){
				t=thing[i];
			}
		}
		
		//对于查询的筛选方式，寻物或者丢失消息这个决定了要查找的表。时间取填表单时间的前5天和后五天，哪一个里输入的时间越接近，越先被打印出来
		//地点和物品直接作为决定条件，如果满足这两个条件的数据优先被挑选出来，满足其中一个均可，不满足则不被打印出来，这个通过两次查询获得
		
	}


}
