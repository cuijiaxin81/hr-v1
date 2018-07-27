package com.icss.hr.dept.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.hr.dept.service.DeptService;

/**
 * ɾ������
 */
@WebServlet("/DeleteDeptServlet")
public class DeleteDeptServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//���ñ���
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		//�����
		PrintWriter out = response.getWriter();
		
		//��ò���id
		String deptId = request.getParameter("deptId");
		
		//����ҵ����
		DeptService service = new DeptService();
		
		try {
			service.deleteDept(Integer.parseInt(deptId));
		} catch (Exception e) {			
			e.printStackTrace();
		} 
		
		out.print("<script>alert('ɾ�����ųɹ���');location.href='QueryDeptServlet';</script>");

	}

}