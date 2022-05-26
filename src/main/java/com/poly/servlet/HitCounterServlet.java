package com.poly.servlet;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;


import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

/**
 * Servlet implementation class HitCounterServlet
 */
@WebServlet("/hitCounterServlet")
public class HitCounterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private int counter;
	Path path;// = Paths.get("c:/FileNew/count.txt");

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		System.out.println("service() in T" + Thread.currentThread().getId());
		counter++;
		res.getWriter().println("counter: " + counter);
		req.setAttribute("counter", counter);
		req.getRequestDispatcher("/views/hit-counter.jsp").forward(req, res);
	}

	@Override
	public void destroy() {
		try {
			Files.write(path, String.valueOf(counter).getBytes(), StandardOpenOption.WRITE);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		System.out.println("destroy() in T" + Thread.currentThread().getId());
	}

	@Override
	public void init() throws ServletException {
		path = Paths.get(getServletContext().getRealPath("/views/count.txt"));
		try {
			counter = Integer.parseInt(Files.readAllLines(path).get(0));
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		System.out.println("init() in T" + Thread.currentThread().getId());
	}

}
