package com.hxd.controller;

import com.hxd.domain.JsonResult;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * Created by hexudong on 2019/5/13 11:08
 */
@Controller
@RequestMapping("file")
public class FileController {

    /**
     * 上传图片
     */
    @RequestMapping("uploadFile")
    @ResponseBody
    public JsonResult uploadFile(@RequestParam("file") MultipartFile file, HttpServletRequest request){
        JsonResult jr = new JsonResult();
        //文件上传
        String oldFilename = file.getOriginalFilename();
        String newFilename = UUID.randomUUID().toString()+oldFilename.substring(oldFilename.lastIndexOf("."));
        String path = request.getSession().getServletContext().getRealPath("/upload");
        File headImgPath = new File(path);
        if(!headImgPath.exists()){
            headImgPath.mkdirs();
        }
        File file2 = new File(path+File.separator+newFilename);
        try {
            file.transferTo(file2);
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        String url = "/upload/"+newFilename;
        Map<String, String> map = new HashMap<String, String>();
        map.put("src", url);
        jr.setData(map);
        jr.setCode(0);
        jr.setMsg("添加成功");
        return jr;
    }

}
