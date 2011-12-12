package com.airtransfer.models;

import javax.persistence.*;

/**
 * User: sergey
 * Date: 12:27 PM 12/12/11
 */
@Entity
@Table(name = "reset_password_link")
public class ResetPasswordLink extends BaseEntity {

    @Column(name = "uid")
    private String uid;
    @Column(name = "processed", columnDefinition = "BIT")
    private Boolean processed;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

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
}
