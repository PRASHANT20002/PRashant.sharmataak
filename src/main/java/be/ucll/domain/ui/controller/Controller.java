package be.ucll.domain.ui.controller;

import be.ucll.domain.db.EntertainmentDB;
import be.ucll.domain.model.Entertainment;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
    private final EntertainmentDB db = new EntertainmentDB();
    public Controller() {
        super();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String command = "home";
        if (request.getParameter("command") != null) {
            command = request.getParameter("command");
        }
        String destination;
        switch (command) {
            case "index":
                destination = index(request, response);
                break;

            case "voegtoe":
                destination = voegtoe(request, response);
                break;
            case "overzicht":
                destination = overzicht(request, response);
                break;

            case "submit":
                destination = submit(request, response);
                break;
            case "showresult":
                destination = showresult(request,response);
                break;
                case "searchForm":
                destination= searchForm(request,response);
                break;
            default:
                destination = index(request, response);

        }
        request.getRequestDispatcher(destination).forward(request, response);
    }

    private String showresult(HttpServletRequest request, HttpServletResponse response) {
        String naam = request.getParameter("naamSearch");
        request.setAttribute("entertainment",db.vind(naam));
        return "result.jsp";
    }

    private String searchForm(HttpServletRequest request, HttpServletResponse response) {
    return "searchForm.jsp";
    }

    private String overzicht(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("entertainments", db.getAll());
        return "overzicht.jsp";
    }


    private String submit(HttpServletRequest request, HttpServletResponse response) {
      String naam= request.getParameter("naam1");
      String type= request.getParameter("type1");
      String genre= request.getParameter("genre1");
      String seizoen= request.getParameter("seizoenen1");

      Entertainment entertainment = new Entertainment();
      entertainment.setNaam(naam);
      entertainment.setType(type);
      entertainment.setGenre(genre);
      entertainment.setSeizoenen(Integer.parseInt(seizoen));
      db.voegToe(entertainment);
      return overzicht(request,response);
    }


    private String voegtoe(HttpServletRequest request, HttpServletResponse response) {

        return "Voegtoe.jsp";
    }

    private String index(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("meesteSeizoenen", db.getMeesteSeizoenen());
        return "index.jsp";
    }


}
