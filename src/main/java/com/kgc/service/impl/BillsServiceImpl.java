package com.kgc.service.impl;

import com.kgc.mapper.BillsMapper;
import com.kgc.mapper.TypeMapper;
import com.kgc.pojo.Bills;
import com.kgc.pojo.BillsExample;
import com.kgc.pojo.Type;
import com.kgc.pojo.TypeExample;
import com.kgc.service.BillsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author 张康硕
 * @create 2020-10-05 17:57
 */
@Service("billsService")
public class BillsServiceImpl implements BillsService {
    @Resource
    BillsMapper billsMapper;
    @Resource
    TypeMapper typeMapper;
    @Override
    public List<Bills> getlist() {
        BillsExample example=new BillsExample();
        BillsExample.Criteria criteria=example.createCriteria();

        List<Bills> bills=billsMapper.selectByExample(example);

        return bills;
    }

    @Override
    public int add(Bills bills) {
        int i=billsMapper.insertSelective(bills);
        return i;
    }

    @Override
    public List<Type> typs() {
        TypeExample example=new TypeExample();
        TypeExample.Criteria criteria=example.createCriteria();
        List<Type> types=typeMapper.selectByExample(example);
        return types;
    }
}
