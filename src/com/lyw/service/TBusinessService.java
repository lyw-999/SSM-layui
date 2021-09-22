package com.lyw.service;

import com.lyw.bean.TBusiness;
import com.lyw.bean.TBusinessExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface TBusinessService {
   
    long countByExample(TBusinessExample example);

    int deleteByExample(TBusinessExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TBusiness record);

    int insertSelective(TBusiness record);

    List<TBusiness> selectByExample(TBusinessExample example);

    TBusiness selectByPrimaryKey(Integer id);
  
    int updateByExampleSelective(@Param("record") TBusiness record, @Param("example") TBusinessExample example);

    int updateByExample(@Param("record") TBusiness record, @Param("example") TBusinessExample example);

    int updateByPrimaryKeySelective(TBusiness record);

    int updateByPrimaryKey(TBusiness record);

    // 2表联查， 因为是将N张表显示到  一张表格中， 就要用到 map， 不是用的 1对多，这些东西
    List<Map> selectTwoTable();


    // 根据id 删除
    int delete(Integer id);
}
