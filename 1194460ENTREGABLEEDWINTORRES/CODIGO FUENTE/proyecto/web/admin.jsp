<%-- 
    Document   : admin
    Created on : 04-jul-2017, 10:54:31
    Author     : EDWIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="head.jsp" %>
    <body>
        <%@include file="banner.jsp" %>
        <%@include file="nav.jsp" %>
        <div class="container">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12">
                        <h3>Estadisticas</h3> <br> 
                    </div>

                </div>
            </div>
        </div>

        <div class="col-md-6">
            <h3 id="vendido"> Productos mas vendido</h3> 
            <div id="donut-example" style="height: 250px;"><svg height="250" version="1.1" width="540" xmlns="http://www.w3.org/2000/svg" 
                                                                style="overflow: hidden; position: relative; left: -0.5px;"><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.1.0</desc>
                <defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs><path fill="none" stroke="#ef9e64" 
                                                                                          d="M270,201.66666666666669A76.66666666666667,76.66666666666667,0,0,0,342.59407492337823,149.65518330486972" stroke-width="2" 
                                                                                          opacity="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); opacity: 0;"></path><path fill="#ef9e64" stroke="#ffffff" 
                                                                                          d="M270,204.66666666666669A79.66666666666667,79.66666666666667,0,0,0,345.4347126377713,150.61995134723418L374.15671619441224,160.37482822003045A110,110,0,0,1,270,235Z" 
                                                                                          stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><path fill="none" stroke="#C87A1B" 
                                                                                          d="M342.59407492337823,149.65518330486972A76.66666666666667,76.66666666666667,0,0,0,201.24672005251153,91.0770833470932" 
                                                                                          stroke-width="2" opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); opacity: 1;"></path><path fill="#C87A1B" 
                                                                                          stroke="#ffffff" d="M345.4347126377713,150.61995134723418A79.66666666666667,79.66666666666667,0,0,0,198.5563743154359,89.74966486937075L166.87008007876733,74.11562502063978A115,115,0,0,1,378.89111238506734,161.98277495730457Z" 
                                                                                          stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><path fill="none" stroke="#d2691e" 
                                                                                          d="M201.24672005251153,91.0770833470932A76.66666666666667,76.66666666666667,0,0,0,269.97591445671867,201.66666288331834" 
                                                                                          stroke-width="2" opacity="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); opacity: 0;"></path><path fill="#d2691e" 
                                                                                          stroke="#ffffff" d="M198.5563743154359,89.74966486937075A79.66666666666667,79.66666666666667,0,0,0,269.97497197893813,204.6666627352743L269.965442481379,234.99999457171762A110,110,0,0,1,171.35398964056006,76.32798915017719Z" 
                                                                                          stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="270" y="115" text-anchor="middle" 
                                                                                          font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: 800; font-stretch: normal; font-size: 15px; line-height: normal; font-family: Arial;" 
                                                                                          font-size="15px" font-weight="800" transform="matrix(2.2549,0,0,2.2549,-339.2157,-154.9804)" stroke-width="0.4434782608695652"><tspan 
                                                                                          style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="5.5">Pastel Dulce</tspan></text><text x="270" y="135" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 14px; line-height: normal; font-family: Arial;" font-size="14px" transform="matrix(1.5972,0,0,1.5972,-161.306,-75.8472)" stroke-width="0.6260869565217391"><tspan dy="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">30</tspan></text></svg></div>
        </div>

        <div class="col-md-6">
            <h3 id="vendido1">Ventas Mensuales</h3> 
            <div id="bar-example" style="height: 250px; position: relative;"><svg height="250" version="1.1" width="540" xmlns="http://www.w3.org/2000/svg" 
                                                                                  style="overflow: hidden; position: relative; left: -0.5px;"><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.1.0</desc><defs
                                                                                  style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs><text x="34.84375" y="211" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
                                                                                  style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; 
                                                                                  font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif"
                                                                                  font-weight="normal"><tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">0</tspan></text><path fill="none" stroke="#aaaaaa" d="M47.34375,211H515"
                                                                                  stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="34.84375" y="164.5" text-anchor="end" font="10px &quot;Arial&quot;"
                                                                                  stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal;
                                                                                  font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="4"
                                                                                  style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">25</tspan></text><path fill="none" stroke="#aaaaaa" d="M47.34375,164.5H515" stroke-width="0.5" style="-webkit-tap-highlight-color:
                                                                                  rgba(0, 0, 0, 0);"></path><text x="34.84375" y="118" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
                                                                                  text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px"
                                                                                  font-family="sans-serif" font-weight="normal"><tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">50</tspan></text><path fill="none" stroke="#aaaaaa" d="M47.34375,118H515"
                                                                                  stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="34.84375" y="71.5" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
                                                                                  style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal;
                                                                                  font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">75</tspan></text><path fill="none"
                                                                                  stroke="#aaaaaa" d="M47.34375,71.5H515" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="34.84375" y="25" text-anchor="end" font="10px &quot;Arial&quot;"
                                                                                  stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size:
                                                                                  12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">100</tspan></text>
                <path fill="none" stroke="#aaaaaa" d="M47.34375,25H515" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="476.0286458333333" y="223.5" text-anchor="middle"
                                                                                                                                                               font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal;
                                                                                                                                                               font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)"><tspan dy="4"
                                                                                                                                                               style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Jun 2014</tspan></text><text x="320.1432291666667" y="223.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
                                                                                                                                                               style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal;
                                                                                                                                                               font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)"><tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Apr 2014</tspan></text><text x="164.2578125"
                                                                                                                                                               y="223.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal;
                                                                                                                                                               font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)"><tspan dy="4" style="-webkit-tap-highlight-color:
                                                                                                                                                               rgba(0, 0, 0, 0);">Feb 2014</tspan></text><rect x="57.086588541666664" y="25" width="58.45703125" height="186" r="0" rx="0" ry="0" fill="#C87A1B" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
                                                                                                                                                               fill-opacity: 1;"></rect><rect x="135.029296875" y="71.5" width="58.45703125" height="139.5" r="0" rx="0" ry="0" fill="#C87A1B" stroke="none" fill-opacity="1"
                                                                                                                                                               style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="212.97200520833331" y="118" width="58.45703125" height="93" r="0" rx="0" ry="0" fill="#C87A1B" stroke="none"
                                                                                                                                                               fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="290.9147135416667" y="71.5" width="58.45703125" height="139.5" r="0" rx="0" ry="0" fill="#C87A1B"
                                                                                                                                                               stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="368.857421875" y="118" width="58.45703125" height="93" r="0" rx="0" ry="0" 
                                                                                                                                                               fill="#C87A1B" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="446.8001302083333" y="71.5" width="58.45703125" height="139.5" 
                                                                                                                                                               r="0" rx="0" ry="0" fill="#C87A1B" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect></svg><div class="morris-hover morris-default-style" 
                                                                                                                                                               style="left: 360.586px; top: 96px;"><div class="morris-hover-row-label">May 2014</div><div class="morris-hover-point" style="color: #C87A1B">
                        Venta:
                        50
                    </div>

                </div>

            </div>
        </div>
        <script type="text/javascript">
        //Morris charts snippet - js

            $.getScript('http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js', function () {
                $.getScript('http://cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.0/morris.min.js', function () {

                    Morris.Area({
                        element: 'area-example',
                        data: [
                            {y: '1.1.', a: 100, b: 90},
                            {y: '2.1.', a: 75, b: 65},
                            {y: '3.1.', a: 50, b: 40},
                            {y: '4.1.', a: 75, b: 65},
                            {y: '5.1.', a: 50, b: 40},
                            {y: '6.1.', a: 75, b: 65},
                            {y: '7.1.', a: 100, b: 90}
                        ],
                        xkey: 'y',
                        ykeys: ['a', 'b'],
                        labels: ['Series A', 'Series B']
                    });

                    Morris.Line({
                        element: 'line-example',
                        data: [
                            {year: '2010', value: 20},
                            {year: '2011', value: 10},
                            {year: '2012', value: 5},
                            {year: '2013', value: 2},
                            {year: '2014', value: 20}
                        ],
                        xkey: 'year',
                        ykeys: ['value'],
                        labels: ['Value']
                    });

                    Morris.Donut({
                        element: 'donut-example',
                        data: [
                            {label: "Android", value: 12},
                            {label: "iPhone", value: 30},
                            {label: "Other", value: 20}
                        ]
                    });

                    Morris.Bar({
                        element: 'bar-example',
                        data: [
                            {y: 'Jan 2014', a: 100},
                            {y: 'Feb 2014', a: 75},
                            {y: 'Mar 2014', a: 50},
                            {y: 'Apr 2014', a: 75},
                            {y: 'May 2014', a: 50},
                            {y: 'Jun 2014', a: 75}
                        ],
                        xkey: 'y',
                        ykeys: ['a'],
                        labels: ['Visitors', 'Conversions']
                    });

                });
            });
        </script>
        <div class="container">
            <h2>Top de fidelidad</h2>

            <table class="table">
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Email</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>John</td>
                        <td>Doe</td>
                        <td>john@example.com</td>
                    </tr>
                    <tr>
                        <td>Mary</td>
                        <td>Moe</td>
                        <td>mary@example.com</td>
                    </tr>
                    <tr>
                        <td>July</td>
                        <td>Dooley</td>
                        <td>july@example.com</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <%@include file="footer.jsp" %>
    </body>
</html>
