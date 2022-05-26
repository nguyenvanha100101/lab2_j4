package com.poly.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TamGiacServlet
 */
@WebServlet({ "/tam-giac", "/dien-tich", "/chu-vi" })
public class TamGiacServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/views/tam-giac.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		double a = Double.parseDouble(request.getParameter("a"));
		double b = Double.parseDouble(request.getParameter("b"));
		double c = Double.parseDouble(request.getParameter("c"));
		String uri = request.getRequestURI();
		if ((a + b > c) && (a + c > b) && (b + c > a)) {
			if (uri.contains("dien-tich")) {
				request.setAttribute("message","Diện tích tam giác là: "+ dientich(a, b, c));
			} else {
				request.setAttribute("message", "Chu vi tam giác là: "+chuvi(a, b, c));
			}

		} else {
			request.setAttribute("message", "Không thỏa mãn các cạnh của một tam giác!");
		}
		request.getRequestDispatcher("/views/tam-giac.jsp").forward(request, response);
	}

	private double chuvi(double a, double b, double c) {
		return (a + b + c);
	}

	
	private float dientich(double a, double b, double c) {
		double p = ((a + b + c) / 2);
		float dt = (float) Math.sqrt(p * (p - a) * (p - b) * (p - c));
		return dt;
	}

}
