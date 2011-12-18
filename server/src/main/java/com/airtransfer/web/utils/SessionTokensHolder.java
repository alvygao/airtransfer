package com.airtransfer.web.utils;

/**
 * User: Sergey
 * Date: 18.12.11 15:05
 */
public class SessionTokensHolder {

    private static final SessionTokensHolder instance;

    static {
        instance = new SessionTokensHolder();
    }

    final ThreadLocal<String> userSessions = new ThreadLocal<String>();

    public String get() {
        return userSessions.get();
    }

    public void put(String token) {
        userSessions.set(token);
    }

    public static SessionTokensHolder getInstance() {
        return instance;
    }
}
