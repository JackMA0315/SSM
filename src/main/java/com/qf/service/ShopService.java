package com.qf.service;

import com.qf.pojo.Shop;

import java.util.List;

public interface ShopService {

    List<Shop> getAllShop();

    void delShop(int shop_id);

    void insertShop(Shop shop);

    void updateShop(Shop shop);

}
