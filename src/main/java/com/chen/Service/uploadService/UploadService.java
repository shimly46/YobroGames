package com.chen.Service.uploadService;

import com.chen.config.MyStaticProperties;
import com.chen.pojo.UploadResp;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

@Service
public class UploadService {

    @Value("${index.static.properties.avatar}")
    private String avatarPath;

    @Value("${index.static.properties.topicPicture}")
    private String topicPicturePath;

    public UploadResp upload(MultipartFile file, Boolean ifAvatar) { //The default is the avatar, and false is the cover
        if (file.isEmpty()) {
            return new UploadResp("400", "file null");
        }
        String originalFilename = file.getOriginalFilename();
        String fileName = System.currentTimeMillis() + "." + originalFilename.substring(originalFilename.lastIndexOf(".") + 1);
        String filePath = "";
        if (ifAvatar){
            //filePath = "D:/github/layui/src/main/resources/static/img/avatar/";
            //filePath = "/www/wwwroot/images/avatar/";
            filePath = avatarPath;
        } else {
            //filePath = "D:/github/layui/src/main/resources/static/images/topicPicture/";
            //filePath = "/www/wwwroot/images/topicPicture/";
            filePath = topicPicturePath;
        }
        File dest = new File(filePath + fileName);
        if (!dest.getParentFile().exists()) {
            dest.getParentFile().mkdirs();
        }
        try {
            file.transferTo(dest);
        } catch (IOException e) {
            e.printStackTrace();
            return new UploadResp("500", "submit failed！");
        }
        return new UploadResp("200", "submit succeed！", fileName);
    }
}