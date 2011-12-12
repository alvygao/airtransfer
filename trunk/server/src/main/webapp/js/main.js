$(document).ready(function(){
    $('.jHover').each(function(){
        $(this).hover(function(){
            $(this).children().each(function(){
                $(this).addClass('cHover');
            })
        },
        function(){
            $(this).children().each(function(){
                $(this).removeClass('cHover');
            })
        })
    });
    
/*
    $('.jDialog').click(function(){
        var url = this.href, title = this.title;
        var dialog = $('<div class="cDialog" style="display:none"></div>').appendTo('body');
        // load remote content
        dialog.load(
            url,
            function (responseText, textStatus, XMLHttpRequest) {
                dialog.dialog({
                    resizable: false,
                    title: title,
                    width: 400,
                    modal: true,
                    close: function(event, ui) {
                        dialog.remove();
                    }
                });
            }
        );
        return false;
    });
*/
});