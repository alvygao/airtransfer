package com.airtransfer.models;

import javax.persistence.*;
import java.util.Date;

/**
 * User: Sergey
 * Date: 17.11.11 22:54
 */
@MappedSuperclass
public abstract class BaseEntity implements AbstractEntity<Long> {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    protected Long id;
    @Column(name = "created", columnDefinition = "DATETIME")
    protected Date created;

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long aLong) {
        this.id = aLong;
    }
}
