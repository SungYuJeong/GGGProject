
package com.board.action;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.beans.board;
import com.board.controller.CommandAction;
 
public class CategoryAction implements CommandAction {
	
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
 
    	Class.forName("com.mysql.cj.jdbc.Driver");    	    
    	Connection conn = null;
    	Statement stmt = null;
    	ResultSet rs = null;   
    	ResultSet rs2 = null;
    	
    	//�˻��ɼǰ� �˻����� �޾� ������ ����
    	String opt = request.getParameter("opt");
    	String condition = request.getParameter("condition");
    	if(condition != null) condition = new String(condition.getBytes("8859_1"), "EUC-KR");
    	
    	String category = request.getParameter("category");
    	if(category==null) category="1";
    	
    	int spage = 1;
    	String page =request.getParameter("page");
    	if(page!=null)
    		spage = Integer.parseInt(page);
  
//    	if(category==null)
//    		category="ħ�ǰ���";
//    	else if(category.equals("1"))
//    		category="ħ�ǰ���";
//    	else if(category.equals("2"))
//    		category="�Žǰ���";
//    	else if(category.equals("3"))
//    		category="��������";
//    	else if(category.equals("4"))
//    		category="�ֹ氡��";
//    	else if(category.equals("5"))
//    		category="å��,å��";
//    	else if(category.equals("6"))
//    		category="����";
//    	else if(category.equals("7"))
//    		category="��Ÿ";
//    	else
//    		category="ħ�ǰ���";
 
    	
    	try {
    		HttpSession session = request.getSession();
    		//�α����� �Ǿ����� ������ �����˾��� �α���ȭ������ �̵�    		    		
    		String id = (String) session.getAttribute("id");    		
    		if(id == null){    			
    			return "loginerror.jsp";
    		}
    		
    		String jdbcDriver = "jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC";
    		           // +
    					//		"useUnicode=true&characterEncoding = euc-kr";
    		String dbUser = "root";
    		String dbPass = "root";
    		String query = null; 
    		String query2 = null;
    		
    		if(opt == null){    			
    			query = "select * from board where typ like '%"+category+"%' order by num";
    			query2 = "SELECT * FROM board WHERE num = (SELECT max(num) FROM board)";
    		}else if(opt.equals("0")){    			
    			query = "select * from board where subject like '%"+condition+"%' order by num";        		
    		}else if(opt.equals("1")){    			
    			query = "select * from board where content like '%"+condition+"%' order by num";        		
    		}else if(opt.equals("2")){    			
    			query = "select * from board where id like '%"+condition+"%' order by num";        		
    		}
    		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
    		
    		stmt = conn.createStatement();    		
    		rs = stmt.executeQuery(query);
    		
    		
    		ArrayList<board> articleList = new ArrayList<board>();    		
    		while(rs.next()){
    			board article = new board();
    			article.setNum(rs.getInt("num"));
    			article.setSubject(rs.getString("subject"));
    			article.setContent(rs.getString("content"));
    			article.setId(rs.getString("id"));
    			article.setBoarddate(rs.getString("boarddate"));
    			article.setScore(rs.getString("score"));
    			article.setImg(rs.getString("img"));
    			article.setSellOpt(rs.getString("sellOpt"));
    			article.setBorrowDay(rs.getInt("borrowDay"));
    			article.setPrice(rs.getInt("price"));
    			articleList.add(article);
    		}
    		request.setAttribute("articleList",articleList);
    		
    		int maxNum = 0;
    		if(query2!=null) {
    			rs.close();
        		stmt.close();
    			stmt = conn.createStatement();
    			rs2 = stmt.executeQuery(query2);
    			
    			 while(rs2.next()) {
        		  
      			  maxNum = (rs2.getInt("num"));
    			 }
    		  
    		}
    		// ��ü ������ ��
            int maxPage = (int)(articleList.size()/6.0 + 0.84);
            //���� ������ ��ȣ
            int startPage = (int)(spage/5.0 + 0.8) * 5 - 4;
            //������ ������ ��ȣ
            int endPage = startPage + 4;
            if(endPage > maxPage)    endPage = maxPage;
            
            System.out.println("page"+spage+" "+maxPage+" "+startPage+" "+endPage+" "+articleList.size());
            
            // 4�� ��������ȣ ����
            request.setAttribute("spage", spage);
            request.setAttribute("maxPage", maxPage);
            request.setAttribute("startPage", startPage);
            request.setAttribute("endPage", endPage);
            request.setAttribute("category", category);
            int pbegin = (spage-1)*6;
            int pend = (spage-1)*6+5;
            if(pbegin <0)
            	pbegin =0;
            if(pend < 0)
            	pend=0;
            request.setAttribute("pbegin", pbegin);
            request.setAttribute("pend", pend);

    	

			 
    		
    		
    	} catch(SQLException ex){
    		System.out.println("aa");
    		ex.printStackTrace();
    	} finally{
    		if(rs != null) try{rs.close();} catch(SQLException ex){}
    		if(stmt != null) try{stmt.close();} catch(SQLException ex) {}
    		
    		if(conn != null) try{conn.close();} catch(SQLException ex) {}
    	}
    	
    	if(opt==null) {
    		return "catalogue.jsp";
    	}else {
    		return "searchResult.jsp";
    	}
    }
}