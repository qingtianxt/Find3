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
		String[] message = req.getParameterValues("message");//��ȡ��Ѱ����Ϣ����������Ϣ
		String m = "";
		for(int i=0;i<message.length;i++){
			if(message[i]!=null){
				m=message[i];
			}
		}
		
		String time = req.getParameter("time1");//��ȡʱ��
		 String[] place = req.getParameterValues(("address"));//��ȡ��Ʒ�ҵ����߶�ʧ�ĵص�
		 String p ="";
		 for(int i=0;i<place.length;i++){
				if(place[i]!=null){
					p=place[i];
				}
			}
		String[] thing = req.getParameterValues(("thing"));//��ȡ��Ʒ������
		String t="";
		for(int i=0;i<thing.length;i++){
			if(thing[i]!=null){
				t=thing[i];
			}
		}
		
		//���ڲ�ѯ��ɸѡ��ʽ��Ѱ����߶�ʧ��Ϣ���������Ҫ���ҵı�ʱ��ȡ���ʱ���ǰ5��ͺ����죬��һ���������ʱ��Խ�ӽ���Խ�ȱ���ӡ����
		//�ص����Ʒֱ����Ϊ������������������������������������ȱ���ѡ��������������һ�����ɣ��������򲻱���ӡ���������ͨ�����β�ѯ���
		
	}


}
