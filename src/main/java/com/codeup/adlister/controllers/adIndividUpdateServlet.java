package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;



@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ad_individ/ad/update")
public class adIndividUpdateServlet extends HttpServlet {
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws ServletException, IOException {
        String id = request.getParameter("id");
        request.setAttribute("ads", DaoFactory.getAdsDao().specAd(id));
        request.getRequestDispatcher("/WEB-INF/ads/adUpdate.jsp").forward(request, response);
    }
}

