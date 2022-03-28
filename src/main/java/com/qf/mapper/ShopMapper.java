package com.qf.mapper;

import com.qf.pojo.Shop;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ShopMapper {

    List<Shop> findAll();

    void delShop(int shop_id);

    void insertShop(Shop shop);

    void updateShop(Shop shop);
}
