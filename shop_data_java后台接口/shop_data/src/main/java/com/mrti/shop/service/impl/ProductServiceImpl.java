package com.mrti.shop.service.impl;

import com.mrti.shop.pojo.Product;
import com.mrti.shop.mapper.ProductMapper;
import com.mrti.shop.service.IProductService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 商品列表 服务实现类
 * </p>
 *
 * @author mrti
 * @since 2022-04-03
 */
@Service
public class ProductServiceImpl extends ServiceImpl<ProductMapper, Product> implements IProductService {

}
