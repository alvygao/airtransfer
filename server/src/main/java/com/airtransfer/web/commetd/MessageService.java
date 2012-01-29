package com.airtransfer.web.commetd;

import org.cometd.bayeux.server.ServerMessage;
import org.cometd.bayeux.server.ServerSession;

/**
 * User: Sergey
 * Date: 22.01.12 19:16
 */
public interface MessageService {

    public void processHello(ServerSession session, ServerMessage.Mutable message);
}
