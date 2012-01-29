<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
<jsp:attribute name="head">
        <script type="text/javascript" src="${baseAppUrl}/js/cometd.js"></script>
        <script type="text/javascript" src="${baseAppUrl}/js/jquery.cometd.js"></script>
</jsp:attribute>
<jsp:attribute name="center">
        <jsp:include page="/WEB-INF/jsp/includes/topmenu.jsp"/>
        <div class="cPage" id="logger">

            <div style="width: 500px" id="history">
            </div>
            <div>
                <input type="text" id="msg"> <input type="button" id="send" value="Send">
            </div>
        </div>
    <script type="text/javascript">
        var config = {
            contextPath: '${pageContext.request.contextPath}'
        };

        (function($) {
            var cometd = $.cometd;

            $(document).ready(function() {

                $('#send').click(function() {
                    cometd.batch(function() {
                        cometd.publish('/service/hello', { name: $('#msg').val() == undefined ? " " : $('#msg').val() });
                    });
                    $('#msg').val('');
                });
                function _connectionEstablished() {
                    $('#logger').append('<div>CometD Connection Established</div>');
                }

                function _connectionBroken() {
                    $('#logger').append('<div>CometD Connection Broken</div>');
                }

                function _connectionClosed() {
                    $('#logger').append('<div>CometD Connection Closed</div>');
                }

                var _connected = false;

                function _metaConnect(message) {
                    if (cometd.isDisconnected()) {
                        _connected = false;
                        _connectionClosed();
                        return;
                    }

                    var wasConnected = _connected;
                    _connected = message.successful === true;
                    if (!wasConnected && _connected) {
                        _connectionEstablished();
                    }
                    else if (wasConnected && !_connected) {
                        _connectionBroken();
                    }
                }

                function _metaHandshake(handshake) {
                    if (handshake.successful === true) {
                        cometd.batch(function() {
                            cometd.subscribe('/hello', function(message) {
                                $('#logger').append('<div>Server Says: ' + message.data.greeting + '</div>');
                            });
                            cometd.publish('/service/hello', { name: 'Connected .. ' });
                        });
                    }
                }

                $(window).unload(function() {
                    cometd.disconnect(true);
                });

                var cometURL = location.protocol + "//" + location.host + config.contextPath + "/cometd";
                cometd.configure({
                            url: cometURL,
                            logLevel: 'debug'
                        });

                cometd.addListener('/meta/handshake', _metaHandshake);
                cometd.addListener('/meta/connect', _metaConnect);

                cometd.handshake();
            });
        })(jQuery);

    </script>
    </jsp:attribute>
</tags:main>