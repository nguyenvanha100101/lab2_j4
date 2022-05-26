package com.poly.servlet;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DangKiServlet
 */
@WebServlet("/dang-ky")
public class DangKyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/views/dangky/form.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
		boolean married = (request.getParameter("married") != null);
		String country = request.getParameter("country");
	
		request.setAttribute("username" + username, country);
		System.out.println("username: " + username);
		request.setAttribute("gender" + gender, country);
		System.out.println("gender: " + gender);
		request.setAttribute("married: " + married, country);
		System.out.println("married: " + married);
		request.setAttribute("country: " + country, country);
		System.out.println("country: " + country);
		String[] hobbies = request.getParameterValues("hobbies");
		request.setAttribute("hobbies",String.join(";", hobbies));
		System.out.println("hobbies: " + Arrays.toString(hobbies));
		
		request.getRequestDispatcher("/views/dangky/result.jsp").forward(request, response);
	}

}
