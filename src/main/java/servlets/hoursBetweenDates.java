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
@WebServlet(name = "hoursBetweenDates" , urlPatterns="/hoursBetweenTwoDates")
public class hoursBetweenDates extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String dateOne = request.getParameter("dayOne");
        SimpleDateFormat simpleTodayDate = new SimpleDateFormat("yyyy-MM-dd");
        Date parseDateOne = null;
        try {
            parseDateOne = simpleTodayDate.parse(dateOne);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        long longDateOne = parseDateOne.getTime();

        String dateTwo = request.getParameter("dayTwo");
        SimpleDateFormat simpleNewYear = new SimpleDateFormat("yyyy-MM-dd");
        Date  parseDateTwo = null;
        try{
            parseDateTwo = simpleNewYear.parse(dateTwo);
        } catch (ParseException e){
            e.printStackTrace();
        }
        long longDateTwo = parseDateTwo.getTime();


        long timeBetween =  longDateTwo - longDateOne;

        long hoursBetweenDates = timeBetween / (1000 * 60 * 60);

        request.setAttribute("hours" , hoursBetweenDates);

        String nextJSP = "/hoursOutput.jsp";
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
        dispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
