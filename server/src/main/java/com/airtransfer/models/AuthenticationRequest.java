package com.airtransfer.models;

import javax.persistence.*;

/**
 * User: sergey
 * Date: 2:45 PM 12/10/11
 */
@Entity
@Table(name = "authentication_request")
public class AuthenticationRequest extends BaseEntity {

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;
    @Column(name = "uid")
    private String uid;
    @Column(name = "processed", columnDefinition = "BIT")
    private Boolean processed;


    public Boolean getProcessed() {
        return processed;
    }

    public void setProcessed(Boolean processed) {
        this.processed = processed;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }
}
