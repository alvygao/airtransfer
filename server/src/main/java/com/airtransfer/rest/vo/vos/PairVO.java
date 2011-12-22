package com.airtransfer.rest.vo.vos;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * User: Sergey
 * Date: 21.12.11 22:27
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.PROPERTY)
public class PairVO {

    private Long itemId;
    private String itemName;

    public PairVO() {
    }

    public PairVO(Long itemId, String itemName) {
        this.itemId = itemId;
        this.itemName = itemName;
    }

    public Long getItemId() {
        return itemId;
    }

    public void setItemId(Long itemId) {
        this.itemId = itemId;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }
}
