package servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by rohanayub on 1/17/17.
 */
@WebServlet(name = "daysLeftInYear" , urlPatterns = "/dateLeft")
public class daysLeftInYear extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String curDate = request.getParameter("currentDay");
        SimpleDateFormat simpleTodayDate = new SimpleDateFormat("yyyy-MM-dd");
        Date todayDate = null;
        try {
            todayDate = simpleTodayDate.parse(curDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        long longCurDate = todayDate.getTime();

        String newYear = "2018-01-01";
        SimpleDateFormat simpleNewYear = new SimpleDateFormat("yyyy-MM-dd");
        Date  newYears = null;
        try{
            newYears = simpleNewYear.parse(newYear);
        } catch (ParseException e){
            e.printStackTrace();
        }
        long longNewYear = newYears.getTime();


        long timeBetween = longNewYear - longCurDate;

        long daysUntilNewYear = timeBetween / (1000 * 60 * 60 * 24);

        request.setAttribute("daysLeft" , daysUntilNewYear);

        String nextJSP = "/yearsEnd.jsp";
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
        dispatcher.forward(request,response);
    }




    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
