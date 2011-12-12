package com.airtransfer.models;

import java.io.Serializable;

/**
 * User: sergey
 * Date: 2:50 PM 12/10/11
 */
public interface AbstractEntity<ID extends Serializable> extends Serializable {

    ID getId();

    void setId(ID id);

}
