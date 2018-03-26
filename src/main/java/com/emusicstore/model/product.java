package com.emusicstore.model;



import com.fasterxml.jackson.annotation.JsonIgnore;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import java.io.Serializable;
import java.util.List;

@Entity  //tell Spring that java class is a Entity which we want to store in the database
public class product implements Serializable{


    private static final long serialVersionUID = 6026648957592593803L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)  //auto generate id in sequence order like 1,2,3...
    private int productId;

    @NotEmpty (message = "Not Empty!")
    private String productName;
    private String productCategory;
    private String productDescription;

    @Min(value = 0,message = "Not less than zero!")
    private double productPrice;
    private String productCondition;
    private String productStatus;

    @Min(value = 0,message = "Not less than zero!")
    private int unitInStock;
    private String productManufacturer;

    @Transient
    private MultipartFile productImage;

    @OneToMany(mappedBy = "product",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @JsonIgnore
    private List<CartItem> cartItemList;


    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductManufacturer() {
        return productManufacturer;
    }

    public void setProductManufacturer(String productManufacturer) {
        this.productManufacturer = productManufacturer;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductCondition() {
        return productCondition;
    }

    public void setProductCondition(String productCondition) {
        this.productCondition = productCondition;
    }

    public String getProductStatus() {
        return productStatus;
    }

    public void setProductStatus(String productStatus) {
        this.productStatus = productStatus;
    }

    public int getUnitInStock() {
        return unitInStock;
    }

    public void setUnitInStock(int unitInStock) {
        this.unitInStock = unitInStock;
    }

    public MultipartFile getProductImage() {
        return productImage;
    }

    public void setProductImage(MultipartFile productImage) {
        this.productImage = productImage;
    }

    public List<CartItem> getCartItemList() {
        return cartItemList;
    }

    public void setCartItemList(List<CartItem> cartItemList) {
        this.cartItemList = cartItemList;
    }
}
