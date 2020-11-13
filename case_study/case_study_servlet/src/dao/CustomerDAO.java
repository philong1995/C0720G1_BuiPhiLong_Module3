package dao;

import model.Customer;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerDAO implements ICustomerDAO{

    String jdbcURL = "jdbc:mysql://localhost:3306/case_study";
    private String jdbcCustomername = "root";
    private String jdbcPassword = "12345678";

    private final String GET_ALL_CUSTOMER = "select * from case_study.customer;";
    private final String CREATE_CUSTOMER="INSERT INTO customer" + "(customer_type_id, customer_name, customer_birthday, customer_gender, customer_id_card, customer_phone, customer_email, customer_address)VALUES" + "(?,?,?,?,?,?,?,?)";
    private final String EDIT_CUSTOMER = "update customer set customer_type_id =?, customer_name=?, customer_birthday=?, customer_gender=?, customer_id_card=?, customer_phone=?, customer_email=?, customer_address=? where customer_id=?";
    private final String GET_BY_ID = "select customer_id, customer_type_id, customer_name, customer_birthday, customer_gender, customer_id_card, customer_phone, customer_email, customer_address from case_study.customer where customer_id=?";
    private final String DELETE_CUSTOMER = "delete from case_study.customer where customer_id=?;";
    private final String FIND_CUS_BY_NAME = "select * from case_study.customer where customer_name like ?";

    protected Connection getConnection(){
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL,jdbcCustomername,jdbcPassword);
        }catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }
    protected void closeConnection(){
        try {
            getConnection().close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Customer> getAllCus() {
        List<Customer> customers = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(GET_ALL_CUSTOMER)){
            ResultSet rs = statement.executeQuery();
            while (rs.next()){
                int id = rs.getInt("customer_id");
                String typeID;
                if(Integer.parseInt(rs.getString("customer_type_id")) == 1){
                    typeID = "Diamond";
                }else if(Integer.parseInt(rs.getString("customer_type_id")) == 2){
                    typeID = "Platinum";
                }else if(Integer.parseInt(rs.getString("customer_type_id")) == 3){
                    typeID = "Gold";
                }else if(Integer.parseInt(rs.getString("customer_type_id")) == 4){
                    typeID = "Silver";
                }else {
                    typeID = "Member";
                }
                String name = rs.getString("customer_name");
                String birthday =rs.getString("customer_birthday");
                String gender;
                if(Integer.parseInt(rs.getString("customer_gender")) == 0){
                    gender = "Male";
                }else {
                    gender = "Female";
                }
                String idCard =rs.getString("customer_id_card");
                String phone = rs.getString("customer_phone");
                String email = rs.getString("customer_email");
                String address = rs.getString("customer_address");
                Customer customer = new Customer(id,typeID,name,birthday,gender,idCard,phone,email,address);
                customers.add(customer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeConnection();
        }
        return customers;
    }

    @Override
    public void createCus(Customer customer) {
        Connection connection=getConnection();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement(CREATE_CUSTOMER);
            preparedStatement.setInt(1,Integer.parseInt(customer.getTypeID()));
            preparedStatement.setString(2,customer.getName());
            preparedStatement.setString(3,customer.getBirthday());
            preparedStatement.setInt(4,Integer.parseInt(customer.getGender()));
            preparedStatement.setString(5,customer.getIdCard());
            preparedStatement.setString(6,customer.getPhone());
            preparedStatement.setString(7,customer.getEmail());
            preparedStatement.setString(8,customer.getAddress());

            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteCus(int id) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_CUSTOMER)) {
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void editCus(Customer customer) throws SQLException {
        try (Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(EDIT_CUSTOMER)) {
            preparedStatement.setInt(1, Integer.parseInt(customer.getTypeID()));
            preparedStatement.setString(2, customer.getName());
            preparedStatement.setString(3, customer.getBirthday());
            preparedStatement.setInt(4, Integer.parseInt(customer.getGender()));
            preparedStatement.setString(5, customer.getIdCard());
            preparedStatement.setString(6, customer.getPhone());
            preparedStatement.setString(7, customer.getEmail());
            preparedStatement.setString(8, customer.getAddress());
            preparedStatement.setInt(9,customer.getId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Customer getCusByID(int id) {
        Customer customer = null;
        try (Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(GET_BY_ID)) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String typeID;
                if(Integer.parseInt(rs.getString("customer_type_id")) == 1){
                    typeID = "Diamond";
                }else if(Integer.parseInt(rs.getString("customer_type_id")) == 2){
                    typeID = "Platinum";
                }else if(Integer.parseInt(rs.getString("customer_type_id")) == 3){
                    typeID = "Gold";
                }else if(Integer.parseInt(rs.getString("customer_type_id")) == 4){
                    typeID = "Silver";
                }else {
                    typeID = "Member";
                }
                String name = rs.getString("customer_name");
                String birthday =rs.getString("customer_birthday");
                String gender;
                if(Integer.parseInt(rs.getString("customer_gender")) == 0){
                    gender = "Male";
                }else {
                    gender = "Female";
                }
                String idCard =rs.getString("customer_id_card");
                String phone = rs.getString("customer_phone");
                String email = rs.getString("customer_email");
                String address = rs.getString("customer_address");
                customer = new Customer(id,typeID,name,birthday,gender,idCard,phone,email,address);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customer;
    }

    @Override
    public List<Customer> findByName(String cusName) {
        List<Customer> customerList = new ArrayList<>();
        try (Connection connection= getConnection();
             PreparedStatement preparedStatement=connection.prepareStatement(FIND_CUS_BY_NAME)){
            preparedStatement.setString(1, "%"+cusName+"%");
//            Trả về một đối tượng ResultSet khi bạn thực thi câu lệnh SELECT.
            ResultSet resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
                int id=resultSet.getInt("customer_id");
                String typeID;
                if(Integer.parseInt(resultSet.getString("customer_type_id")) == 1){
                    typeID = "Diamond";
                }else if(Integer.parseInt(resultSet.getString("customer_type_id")) == 2){
                    typeID = "Platinum";
                }else if(Integer.parseInt(resultSet.getString("customer_type_id")) == 3){
                    typeID = "Gold";
                }else if(Integer.parseInt(resultSet.getString("customer_type_id")) == 4){
                    typeID = "Silver";
                }else {
                    typeID = "Member";
                }
                String name = resultSet.getString("customer_name");
                String birthday =resultSet.getString("customer_birthday");
                String gender;
                if(Integer.parseInt(resultSet.getString("customer_gender")) == 0){
                    gender = "Male";
                }else {
                    gender = "Female";
                }
                String idCard =resultSet.getString("customer_id_card");
                String phone = resultSet.getString("customer_phone");
                String email = resultSet.getString("customer_email");
                String address = resultSet.getString("customer_address");
                customerList.add(new Customer(id,typeID,name,birthday,gender,idCard,phone,email,address));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
    }
}
