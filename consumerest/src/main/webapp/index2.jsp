<!DOCTYPE html>
<html>
<head>
<title>Insert title hereeee</title>
<script src='http://ajax.googleapis.com/ajax/libs/angularjs/1.6.6/angular.js'></script>
        <script src='http://ajax.googleapis.com/ajax/libs/angularjs/1.6.6/angular-resource.js'></script>
        <script src='./js/consume-rest.js'></script>
     
</head>
    <body ng-app='consumeRestApp'>
        <div ng-controller='ArtistsCtrl'>
            <div ng-repeat='torneo in torneos'>
                <p>{{ torneo.id }} wrote {{ torneo.deporte.descripcion }} albums:</p>
                <div ng-repeat='album in artist.albums'>
                    <p style='text-indent: 20px'>
                        Album titled <b>{{ album.title }}</b> by
                                     <b>{{ album.artist }}</b> contains
                                     <b>{{ album.ntracks }}</b> tracks
                    </p>
                </div>
            </div>
        </div>
    </body>
</html>