package db;

import domain.Product;

import javax.ws.rs.BadRequestException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class ProductRepository implements IProductRepository {
//тут все что я использовала для продуктов
    private IDBRepository dbrepo = new PostgresRepository();
    public static List<Product> ls = new ArrayList<>();

    public int update(Product info){
        for (int i = 0; i< ls.size();i++){
            if(Objects.equals(ls.get(i).getProductid(), info.getProductid())){
                ls.set(i, info);
                return i;
            }
        }
        return -1;
    }

    public int save(Product info){
        ls.add(info);
        return 1;
    }

    public int delete(int id){
        Product info = findByID(id);
        if (info != null){
            ls.remove(info);
            return 1;
        }
        return 0;
    }

    public void defData(){
        ls.add(new Product(30, "GG", "2222", "img-1.jpg", "person"));
        ls.add(new Product(31, "GZ", "2232", "img-2.jpg", "person"));
        ls.add(new Product(32, "ZZ", "2242", "img-3.jpg", "person"));
    }

    public List<Product> getLs() {
        defData();
        return ls;
    }

    @Override
    public Product queryOne(String sql) {
        try {
            Statement stmt = dbrepo.getConnection().createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            if (rs.next()) {
                return new Product(
                        rs.getInt("productid"),
                        rs.getString("productname"),
                        rs.getString("price"),
                        rs.getString("image"),
                        rs.getString("categoryid")
                );
            }
        } catch (SQLException ex) {
            throw new BadRequestException("Cannot run SQL statement: " + ex.getMessage());
        }
        return null;
    }

    @Override
    public Product findByID(int id) {
        for(Product info : ls){
            if(Objects.equals(info.getProductid(), id)){
                return info;
            }
        }
        return null;
    }

}
