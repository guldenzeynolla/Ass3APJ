package domain;

public class Product {
    private int productid;
    private String productname;
    private String price;
    private byte[] image;
    private String categoryid;

    public int getProductid() {
        return productid;
    }

    public void setProductid(int productid) {
        this.productid = productid;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    public String getCategoryid() {
        return categoryid;
    }

    public void setCategoryid(String categoryid) {
        this.categoryid = categoryid;
    }

    public Product(int productid, String productname, String price, byte[] image, String categoryid) {
        this.productid = productid;
        this.productname = productname;
        this.price = price;
        this.image = image;
        this.categoryid = categoryid;
    }
}
