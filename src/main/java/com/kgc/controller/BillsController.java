package com.kgc.controller;

import com.kgc.pojo.Bills;
import com.kgc.pojo.Type;
import com.kgc.service.BillsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author 张康硕
 * @create 2020-10-05 17:56
 */
@Controller
public class BillsController {
    @Resource
    BillsService billsService;
    @RequestMapping("/")
    public String select(Model model){
        List<Bills> bills=billsService.getlist();
        model.addAttribute("bills",bills);
        return "select";
    }

    @RequestMapping("/doselect")
    public String doselect(Model model) {
        List<Type> types =billsService.typs();
        model.addAttribute("types", types);
        return "/jsp/select";
    }

    @RequestMapping("/toadd")
    public  String toadd(){
        return "/jsp/add";
    }
}
