package service;

import model.Customer;

import java.sql.SQLException;
import java.util.List;

public interface ICustomerService {
    List<Customer> getAll();

    void create(Customer customer);

    void edit(Customer customer) throws SQLException;

    Customer getID(int id);

    void delete(int id) throws SQLException;

    List<Customer> findCus(String name);
}
