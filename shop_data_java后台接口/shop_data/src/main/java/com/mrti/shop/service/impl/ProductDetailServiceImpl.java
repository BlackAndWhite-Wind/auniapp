package com.mrti.shop.service.impl;

import com.mrti.shop.pojo.ProductDetail;
import com.mrti.shop.mapper.ProductDetailMapper;
import com.mrti.shop.service.IProductDetailService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 商品的详情参数 服务实现类
 * </p>
 *
 * @author mrti
 * @since 2022-04-03
 */
@Service
public class ProductDetailServiceImpl extends ServiceImpl<ProductDetailMapper, ProductDetail> implements IProductDetailService {

}
