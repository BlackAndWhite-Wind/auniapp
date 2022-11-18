package com.mrti.shop.service.impl;

import com.mrti.shop.pojo.Information;
import com.mrti.shop.mapper.InformationMapper;
import com.mrti.shop.service.IInformationService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 资讯列表 服务实现类
 * </p>
 *
 * @author mrti
 * @since 2022-04-03
 */
@Service
public class InformationServiceImpl extends ServiceImpl<InformationMapper, Information> implements IInformationService {

}
