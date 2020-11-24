<template>
		<!-- 登陆部分 -->
		<div class="land">
			<!-- APP部分 -->
			<div class="app">
				<p class="name">豆瓣 6.0</p>
				<a href="" class="download">下载豆瓣 App</a>
				<!-- 二维码 -->
				<div class="app_qr">
					<a href="" class="qr"><img :src="appPic"></a>
					<div class="expand">
						<img :src="qrPic">
						<p>手机扫码登陆</p>
					</div>
				</div>
			</div>
			<div class="left" :class="tag">
				<span class="one" @click="reg">短信登录/注册</span>
				<span class="two" @click="sign">密码登录</span>
				<!-- 注册部分 -->
				<div class="register">
					<!-- 手机号 -->
					<div class="zhuce">
						<p class="tips">请仔细阅读</p>
						<a href="">豆瓣使用协议、隐私政策</a>
						<!-- 登录框 -->
						<div class="phone">
							<input placeholder="手机号" />
							<span class="p_title">+86</span>
						</div>
					</div>
					<!-- 验证码 -->
					<div class="yanzhengma">
						<input placeholder="验证码" />
						<a href="" @click="yanzhengma">获取验证码</a>
					</div>
					<div class="ask">
						<p>收不到验证码?</p>
					</div>
					<div class="sub">
						<a href="">豆瓣登陆</a>
					</div>
					<div class="third">
						<p>第三方登陆</p>
						<span class="weixin"></span>
						<span class="weibo"></span>
					</div>
				</div>
			</div>
			<div class="password" :class="tag">
				<span class="one" @click="reg">短信登录/注册</span>
				<span class="two" @click="sign">密码登录</span>
				<div class="register">
					<!-- 手机号 -->
					<div class="zhuce back">
						<a href="">找回密码</a>
						<!-- 登录框 -->
						<div class="phone">
							<input placeholder="手机号" />
						</div>
					</div>
					<!-- 验证码 -->
					<div class="mima">
						<input placeholder="密码" />
					</div>
					<div class="ask">
						<p class="haiwai">海外手机登陆</p>
					</div>
					<div class="sub">
						<a href="">豆瓣登陆</a>
					</div>
					<div class="third">
						<p>第三方登陆</p>
						<span class="weixin"></span>
						<span class="weibo"></span>
					</div>
				</div>
			</div>
		
		</div>
</template>

<script>
	export default{
		data(){
			return {
					appPic:require("../assets/img/icon_qrcode_green.png"),
					qrPic:require("../assets/img/qr.png"),
					tag:{
						open1:true,
						open2:false
					}
				}
			},
		methods:{
			reg(){
				this.tag.open1=true,
				this.tag.open2=false
			},
			sign(){
				this.tag.open2=true,
				this.tag.open1=false
			},
			yanzhengma(){
				alert("验证码发送成功,请注意查收！")
			}
		}
	}
</script>

