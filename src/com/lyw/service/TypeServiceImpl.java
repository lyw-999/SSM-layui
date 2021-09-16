package com.lyw.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lyw.bean.TypeExample;
import com.lyw.bean.Type;
import com.lyw.dao.TypeDAO;
@Service("TypeService")
public class TypeServiceImpl implements TypeService {
	@Autowired(required = false)
	private TypeDAO TypeDAO;
	public long countByExample(TypeExample example){
    	return TypeDAO.countByExample(example);
    }

	public int deleteByExample(TypeExample example){
    	return TypeDAO.deleteByExample(example);
    }

	public int deleteByPrimaryKey(Integer id){
    	return TypeDAO.deleteByPrimaryKey(id);
    }

	public int insert(Type record){
    	return TypeDAO.insert(record);
    }

	public int insertSelective(Type record){
    	return TypeDAO.insertSelective(record);
    }

	public List<Type> selectByExample(TypeExample example){
    	return TypeDAO.selectByExample(example);
    }

	public Type selectByPrimaryKey(Integer id){
    	return TypeDAO.selectByPrimaryKey(id);
    }
  
	public int updateByExampleSelective(Type record, TypeExample example){
    	return TypeDAO.updateByExampleSelective(record, example);
    }

	public int updateByExample(Type record, TypeExample example){
    	return TypeDAO.updateByExample(record, example);
    }

	public int updateByPrimaryKeySelective(Type record){
    	return TypeDAO.updateByPrimaryKeySelective(record);
    }

	public int updateByPrimaryKey(Type record){
    	return TypeDAO.updateByPrimaryKey(record);
    }


}
