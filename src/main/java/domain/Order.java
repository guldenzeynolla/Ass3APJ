package domain;

public class Order {
    private int orderid;
    private int userid;
    private int productid ;
    private int productQuntity ;
    private int orderPrice ;

    public Order(int userid, int productid, int productQuntity, int orderPrice) {
        super();
        this.userid = userid;
        this.productid = productid;
        this.productQuntity = productQuntity;
        this.orderPrice = orderPrice;
    }

    public Order(int orderid, int userid, int productid, int productQuntity, int orderPrice) {
        super();
        this.orderid = orderid;
        this.userid = userid;
        this.productid = productid;
        this.productQuntity = productQuntity;
        this.orderPrice = orderPrice;
    }
    public int getOrderid() {
        return orderid;
    }

    public void setOrderid(int orderid) {
        this.orderid = orderid;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getProductid() {
        return productid;
    }

    public void setProductid(int productid) {
        this.productid = productid;
    }

    public int getProductQuntity() {
        return productQuntity;
    }

    public void setProductQuntity(int productQuntity) {
        this.productQuntity = productQuntity;
    }

    public int getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(int orderPrice) {
        this.orderPrice = orderPrice;
    }


}
