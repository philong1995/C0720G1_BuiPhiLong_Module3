package controller;

import model.Products;
import view.ProductService;
import view.ProductServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductsServlet", urlPatterns = "/products")
public class ProductsServlet extends HttpServlet {

    private ProductService dichVuSanPham = new ProductServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String luaChon = request.getParameter("luaChon");
        if(luaChon == null) {
            luaChon = "";
        }
        switch (luaChon){
            case "create":
                taoSanPham(request, response);
                break;
            case "edit":
                break;
            case "delete":
                break;
            default:
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String luaChon = request.getParameter("luaChon");
        if(luaChon == null){
            luaChon = "";
        }
        switch (luaChon){
            case "create":
                xemTaoSanPham(request, response);
                break;
            case "edit":
                break;
            case "delete":
                break;
            case "view":
                xemSanPham(request, response);
                break;
            default:
                danhSachSanPham(request, response);
                break;
        }
    }

    private void danhSachSanPham(HttpServletRequest request, HttpServletResponse response) {
        List<Products> sanPham = this.dichVuSanPham.findAll();
        request.setAttribute("timSanPham", sanPham);

        RequestDispatcher dispatcher = request.getRequestDispatcher("product/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void xemSanPham(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Products sanPham = this.dichVuSanPham.findById(id);
        RequestDispatcher dispatcher;
        if(sanPham == null){
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("xemSanPham", sanPham);
            dispatcher = request.getRequestDispatcher("product/view.jsp");
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void xemTaoSanPham(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/create.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void taoSanPham(HttpServletRequest request, HttpServletResponse response) {
        String tenSanPham = request.getParameter("tenSanPham");
        String giaSanPham = request.getParameter("giaSanPham");
        String moTa = request.getParameter("moTa");
        String hangSanXuat = request.getParameter("hangSanXuat");
        int id = dichVuSanPham.findAll().get(dichVuSanPham.findAll().size()-1).getId()+ 1;

        Products sanPham = new Products(id, tenSanPham, Double.parseDouble(giaSanPham), moTa,hangSanXuat);
        this.dichVuSanPham.save(sanPham);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/create.jsp");
        request.setAttribute("message", "Sản phẩm mới đã được tạo");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
