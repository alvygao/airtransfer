package com.airtransfer.web.commetd;

import com.airtransfer.services.BaseService;
import org.cometd.bayeux.server.ServerChannel;
import org.cometd.bayeux.server.ServerMessage;
import org.cometd.bayeux.server.ServerSession;
import org.cometd.java.annotation.Listener;
import org.cometd.java.annotation.Service;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 * User: Sergey
 * Date: 22.01.12 19:17
 */
@Service("chat")
@Component
public class MessageServiceImpl extends BaseService implements MessageService {


    @Listener("/service/hello")
    public void processHello(ServerSession session, ServerMessage.Mutable message) {
        Map<String, Object> input = message.getDataAsMap();
        String name = (String) input.get("name");
        Map<String, Object> output = new HashMap<String, Object>();
        output.put("greeting", ">> " + name);
        session.deliver(session, "/hello", output, null);
    }

}
