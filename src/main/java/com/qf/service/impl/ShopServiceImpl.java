package com.qf.service.impl;

import com.qf.mapper.ShopMapper;
import com.qf.pojo.Shop;
import com.qf.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class ShopServiceImpl implements ShopService {
    @Autowired
    private ShopMapper shopMapper;
    @Override
    public List<Shop> getAllShop() {
        List<Shop> list = shopMapper.findAll();
        if(list != null){
            return list;
        }
        return null;
    }

    @Override
    public void delShop(int shop_id) {
        shopMapper.delShop(shop_id);
    }

    @Override
    public void insertShop(Shop shop) {
        shopMapper.insertShop(shop);
    }

    @Override
    public void updateShop(Shop shop) {
        shopMapper.updateShop(shop);
    }
}
