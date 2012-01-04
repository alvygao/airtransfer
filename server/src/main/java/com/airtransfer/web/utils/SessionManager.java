package com.airtransfer.web.utils;

import java.util.ArrayList;
import java.util.List;

/**
 * User: Sergey
 * Date: 02.01.12 18:09
 */
public class SessionManager {
    private static final SessionManager MANAGER;

    private List<String> authorized = new ArrayList<String>();
    private ThreadLocal<String> currentSessionId = new ThreadLocal<String>();

    static {
        MANAGER = new SessionManager();
    }

    public SessionManager getInstance() {
        return MANAGER;
    }

    public static boolean add(String sessionId) {
        synchronized (MANAGER) {
            return MANAGER.authorized.add(sessionId);
        }
    }

    public static boolean remove(String sessionId) {
        synchronized (MANAGER) {
            return MANAGER.authorized.remove(sessionId);
        }
    }

    public static boolean contains(String sessionId) {
        synchronized (MANAGER) {
            return MANAGER.authorized.contains(sessionId);
        }
    }

    public static void setCurrentSession(String sessionId) {
        MANAGER.currentSessionId.set(sessionId);
    }

    public static String getCurrentSession() {
        return MANAGER.currentSessionId.get();
    }

    public static void eraseCurrentSession(String sessionId) {
        MANAGER.currentSessionId.remove();
    }
}
