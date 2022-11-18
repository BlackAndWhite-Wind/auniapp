package com.mrti.shop.pojo;

import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 轮播图
 * </p>
 *
 * @author mrti
 * @since 2022-04-03
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@ApiModel(value="Slideshow对象", description="轮播图")
public class Slideshow implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;

    private String url;

    private String img;


}
