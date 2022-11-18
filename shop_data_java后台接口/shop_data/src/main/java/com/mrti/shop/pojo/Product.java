package com.mrti.shop.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 商品列表
 * </p>
 *
 * @author mrti
 * @since 2022-04-03
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@ApiModel(value="Product对象", description="商品列表")
public class Product implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @TableField("add_time")
    //json日期格式转换
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private LocalDateTime addTime;

    private String title;

    private String zhaiyao;

    @ApiModelProperty(value = "图片引用地址")
    @TableField("img_url")
    private String imgUrl;

    @ApiModelProperty(value = "现价")
    @TableField("sell_price")
    private String sellPrice;

    @ApiModelProperty(value = "原价")
    @TableField("market_price")
    private String marketPrice;

    @ApiModelProperty(value = "库存")
    @TableField("stock_quantity")
    private Integer stockQuantity;


}
