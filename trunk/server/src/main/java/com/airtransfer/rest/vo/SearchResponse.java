package com.airtransfer.rest.vo;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * User: Sergey
 * Date: 09.01.12 21:55
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.PROPERTY)
public class SearchResponse extends AbstractResponse {
    private String query;
    private String[] suggestions;
    private String[] data;

    public SearchResponse() {
    }

    public SearchResponse(String query) {
        this.query = query;
    }

    public String getQuery() {
        return query;
    }

    public void setQuery(String query) {
        this.query = query;
    }

    public String[] getSuggestions() {
        return suggestions;
    }

    public void setSuggestions(String[] suggestions) {
        this.suggestions = suggestions;
    }

    public String[] getData() {
        return data;
    }

    public void setData(String[] data) {
        this.data = data;
    }
}
