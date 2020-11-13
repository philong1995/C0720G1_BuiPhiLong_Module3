package service;

import dao.CustomerDAO;
import dao.ICustomerDAO;
import model.Customer;

import java.sql.SQLException;
import java.util.List;

public class CustomerService implements ICustomerService {
    private ICustomerDAO customerDAO = new CustomerDAO();

    @Override
    public List<Customer> getAll() {
        return customerDAO.getAllCus();
    }

    @Override
    public void create(Customer customer) {
        customerDAO.createCus(customer);
    }

    @Override
    public void edit(Customer customer) throws SQLException {
        customerDAO.editCus(customer);
    }

    @Override
    public Customer getID(int id) {
        return customerDAO.getCusByID(id);
    }

    @Override
    public void delete(int id) throws SQLException {
        customerDAO.deleteCus(id);
    }

    @Override
    public List<Customer> findCus(String name) {
        return customerDAO.findByName(name);
    }
}
