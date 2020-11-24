<template>
	<div class="movie">
	<div class="section">
	    <div class="containe clearfix">
	        <div class="aside-left">
	            <div class="title">
	                <h2>
	                    <a href="">电影</a>
	                </h2>
	            </div>                   
	            <nav class="left-menu">
	                <ul>
	                    <li v-for="left in leftM"><a href="">{{left}}</a></li>
	                </ul>  
	            </nav>
	        </div>
	        <div class="aside-right movie-area">
	            <div class="section-title">
	                <h3 class="title">影片分类</h3>
	                <span class="link">
	                    <a href="">
	                        更多
	                    </a>
	                </span>
	            </div>
	            <ul class="right-menu-list clearfix">
	                <li v-for="right in rightM"><a href="">{{right}}</a></li>
	            </ul>
	            <div class="section-title">
	                <h3 class="title">近期热门</h3>
	                <span class="link">
	                    <a href="">
	                        更多
	                    </a>
	                </span>
	            </div>
	            <ul class="order-movie-list">
	                <li v-for="m in movie"><a href="">{{m}}</a></li>
	            </ul>                 
	        </div>
	        <div class="main">
	            <div class="section-title">
	                <h3 class="title">正在热映</h3>
	                <span class="link">
	                    <a href="">
	                        更多
	                    </a>
	                </span>
	            </div> 
	            <div class="movie-area">
	                <ul class="item-list clearfix">
	                    <li v-for="a in main">
	                        <div class="img">
	                            <img :src="a.src" alt="">
	                        </div>
	                        <div class="words">
	                            <a href="">{{a.words}}</a>
	                        </div>
	                        <div class="star">
	                            <span class="number">{{a.number}}</span>
	                        </div>
	                        <div class="func">
	                            <a href="" class="block-link">选座购票</a>
	                        </div>
	                    </li>
	                </ul>
	            </div>                   
	        </div>
	    </div>
	</div>
	</div>
</template>

<script>
	export default{
		data(){
			return{
				leftM:['影讯&购票','选电影','电视剧','排行榜','分类','影评','预告片','问答'],
				rightM:["爱情","剧情" ,"喜剧", "经典" ,"悬疑" ,"动画" ,"科幻" ,"动作", "犯罪" ,"青春" ,"搞笑" ,"文艺", "惊悚" ,"励志" ,"纪录片", "黑色幽默", "战争" ,"恐怖" ,"美国", "日本" ,"香港" ,"中国大陆" ,"韩国" ,"中国" ,"英国" ,"法国" ,"台湾" ,"印度"],
				movie:["无声" ,"新变种人" ,"芝加哥七君子审判" ,"女巫" ,"金都" ,"波拉特2", "爱与怪物" ,"担保母亲" ,"奇奇怪怪：整容液"],
				main:[
					{src:require('../assets/img/m1.webp'),words:"除暴",number:6.5},
					{src:require('../assets/img/m2.webp'),words:"气球",number:7.9},
					{src:require('../assets/img/m3.webp'),words:"末日逃生",number:5.7},
					{src:require('../assets/img/m4.webp'),words:"海兽之子",number:6.6},
					{src:require('../assets/img/m5.webp'),words:"热气球飞行家",number:7.1},
					{src:require('../assets/img/m6.webp'),words:"姜子牙",number:6.9},
					{src:require('../assets/img/m7.webp'),words:"风平浪静",number:6.4},
					{src:require('../assets/img/m8.webp'),words:"野性的呼唤",number:7.2},
				]
			}
		}
	}
</script>

<style>
	.movie .section .clearfix::after{
	    content: "";
	    display: block;
	    clear: both;
	}
	.movie .section {
		line-height: 2;
		padding: 35px 0;
		background-color: #f7f7f7;
	}
	.movie .section .containe {
		width: 950px;
		margin: 0 auto;
	}
	.movie .section .aside-left {
		float: left;
		margin-right: 20px;
		width: 100px;
	}
	.movie .section .aside-right {
		float: right;
		margin-left: 30px;
		width: 265px;
	}
	.movie .section .main {
		overflow: hidden;
	}
	.movie .section a{
		color: #27a;
	}
	.movie .section a:hover{
		background-color: #27a;
		color: #fff;
	}
	.movie .section a:active{
		background-color: #f93;
		color: #fff;
	}
	.movie .section .aside-left .title{
		font-size: 24px;
		color: #27a;
	}
	.movie .section .aside-left .left-menu{
		font-size: 14px;
	}
	.movi .section .aside-right .section-title{
		font: 15px Arial, Helvetica, sans-serif;
		color: #072;
		margin: 0 0 12px 0;
		line-height: 150%;
	}
	.movie .section .aside-right .right-menu-list li{
		float: left;
		margin-right: 10px;
		font-size: 12px;
	}
	.movie .order-movie-list{
	    font-size: 12px;
	
	}
	.movie .order-movie-list a{
	    margin-left: 5px;
	}
	.movie .order-movie-list li{
	    list-style-type: decimal;
	    list-style-position: initial;
	    margin-bottom: 6px;
	    padding-bottom: 5px;
	    border-bottom: 1px solid #eaeaea;
	}
	.movie .section .aside-right .section-title,
	.movie .section .main .section-title{
	    margin: 8px 0 12px;
	}
	.movie .section .aside-right .section-title .title,
	.movie .section .main .section-title .title{
	    display: inline;
	    color: #072;
	    font-size: 15px;
	}
	.movie .section .aside-right .section-title .title::after,
	.movie .section .main .section-title .title::after{
	    content: " · · · · · · ";
	}
	.movie .section .aside-right .section-title .link,
	.movie .section .main .section-title .link{
	    font-size: 12px;
	}
	.movie .section .aside-right .section-title .link::before,
	.movie .section .main .section-title .link::before{
	    content: "(";
	}
	.movie .section .aside-right .section-title .link::after,
	.movie .section .main .section-title .link::after{
	    content: ")";
	}
	.movie .section .main .item-list li{
		float: left;
		width: 133px;
		height: 245px;
		font-size: 13px;
		color: #e09015;
		text-align: center;
	}
	.movie .section .main .item-list li .img{
		width: 80%;
		height: 62%;
		margin: 0 13px;
	}
	.movie .section .main .item-list li img{
		width: 95%;
	}
	.movie .section .main .item-list li .func{
		width: 80px;
		margin-left: 25px;
		border-radius: 4px;
		background-color: #1c8bd0;;
	}
	.movie .section .main .item-list li .func a{
		color: #fff;
		width: 80px;
	}
</style>	