<style>
	/* 登陆部分 */
	 .land {
		width: 1533px;
		height: 304px;
		margin: 0 auto;
		margin-top: 29px;
		background: url(../assets/img/abnner.jpg) no-repeat 0px;
		background-size: contain;
		background-position: -webkit-calc(49% - 305px) top;
		background-color: #edf4ed;
		position: relative;

	}

	.land .app {
		height: 120px;
		position: absolute;
		top: 90px;
		left: 775px;
	}

	.land .app .name {
		font-size: 23px;
		color: #111;
	}

	.land .app .download {
		display: inline-block;
		text-decoration: none;
		width: 120px;
		height: 30px;
		line-height: 30px;
		font-size: 12px;
		background-color: #00B51D;
		text-align: center;
		color: white;
		margin-top: 21px;
	}

	/* 二维码 */
	.land .app .app_qr {
		display: inline-block;
		/* position: relative; */
		top: 30px;
		left: 5px;
		cursor: pointer;
	}

	.land .app .app_qr a img {
		width: 30px;
		height: 30px;
		border: 1px solid #48aa0d;
		position: absolute;
		top: 52px;
		left: 140px;
	}

	.land .app .app_qr .expand {
		display: inline-block;
		display: none;
		position: absolute;
		top: 52px;
		left: 140px;
		background: white;
		text-align: center;
	}

	.land .app .app_qr .expand img {
		width: 158px;
		height: 158px;
		padding: 20px 20px 5px;
	}

	/* 鼠标滑过显示二维码 */
	.land .app .app_qr:hover .expand {
		display: block;
		z-index: 5;
	}

	/* 用户部分 */
	.land .left {
		width: 550px;
		height: 100%;
		/* background-color: red; */
		float: right;
		position: relative;
		/* display: none; */
	}
	

	.land .left .register {
		width: 300px;
		height: 300px;
		padding: 30px 10px 10px 10px;
		/* position: relative;
		top: 0;
		left: 1030px; */
	}

	.land .left .register .zhuce {
		width: 281px;
		height: 29px;
		/* background-color: aquamarine; */
		color: #ccc;
		/* position: relative; */
	}

	.left .one,
	.two {
		display: inline-block;
		width: 130px;
		height: 27px;
		line-height: 27px;
		text-align: center;
		font-size: 15px;
		cursor: pointer;
		padding-bottom: 5px;
	}

	.land .left .one {
		color: #333333;
		font-weight: 600;
		border-bottom: 1px solid #333333;
		position: absolute;
		top: 22px;
		left: 11px;
	}

	.land .left .two {
		color: #CCCCCC;
		font-size: 15px;
		border-bottom: 1px solid #CCCCCC;
		position: absolute;
		top: 22px;
		left: 140px;
	}

	.land .left .register .zhuce .tips {
		font-size: 10px;
		color: #9B9B9B;
		margin-top: 0.875rem;
		position: absolute;
		top: 39px;
		left: 17px;
	}

	.land  .left .register .zhuce a {
		text-decoration: none;
		color: #41AC52;
		font-size: 10px;
		position: absolute;
		top: 53px;
		left: 95px;
	}

	.land  .left .register .zhuce .phone {
		margin-top: 15px;
	}

	.land  .left .register .zhuce .phone input {
		width: 279px;
		height: 33px;
		padding-left: 55px;
		border: 1px solid #CCCCCC;
		outline: none;
		position: absolute;
		top: 75px;
	}

	.land  .left .register .zhuce .phone .p_title {
		cursor: pointer;
		font-size: 15px;
		color: #000;
		font-weight: 600;
		position: absolute;
		top: 80px;
		left: 20px;
	}

	.land  .left .register .yanzhengma input {
		width: 279px;
		height: 33px;
		padding-left: 5px;
		border: 1px solid #CCCCCC;
		outline: none;
		position: absolute;
		top: 123px;

	}

	/* 修改placeholder的默认颜色 */
	.yanzhengma input::-webkit-input-placeholder {
		font-size: 13px;
		color: #757575;
	}

	.land .left .register .yanzhengma a {
		text-decoration: none;
		color: #41AC52;
		font-size: 14px;
		position: absolute;
		top: 129px;
		left: 200px;
	}

	.land .left .register .sub a {
		width: 279px;
		height: 33px;
		line-height: 33px;
		text-align: center;
		background-color: #97D9A1;
		color: #FFFFFF;
		text-decoration: none;
		position: absolute;
		top: 179px;
	}

	.land .left .register .ask {
		width: 279px;
		height: 33px;
		/* background-color: red; */
		border-bottom: 1px solid #CCCCCC;
		position: absolute;
		top: 215px;
		left: 10px;
	}

	.land .left  .ask p {
		
		font-size: 14px;
		color: #41AC52;
		cursor: pointer;
		position: absolute;
		top: 8px;
		left: 187px;
	}

	.land .left .register .third p {
		color: #CCCCCC;
		position: absolute;
		top: 267px;
		left: 10px;
	}

	 .left  .register .third .weixin,
	.weibo {
		display: inline-block;
		cursor: pointer;
	}

	.land .left .register .third .weixin {
		width: 50px;
		height: 50px;
		
		background: url(../assets/img/weix.svg) no-repeat;
		position: absolute;
		top: 258px;
		left: 98px;
	}

	.land .left .register .third .weibo {
		width: 50px;
		height: 50px;
		background: url(../assets/img/weibo.svg) no-repeat;
		position: absolute;
		top: 258px;
		left: 150px;
	}
	/* 密码登陆 */
	.land .password{
		width: 550px;
		height: 100%;
		/* background-color: red; */
		float: right;
		position: relative;
		display: none;
	}
	.password .one,
	.two {
		display: inline-block;
		width: 130px;
		height: 27px;
		line-height: 27px;
		text-align: center;
		font-size: 15px;
		cursor: pointer;
		padding-bottom: 5px;
	}
	.land .password .register .ask {
		width: 279px;
		height: 33px;
		border-bottom: 1px solid #CCCCCC;
		position: absolute;
		top: 215px;
		left: 10px;
	}
	.land .password .one {
		color: #CCCCCC;
		font-size: 15px;
		border-bottom: 1px solid #CCCCCC;
		position: absolute;
		top: 22px;
		left: 11px;
	}
	
	.land .password .two {
		color: #333333;
		font-weight: 600;
		border-bottom: 1px solid #333333;
		position: absolute;
		top: 22px;
		left: 140px;
	}
	.password .haiwai{
		
		font-size: 14px;
		color: #41AC52;
		cursor: pointer;
		position: absolute;
		top: 8px;
		left: 187px;
	}
	.land .password  .register .sub a {
		width: 279px;
		height: 33px;
		line-height: 33px;
		text-align: center;
		background-color: #97D9A1;
		color: #FFFFFF;
		text-decoration: none;
		position: absolute;
		top: 179px;
		left: 7px;
	}
	.password  .back a{
		text-decoration: none;
		color: #41AC52;
		font-size: 10px;
		position: absolute;
		top: 55px;
		left: 228px;
	}
	 .password  p {
		color: #CCCCCC;
		position: absolute;
		top: 267px;
		left: 10px;
	}
	.land .password .register .third .weixin {
		width: 50px;
		height: 50px;
		
		background: url(../assets/img/weix.svg) no-repeat;
		position: absolute;
		top: 258px;
		left: 98px;
	}
	
	.password .register .third .weibo {
		width: 50px;
		height: 50px;
		background: url(../assets/img/weibo.svg) no-repeat;
		position: absolute;
		top: 258px;
		left: 150px;
	}
	
	.password .register .zhuce .phone input {
		width: 279px;
		height: 33px;
		padding-left: 5px;
		border: 1px solid #CCCCCC;
		outline: none;
		position: absolute;
		top: 75px;
		left: 7px;
	}
	.password .register .mima input {
		width: 279px;
		height: 33px;
		padding-left: 5px;
		border: 1px solid #CCCCCC;
		outline: none;
		position: absolute;
		top: 123px;
		left: 7px;
	}
	.land .left.open1{
		display: block;
	}
	.land .left.open2{
		display: none;
	}
	.land .password.open1{
		display: none;
	}
	.land .password.open2{
		display: block;
	}
</style>
