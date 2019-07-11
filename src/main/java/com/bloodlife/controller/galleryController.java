package com.bloodlife.controller;

import com.bloodlife.models.Gallery;
import com.bloodlife.service.GalleryService;
import com.bloodlife.utility.AmazonClient;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class galleryController {

    @Autowired
    galleryController(AmazonClient amazonClient) {
        this.amazonClient = amazonClient;
    }


    @Autowired
     AmazonClient amazonClient;

    @Autowired
    GalleryService galleryService;

    @PostMapping("/uploadFile")
    public Map<String, Object> uploadFile(@RequestPart(value = "file") MultipartFile file) {
        Map<String,Object> response = new HashMap<>();
        try{
           String link = this.amazonClient.uploadFile(file);
             link=link.replace("com//bloodlife","com");
            link=link.replace("http","https");
           response.put("status",200);
           response.put("link",link);
            return response;
        }catch(Exception ex){
            ex.printStackTrace();
            return response;
        }

    }

    @RequestMapping(value = "/saveImageDetails", method=RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> saveImageDetails(@RequestBody Gallery gallery) {
        Map<String,Object> response = new HashMap<>();
        try{
            galleryService.saveImage(gallery);
            response.put("status",200);
            return response;
        }catch(Exception ex){
            ex.printStackTrace();
            return response;
        }

    }

    @DeleteMapping("/deleteFile")
    public String deleteFile(@RequestPart(value = "url") String fileUrl) {
        return this.amazonClient.deleteFileFromS3Bucket(fileUrl);
    }


    @RequestMapping(value = "/getAllPhotos", method=RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> getAllPhotos() {
        Map<String,Object> response = new HashMap<>();
        try{
            List<Gallery> galleryList = galleryService.findAll();
            response.put("status",200);
            response.put("data",galleryList);
            return response;
        }catch(Exception ex){
            ex.printStackTrace();
            response.put("error",ex.getLocalizedMessage());
            return response;
        }
    }

    @RequestMapping(value = "/deletePhoto", method=RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> deletePhoto(@RequestParam (value = "photoId") long photoId) {
        Map<String,Object> response = new HashMap<>();
        try{
            Gallery gallery = galleryService.findById(photoId);
            boolean result = galleryService.deleteById(photoId);
            response.put("status",200);
            response.put("data",result);
            return response;
        }catch(Exception ex){
            ex.printStackTrace();
            response.put("error",ex.getLocalizedMessage());
            return response;
        }

    }

}