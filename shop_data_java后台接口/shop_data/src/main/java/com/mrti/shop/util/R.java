package com.mrti.shop.util;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * author:Lemon
 * ClassName: com.mrti.shop.common.shop_data
 * CreateTime: 2022/04/03 17:32
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ApiModel(value="封装统一返回数据格式", description="封装统一返回数据格式")
public class R {
    // 状态
    @ApiModelProperty(value = "状态")
    private long status;
    // 描述
    @ApiModelProperty(value = "描述")
    private String describe ;
    // 数据
    @ApiModelProperty(value = "数据")
    private Object message;


    // 成功的数据结构封装
    public static R success(String describe){
        return new R(200,describe,null);
    }
    // 成功的数据结构封装 带对象数据
    public static R success(String describe,Object message){
        return new R(200,describe,message);
    }


    // 失败返回的数据
    public static R error(String message){
        return new R(500,message,null);
    }
    // 败返回的数据 带对象数据
    public static R error(String describe, Object message){
        return new R(500,describe,message);
    }
}
