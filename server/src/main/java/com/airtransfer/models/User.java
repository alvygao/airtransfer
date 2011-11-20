package com.airtransfer.models;

/**
 * User: Sergey
 * Date: 19.11.11 16:53
 */
public class User extends AbstractEntity {

    private Long id;
    private String name;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
