package com.qf.controller;

import com.qf.pojo.Shop;
import com.qf.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/shop")
public class ShopController {
    @Autowired
    private ShopService shopService;
    private static List<Shop> list = new ArrayList();

    @RequestMapping("/findAll")
    public String findAllShop(Model model){
        List<Shop> list = shopService.getAllShop();
        model.addAttribute("list",list) ;
        return "shop_list";
    }

    @RequestMapping("/del")
    public String deleteShop(int shop_id){
        Shop shop = list.remove(shop_id - 1);
        return "redirect:/shop/findAll";
    }

    @RequestMapping("/update")
    public String updataShop(Shop shop){

        return "redirect:/shop/findAll";
    }
}
