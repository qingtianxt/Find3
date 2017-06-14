package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import domain.User;
import domain.losefindinfo;
import utils.DBUtil;

public class findinfoDao {
	//按照时间顺序返回丢失物品的信息
	public List<losefindinfo> getLoseinfo() {
		List<losefindinfo> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		conn = DBUtil.getConn();
		losefindinfo l = null;
		String sql = "select * from message1 order by date desc";
		
		try{
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				l= new losefindinfo();
				l.setUser(rs.getString("user"));
				l.setAddress(rs.getString("address"));
				l.setCategory(rs.getString("category"));
				l.setDatetime(rs.getString("date"));
				l.setImage(rs.getString("image"));
				l.setInformation(rs.getString("information"));
				l.setPhone(rs.getString("phone"));
				l.setReleasetime(rs.getString("release"));
				l.setShorttitle(rs.getString("shorttitle"));
				l.setPlace(rs.getString("place"));
				list.add(l);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
		}
		return list;
	}
//按照时间顺序返回找到物品的信息
	public List<losefindinfo> getFindinfo() {
		List<losefindinfo> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		conn = DBUtil.getConn();
		losefindinfo l = null;
		String sql = "select * from message2  order by date desc";
		
		try{
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				l= new losefindinfo();
				l.setUser(rs.getString("user"));
				l.setAddress(rs.getString("address"));
				l.setCategory(rs.getString("category"));
				l.setDatetime(rs.getString("date"));
				l.setImage(rs.getString("image"));
				l.setInformation(rs.getString("information"));
				l.setPhone(rs.getString("phone"));
				l.setReleasetime(rs.getString("release"));
				l.setShorttitle(rs.getString("shorttitle"));
				l.setPlace(rs.getString("place"));
				list.add(l);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
		}
		return list;
	}
	/**
	 * 将获取到的丢失信息存到message1表中
	 * @param lfi
	 * @return
	 */
	public boolean insertlose(losefindinfo lfi) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		conn = DBUtil.getConn();
		losefindinfo l = null;
		String sql = "insert into message1 values(?,?,?,?,?,?,?,?,?,?,?)";
		int i=0;
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, null);
			pstmt.setString(2, lfi.getUser());
			pstmt.setString(3, lfi.getAddress());
			pstmt.setString(4, lfi.getCategory());
			pstmt.setString(5, lfi.getDatetime());
			pstmt.setString(6, lfi.getImage());
			pstmt.setString(7,lfi.getInformation());
			pstmt.setString(8, lfi.getPhone());
			pstmt.setString(9,lfi.getReleasetime());
			pstmt.setString(10, lfi.getShorttitle());
			pstmt.setString(11,lfi.getPlace());
			i = pstmt.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
		}
		boolean flag= true;
		if(i==0){
			flag= false;
		}
		return flag;
	}
	/**
	 * 将找到的信息存到message2表中
	 * @param lfi
	 * @return
	 */
	public boolean insertfind(losefindinfo lfi) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		conn = DBUtil.getConn();
		losefindinfo l = null;
		String sql = "insert into message2 values(?,?,?,?,?,?,?,?,?,?,?)";
		int i=0;
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, null);
			pstmt.setString(2, lfi.getUser());
			pstmt.setString(3, lfi.getAddress());
			pstmt.setString(4, lfi.getCategory());
			pstmt.setString(5, lfi.getDatetime());
			pstmt.setString(6, lfi.getImage());
			pstmt.setString(7,lfi.getInformation());
			pstmt.setString(8, lfi.getPhone());
			pstmt.setString(9,lfi.getReleasetime());
			pstmt.setString(10, lfi.getShorttitle());
			pstmt.setString(11,lfi.getPlace());
			i = pstmt.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
		}
		boolean flag= true;
		if(i==0){
			flag= false;
		}
		return flag;
	}
	
}	
