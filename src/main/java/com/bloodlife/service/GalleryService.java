package com.bloodlife.service;

import com.bloodlife.models.Gallery;

import java.util.List;

public interface GalleryService {

    public void saveImage(Gallery galleryObj);
    public Gallery findById(long id);
    public List<Gallery> findAll();
}
