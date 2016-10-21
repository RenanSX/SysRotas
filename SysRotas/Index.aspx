<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SysRotas.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SysRotas</title>
     <!-------------------------Leaflet------------------------------------>
     <link rel="stylesheet" href="https://unpkg.com/leaflet@1.0.1/dist/leaflet.css" />
     <script src="https://unpkg.com/leaflet@1.0.1/dist/leaflet.js"></script>
    <!---------------------Arquivos----------------------------------->
     <link type="text/css" rel="stylesheet" href="css/estilo.css" />
     <script type="text/javascript" src="js/javascript.js"></script>
    <!--------------------- Map Quest Plugin Leaflet-------------------->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/leaflet.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/leaflet.js"></script>
    <script src="https://www.mapquestapi.com/sdk/leaflet/v2.2/mq-map.js?key=FjnMGajQJL7Mj5UNI5tTKGMSO5NxTPio"></script>
    <script src="https://www.mapquestapi.com/sdk/leaflet/v2.2/mq-routing.js?key=FjnMGajQJL7Mj5UNI5tTKGMSO5NxTPio"></script>
    <!---------------------------Bootstrap------------------------------->
    <link href=" css/bootstrap.css" rel="Stylesheet" type="text/css" />
    <link href=" css/bootstrap.min.css" rel="Stylesheet" type="text/css" />
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>

</head>
<body>
        <div id="mapid"></div>

    <script>
        var mymap = L.map('mapid').setView([-19.9321635, -43.9380004], 15);

        var grayscale = L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
            attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors',
            maxZoom: 18
        }).addTo(mymap);

        var dir = MQ.routing.directions();
        
        var marker = L.marker([-19.932507, -43.939140]).addTo(mymap);

        dir.optimizedRoute({
            locations: [
              '-19.932507, -43.939140',
              '-19.929606, -43.940782',
              '-19.931810, -43.935339',
              '-19.922248, -43.936765',
              '-19.919594, -43.982151',
              '-19.961767, -44.192068',
              '-19.918141, -44.083433',
              '-19.930263, -43.932698'

            ]
        });

        mymap.addLayer(MQ.routing.routeLayer({
            directions: dir,
            fitBounds: true
        }));

    </script>
</body>
</html>
