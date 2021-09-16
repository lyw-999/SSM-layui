package com.lyw.controller;

import com.lyw.bean.Type;
import com.lyw.bean.TypeExample;
import com.lyw.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/type")
public class TypeController {

    @Autowired
    private TypeService service;

    //  写一个全查的 数据接口给 前端 下拉框使用 对应的全查
    @RequestMapping("/selectAll")
    @ResponseBody
    public Map selectAll(){
//        TypeExample example = new TypeExample();
//        TypeExample.Criteria criteria = example.createCriteria();
        List<Type> types = service.selectByExample(null);
        Map codeMap = new HashMap();
        codeMap.put("code",0);
        codeMap.put("data",types);
        return codeMap;
    }
}
