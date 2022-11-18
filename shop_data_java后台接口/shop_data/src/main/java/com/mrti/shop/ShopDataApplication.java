package com.mrti.shop;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * author:Lemon
 * ClassName: com.mrti.shop.shop_data
 * CreateTime: 2022/04/03 17:31
 */
@SpringBootApplication
@MapperScan("com.mrti.shop.mapper") //扫描到所有数据访问包
public class ShopDataApplication {
    public static void main(String[] args) {
        SpringApplication.run(ShopDataApplication.class,args);
    }
}
