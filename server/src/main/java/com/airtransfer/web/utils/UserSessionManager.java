package com.airtransfer.web.utils;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * User: Sergey
 * Date: 25.12.11 21:23
 */

public class UserSessionManager {

    private final List<String> approved = new ArrayList<String>();

    private static final UserSessionManager instance = new UserSessionManager();

    public static UserSessionManager getInstance() {
        return instance;
    }

    public boolean isGranted(HttpSession session) {
        System.out.println("isGranted: " + session.getId());
        synchronized (approved) {
            return approved.contains(session.getId());
        }
    }

    public void grant(HttpSession session) {
        System.out.println("grant: " + session.getId());
        synchronized (approved) {
            approved.add(session.getId());
        }
    }
}
