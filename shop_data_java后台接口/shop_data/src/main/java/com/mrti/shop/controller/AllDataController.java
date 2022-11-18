package com.mrti.shop.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mrti.shop.mapper.InformationDetailMapper;
import com.mrti.shop.mapper.ProductMapper;
import com.mrti.shop.pojo.*;
import com.mrti.shop.service.*;
import com.mrti.shop.util.R;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

/**
 * <p>
 * 黑马商城uniapp所有数据 控制器
 * </p>
 *
 * @author mrti
 * @since 2022-04-03
 */

//接口文档预览地址   localhost:8090/doc.html
@RestController
@Api("黑马商城uniapp课程api接口数据")
public class AllDataController {
    @Autowired
    private ISlideshowService SlideshowService;
    @Autowired
    private ISlideshowDetailService SlideshowDetailService;
    @Autowired
    private IProductDetailService productDetailService;
    @Autowired
    private IDetailIntroduceService detailIntroduceService;
    @Autowired
    private IPictureCategoryService pictureCategoryService;
    @Autowired
    private ISecondCategoryService secondCategoryService;
    @Autowired
    private IInformationService informationService;
    @Autowired
    private IInformationDetailService informationDetailService;
    @Autowired
    private IProductService productService;



    @ApiOperation(value = "轮播图接口")
    @RequestMapping(value = "/getlunbo", method = RequestMethod.GET)
    public R getgoods() {
        List<Slideshow> list = SlideshowService.list();
        return R.success("轮播图数据获取成功", list);
    }


    /*******************************************************************************************
     * 分页获取商品列表，每页限制10条数据
     *
     * @param pageindex 前端页面传递来的页码值
     * @return
     */
    @ApiOperation(value = "获取商品列表/分页 ")
    @RequestMapping(value = "/getgoods", method = RequestMethod.GET)
    public R getlunbo(Long pageindex) {
        //lmbda表达式，接收传递的值如为空，默认为第一页。若有值则为传递的参数
        pageindex = pageindex == null ? 1 : pageindex;

        //page  参数1：当前页  参数2：每页显示条数,
        //此处已查询出分页数据信息 在records对象中
        IPage<Product> page = productService.page(new Page<>(pageindex,10));
        //将page中records中的分页数据以集合的形式，便于和文档数据保持一致。不处理返回的数据格式为message[records{id:'',xxxx}]
        List<Product> data = page.getRecords();
        // page.getTotal();
        return R.success("分页获取商品列表数据成功", data);

    }

    //************************************************************************************


    @ApiOperation(value = "详情轮播图")
    @RequestMapping(value = "/getthumimages/{id}", method = RequestMethod.GET)
    public R getthumimages(@PathVariable("id") Integer id) {
        // 两种形式都可获得详情轮播图数据
        // SlideshowDetail data = iSlideshowDetailService.getById(id);
        List<SlideshowDetail> data = SlideshowDetailService.list(new QueryWrapper<SlideshowDetail>().eq("id", id));
        if (data.size() < 1) {
            return R.success("暂未查询到相关数据", "null");
        }
        return R.success("详情轮播图数据获取成功", data);
    }

    @ApiOperation(value = "获取商品详情参数")
    @RequestMapping(value = "/getinfo/{id}", method = RequestMethod.GET)
    public R getinfo(@PathVariable("id") Integer id) {
        // 两种形式都可获得商品详情参数数据
        // ProductDetail data = productDetailService.getById(id);
        List<ProductDetail> data = productDetailService.list(new QueryWrapper<ProductDetail>().eq("id", id));
        if (data.size() < 1) {
            return R.success("暂未查询到相关数据", "null");
        }
        return R.success("获取商品详情参数成功", data);
    }

    @ApiOperation(value = "获取详细介绍")
    @RequestMapping(value = "/getdesc/{id}", method = RequestMethod.GET)
    public R getdesc(@PathVariable("id") Integer id) {
        // 两种形式都可获取详细介绍数据
        // DetailIntroduce data = detailIntroduceService.getById(id);
        List<DetailIntroduce> data = detailIntroduceService.list(new QueryWrapper<DetailIntroduce>().eq("id", id));
        if (data.size() < 1) {
            return R.success("暂未查询到相关数据", "null");
        }
        return R.success("获取详细介绍数据成功", data);
    }


    @ApiOperation(value = "获取图片分类")
    @RequestMapping(value = "/getimgcategory", method = RequestMethod.GET)
    public R getimgcategory() {
        List<PictureCategory> data = pictureCategoryService.list();
        return R.success("获取图片分类数据成功", data);
    }

    @ApiOperation(value = "二级图片列表")
    @RequestMapping(value = "/getimages", method = RequestMethod.GET)
    public R getimages(Integer id) {
        // 两种形式都可获得二级图片列表数据
        // SecondCategory data = secondCategoryService.getById(id);
        List<SecondCategory> data = secondCategoryService.list(new QueryWrapper<SecondCategory>().eq("id", id));
        if (data.size() < 1) {
            return R.success("暂未查询到相关数据", "null");
        }
        return R.success("获取二级图片列表数据成功", data);
    }

    @ApiOperation(value = "资讯列表")
    @RequestMapping(value = "/getnewslist", method = RequestMethod.GET)
    public R getnewslist() {
        List<Information> data = informationService.list();
        return R.success("获取资讯列表数据成功", data);
    }

    @ApiOperation(value = "资讯详情")
    @RequestMapping(value = "/getnew/{id}", method = RequestMethod.GET)
    public R getnew(@PathVariable("id") Integer id) {

        // 两种形式都可获取资讯详情数据
        // InformationDetail data = informationDetailService.getById(id);
        List<InformationDetail> data = informationDetailService.list(new QueryWrapper<InformationDetail>().eq("id", id));

        for (InformationDetail detail : data) {
            //每当调用此接口时  数据库对应的click值+1，类似于 浏览量+1
            informationDetailService.update(new UpdateWrapper<InformationDetail>().eq("id",id).set("click",detail.getClick()+1));
        }

        if (data.size() < 1) {
            return R.success("暂未查询到相关数据", "null");
        }

        return R.success("获取详细介绍数据成功", data);
    }

}
