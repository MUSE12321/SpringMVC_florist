package cn.edu.lingnan.pojo;

import org.springframework.stereotype.Component;

@Component
public class Flower {
//商品
    private Integer id;
    private String name;
    private String type;
    private Integer stock;
    private Float price;
    private String floMean;
    private String photo;

    public Flower() {
    }

    public Flower(Integer id, String name, String type, Integer stock, Float price, String floMean, String photo) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.stock = stock;
        this.price = price;
        this.floMean = floMean;
        this.photo = photo;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public String getFloMean() {
        return floMean;
    }

    public void setFloMean(String floMean) {
        this.floMean = floMean;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    @Override
    public String toString() {
        return "Flower{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", stock=" + stock +
                ", price=" + price +
                ", floMean='" + floMean + '\'' +
                ", photo='" + photo + '\'' +
                '}';
    }

}
