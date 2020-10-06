package com.kgc.service;

import com.kgc.pojo.Bills;
import com.kgc.pojo.Type;

import java.util.List;

/**
 * @author 张康硕
 * @create 2020-10-05 17:57
 */
public interface BillsService {
    List<Bills> getlist();

    int add(Bills bills);

    List<Type> typs();
}
