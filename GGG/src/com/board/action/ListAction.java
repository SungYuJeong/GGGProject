
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
 
public class ListAction implements CommandAction {
	
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
 
    	Class.forName("com.mysql.cj.jdbc.Driver");    	    
    	Connection conn = null;
    	Statement stmt = null;
    	ResultSet rs = null;   
    	ResultSet rs2 = null;
    	
    	//�˻��ɼǰ� �˻����� �޾� ������ ����
    	String opt = request.getParameter("opt");
    	System.out.println(opt+"dfdf");
    	String condition = request.getParameter("condition");
    	if(condition != null) condition = new String(condition.getBytes("8859_1"), "EUC-KR");

    	
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
    			query = "select * from board order by num DESC";
    			query2 = "SELECT * FROM board WHERE score = (SELECT max(score) FROM board)";
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
    		
    		board maxScore = null;
    		if(query2!=null) {
    			rs.close();
        		stmt.close();
    			stmt = conn.createStatement();
    			rs2 = stmt.executeQuery(query2);
    			
    			 while(rs2.next()) {
        		  maxScore = new board();
      			  maxScore.setNum(rs2.getInt("num"));
      			  maxScore.setSubject(rs2.getString("subject"));
      			  maxScore.setContent(rs2.getString("content"));
      			  maxScore.setId(rs2.getString("id"));
      			  maxScore.setBoarddate(rs2.getString("boarddate"));
      			  maxScore.setScore(rs2.getString("score"));
      			  maxScore.setImg(rs2.getString("img"));
      			  maxScore.setSellOpt(rs2.getString("sellOpt"));
      			  maxScore.setBorrowDay(rs2.getInt("borrowDay"));
      			  maxScore.setPrice(rs2.getInt("price"));
    			 }
    		  
    		}
    		request.setAttribute("maxScore",maxScore);
    	

			 
    		
    		
    	} catch(SQLException ex){
    		System.out.println("aa");
    		ex.printStackTrace();
    	} finally{
    		if(rs != null) try{rs.close();} catch(SQLException ex){}
    		if(stmt != null) try{stmt.close();} catch(SQLException ex) {}
    		
    		if(conn != null) try{conn.close();} catch(SQLException ex) {}
    	}
    	System.out.println(opt+"dfdf");
    	if(opt==null) {
    		return "list.jsp";
    	}else {
    		return "searchResult.jsp";
    	}
    }
}