package com.lyw.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lyw.bean.TBusiness;
import com.lyw.bean.TBusinessExample;
import com.lyw.service.TBusinessService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/tBusiness")
public class TBusinessController {
    @Autowired
    private TBusinessService tBusinessService;

    @RequestMapping("/selectTwoTable")
    @ResponseBody // 没这个注解，不返回给前端json数据！！
    public Map selectTwoTable (){
        List<Map> maps = tBusinessService.selectTwoTable();
        Map codeMap = new HashMap();
        codeMap.put("code",0);
        codeMap.put("data",maps);
        return codeMap;
    }

    // 增加
    @RequestMapping("/insert")  // /tBusiness/insert
    @ResponseBody                           //tBusiness
    public Map insert( @RequestBody TBusiness tBusiness){
        System.out.println("tBusiness = " + tBusiness);
        Map codeMap = new HashMap();
        int i = tBusinessService.insertSelective(tBusiness);
        if (i==1){
            codeMap.put("code",0);
            codeMap.put("msg","添加成功");
        }else{
            codeMap.put("code",400);
            codeMap.put("msg","添加失败");
        }
        return  codeMap;
    }


    // 删除一条数据
    @RequestMapping("/del")
    @ResponseBody
    public int del(Integer id){
//        TBusinessExample example = new TBusinessExample();
//        TBusinessExample.Criteria criteria = example.createCriteria();
//            criteria.andBidEqualTo(1);
        int delete = tBusinessService.delete(id);
        System.out.println("delete = " + delete);
        return delete;
    }
    // 分页
    @ResponseBody
    @RequestMapping("/selectByPage")  // /tBusiness/selectByPage
    public Map selectByPage(@RequestParam(defaultValue = "1" , required = true,name = "page")  Integer page,
                            @RequestParam(defaultValue = "3" , required = true,name = "pageSize")  Integer pageSize){
        // 该分页可以分多表查询， 牛！！！！ 红红。。
        // 分页第一种方法， 仅限于 mybaits ！
        // 使用的是 pageHelper 分页， 基于 aop 拦截
        // page 是当前页， 默认值是1  , pageSize 是值得条数
        // 如果没有动态查询， 直接让  expamle 为 null 就可以了
        PageHelper.startPage(page,pageSize); // 这个pagehelper 拿到前端 的 参数      ！！  11
        List<TBusiness> tBusinesses = tBusinessService.selectByExample(null); // 查询全部的数据
        PageInfo<TBusiness> pageInfo = new PageInfo<>(tBusinesses); // pagehelper 进行拦截 222
        long total = pageInfo.getTotal();// 拿到总条数
        Map codeMap = new HashMap();
        codeMap.put("code",0);
        codeMap.put("data",pageInfo);
        codeMap.put("total",total);

        return codeMap;

    }

}
