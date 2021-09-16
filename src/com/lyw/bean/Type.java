package com.lyw.bean;

import java.io.Serializable;

/**
 * t_type
 * @author 
 */
public class Type implements Serializable {
    private Integer typeId;

    private String typeName;

    private static final long serialVersionUID = 1L;

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }
}