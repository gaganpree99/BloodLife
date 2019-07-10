package com.bloodlife.DAO;

import com.bloodlife.models.Gallery;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface GalleryRepository  extends CrudRepository<Gallery, Long> {

    public Gallery save(Gallery gallery);
    public Gallery findById(long id);
    public List<Gallery> findAll();
    public  void deleteById(long id);
}
