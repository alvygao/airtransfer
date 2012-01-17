<div class="cTopMenu">
    <span class="jChildOpen">
        <a class="cFisrt cActive" href="${baseAppUrl}/html/profile">${i18n['label.user_menu.myAccount']}</a>
        <div class="cChild jChild" style="display: none; position: absolute; top: 30px; left: 1px; width: 201px;">
            <a  href="${baseAppUrl}/html/profile/settings" style="width: 201px; background-repeat: repeat-x">${i18n['label.user_menu.settings']}</a>
        </div>
    </span>
    <div class="cDevider"></div>
    <a href="${baseAppUrl}/html/profile/messages">${i18n['label.user_menu.myMessages']}</a>

    <div class="cDevider"></div>
    <a href="${baseAppUrl}/html/profile/flights">${i18n['label.user_menu.myAir']}</a>

    <div class="cDevider"></div>
    <a class="cLast" href="#">${i18n['label.user_menu.myAlbums']}</a>

    <div class="cClear"></div>
</div>
<script type="text/javascript">
    $('span.jChildOpen')
        .hover(
        function() {
            $(this).find('.jChild').css('display', 'inline');
        },
        function() {
            $(this).find('.jChild').css('display', 'none');
        }
    )
</script>