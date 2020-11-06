package view;

import model.Products;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Products> products;

    static {
        products = new HashMap<>();
        products.put(1, new Products(1,"Samsung Note 10+",17000000,"Full phụ kiện","Samsung"));
        products.put(2, new Products(2,"Iphone 11 Pro",27000000,"Full phụ kiện","Apple"));
        products.put(3, new Products(3,"Bphone B86",7900000,"Full phụ kiện","BKAV"));
        products.put(4, new Products(4,"Xiaomi Redmi Note 9 Pro",6900000,"Full phụ kiện","Xiaomi"));

    }

    @Override
    public List<Products> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Products product) {
        products.put(product.getId(), product);
    }

    @Override
    public Products findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Products product) {
        products.put(id,product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
