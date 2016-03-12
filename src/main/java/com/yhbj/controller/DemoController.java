package com.yhbj.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yhbj.model.Demo;
import com.yhbj.service.DemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by An0nymous on 16/3/12.
 */
@Controller
public class DemoController {
    @Autowired
    DemoService demoService;
    @RequestMapping("/")
    public String index(Model model,
                        @RequestParam(required = false, defaultValue = "1") int page,
                        @RequestParam(required = false, defaultValue = "10") int rows) {
        PageHelper.startPage(page, rows);
        List<Demo> demoList = demoService.selectAll();
        model.addAttribute("demoList",demoList);
        model.addAttribute("page",new PageInfo(demoList));
        return "index";
    }
}
