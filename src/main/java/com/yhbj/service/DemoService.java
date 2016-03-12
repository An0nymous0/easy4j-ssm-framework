package com.yhbj.service;

import com.yhbj.mappper.DemoMapper;
import com.yhbj.model.Demo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by An0nymous on 16/3/12.
 */
@Service
public class DemoService {
    @Autowired
    DemoMapper demoMapper;

//    @Transactional(rollbackForClassName={"RuntimeException","Exception"})
    public List<Demo> selectAll(){
        return demoMapper.selectAll();
    }

}
