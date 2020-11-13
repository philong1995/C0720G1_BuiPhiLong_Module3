package controller;

import model.Customer;
import service.CustomerService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = "/customer")
public class CustomerServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private CustomerService customerService;

    public void init() {
        customerService = new CustomerService();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    createNewCus(request, response);
                    break;
                case "edit":
                    editCus(request, response);
                    break;
                case "find":
                    findCus(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void createNewCus(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String typeID = request.getParameter("typeID");
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String gender = request.getParameter("gender");
        String idCard =request.getParameter("idCard");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        Customer customer = new Customer(typeID,name,birthday,gender,idCard,phone,email,address);
        customerService.create(customer);
        response.sendRedirect("customer?action=listCus");
    }

    private void editCus(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        String typeID = request.getParameter("typeID");
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String gender = request.getParameter("gender");
        String idCard =request.getParameter("idCard");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        int id = Integer.parseInt(request.getParameter("id"));
        Customer customer = new Customer(id,typeID,name,birthday,gender,idCard,phone,email,address);
        customerService.edit(customer);
        response.sendRedirect("customer?action=listCus");
    }

    private void findCus(HttpServletRequest request, HttpServletResponse response){
        List<Customer> customerList = new ArrayList<>();
        String name = request.getParameter("name");
        customerList = customerService.findCus(name);
//        để truyền giá trị từ servlet sang jsp
        request.setAttribute("listCus", customerList);
        try {
            request.getRequestDispatcher("case_study/find.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        if (action == null){
            action = " ";
        }
        try {
            switch (action) {
                case "listCus":
                    listCustomer(request, response);
                    break;
                case "create":
                    createNewCusGET(request, response);
                    break;
                case "edit":
                    editCusGET(request, response);
                    break;
                case "delete":
                    deleteCus(request, response);
                    break;
                default:
                    screen(request, response);
                    break;
            }
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void screen (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/index.jsp");
        requestDispatcher.forward(request,response);
    }

    private void createNewCusGET(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("case_study/create.jsp");
        requestDispatcher.forward(request,response);
    }

    private void listCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customerList = customerService.getAll();
        request.setAttribute("listCus", customerList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("case_study/listCus.jsp");
        dispatcher.forward(request, response);
    }

    private void editCusGET(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Customer customer = customerService.getID(id);
        request.setAttribute("customer", customer);
        RequestDispatcher dispatcher = request.getRequestDispatcher("case_study/editCus.jsp");
        dispatcher.forward(request, response);
    }

    private void getAllCustomer(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("getAll", customerService.getAll());
        try {
            response.sendRedirect("customer?action=listCus");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteCus(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        customerService.delete(id);
        System.out.println(id);
        getAllCustomer(request, response);
    }
}
