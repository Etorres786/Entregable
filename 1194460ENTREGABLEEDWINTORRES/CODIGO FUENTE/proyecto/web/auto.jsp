<%-- 
    Document   : auto
    Created on : 7/11/2017, 06:22:02 PM
    Author     : edwin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>jQuery UI Autocomplete - Default functionality</title>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {
                var availableTags = new Array();
                $("#tags").bind("keydown", function(event) {
                    var data = {nombre: $("#tags").val()};
                    $.getJSON("buscar", data, function (res, est, jqXHR) {
                        availableTags.length = 0;
                        $.each(res, function (i, item){
                            availableTags[i] = item;
                        });
                    });
                });
                $("#tags").autocomplete({
                    source: availableTags,
                    minLength: 1
                });
            });
        </script>
    </head>
    <body>

        <div class="ui-widget">
            <label for="tags">Buscar: </label>
            <input id="tags">
        </div>


    </body>
</html>