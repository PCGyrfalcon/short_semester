package com.kms.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ReadMessageServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		//servlet����
		ServletContext application = getServletContext();
		List<String> lms = null;
		lms = application.getAttribute("lms")==null? null : (List<String>)application.getAttribute("lms");
		PrintWriter out = resp.getWriter();
		for(Iterator iterator = lms.iterator();iterator.hasNext();) {
			String string = (String) iterator.next();
			out.write(string+"</br>");
		}
	}
}
