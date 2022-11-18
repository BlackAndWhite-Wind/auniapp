package com.mrti.shop.shop;

import com.mrti.shop.pojo.PictureCategory;
import com.mrti.shop.service.IPictureCategoryService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class GetDataTests {
    @Autowired
    private IPictureCategoryService pictureCategoryService;
    @Test
    void data() {
        for (PictureCategory pictureCategory : pictureCategoryService.list()) {
            System.out.println(pictureCategory.toString());
        }
    }

}
