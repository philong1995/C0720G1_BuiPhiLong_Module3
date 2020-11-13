package dao;

import model.Customer;

import java.sql.SQLException;
import java.util.List;

public interface ICustomerDAO {
    List<Customer> getAllCus();

    void createCus(Customer customer);

    void deleteCus(int id) throws SQLException;

    void editCus(Customer customer) throws SQLException;

    Customer getCusByID(int id);

    List<Customer> findByName(String name);

}
