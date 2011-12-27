package com.airtransfer.models;

import javax.persistence.*;

/**
 * User: Sergey
 * Date: 18.12.11 14:12
 */
@Entity
@Table(name = "user_sessions")
public class UserSession extends BaseEntity {
    @Column
    private String token;
    @Column(name = "jsession_id")
    private String JSessionId;
    @Column
    private Integer timeToLive = 30;
    @Column
    private String ip;
    @ManyToOne(fetch = FetchType.LAZY)
    private User user;
    @Column(columnDefinition = "TEXT")
    private String headers;
    @Column(columnDefinition = "BIT")
    private Boolean expired = Boolean.FALSE;

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public Integer getTimeToLive() {
        return timeToLive;
    }

    public void setTimeToLive(Integer timeToLive) {
        this.timeToLive = timeToLive;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getHeaders() {
        return headers;
    }

    public void setHeaders(String headers) {
        this.headers = headers;
    }

    public String getJSessionId() {
        return JSessionId;
    }

    public void setJSessionId(String JSessionId) {
        this.JSessionId = JSessionId;
    }

    public Boolean getExpired() {
        return expired;
    }

    public void setExpired(Boolean expired) {
        this.expired = expired;
    }
}
