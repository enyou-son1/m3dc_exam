@extends('layouts.layoutindex')

@section('content')

	<div class="container">
		<div class="container-component">

        	<div class="pageWrap">
                <div class="panel panel-primary">
                    <div class="panel-heading text-center">{{ config('defaultcfg.defaultcfg.M3DC_SEMINAR_TITLE') }}</div>
                    <div class="panel-body">
                        <pre class="list-unstyled ">{{ config('defaultcfg.defaultcfg.VIEW_INFO_DATE') }}<br/>{{ config('defaultcfg.defaultcfg.VIEW_INFO_TITLE') }}<br/>{{ config('defaultcfg.defaultcfg.VIEW_INFO_PROF') }}</pre>

                        <div style="text-align: center">
                        	<!-- iframe コード入力 -->
                            <iframe id="iframe" src ="{{ url()->current() }}/../img/m3dc_logo.png" width="489" height="527" frameborder="1">
                                <p class="navbar-logo">Your browser does not support iframes.</p>
                            </iframe>
                        </div>

                    </div>
                    <div class="panel-footer">
                        <p class="glyphicon glyphicon-warning-sign text-danger">　PCでご視聴の場合はVPNを切断しご覧ください</p>
                    </div>
                </div>

                <div class="col-sm-12 contactBox">
                	<a target="_blank" href="{{ config('defaultcfg.defaultcfg.INQUIRY_URL') }}">接続に関する技術的な質問等ございましたら、こちらからお問い合わせ下さい。</a>
            	</div>
	        </div>

        </div>
    </div>

@endsection
