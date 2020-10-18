package db;

import domain.Product;

public interface IProductRepository {
    Product queryOne(String sql);
    Product findByID(int id);
}
