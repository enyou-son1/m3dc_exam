<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<!-- Styles -->
	<link rel="stylesheet" href="{{ asset('/css/style.css') }}">
	<link rel="stylesheet" href="{{ asset('/css/bootstrap.min.css') }}">

	<!-- jQuery -->
	<script src="{{asset('js/jquery-1.12.4.min.js')}}"></script>

	<script src="{{asset('js/jquery.validate.min.js')}}"></script>
	<script src="{{asset('js/util-ui.js')}}"></script>

    <!-- "php artisan config:cache"を実行 -->
    <title>{{ config('defaultcfg.defaultcfg.PAGE_TITLE') }}</title>

</head>

<body>
	<header>
         <nav class="navbar navbar-default navbar-fixed-top">
          <div class="container">
            <div class="navbar-header">
                <div class="navbar-logo">
                    {{ config('defaultcfg.defaultcfg.M3DC_LOG_TXT') }}
                </div>
            </div>

            <div id="patern03" class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                </ul>
            </div>
          </div>
        </nav>
        <div style="margin-bottom: 100px"></div>
     </header>

     <div>
     	@yield('content')
     </div>

</body>

</html>
