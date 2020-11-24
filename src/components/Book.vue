<template>
		<div class="book">
            <div class="containe book-area clearfix">
                <div class="aside-left">
                    <div class="title">
                        <h2>
                            <a href="">{{bookTitle}}</a>
                        </h2>
                    </div>                   
                    <nav class="left-menu">
                        <ul>
                            <li v-for="menu in leftMenu"><a href="">{{menu}}</a></li>
                        </ul>  
                    </nav>
                    <div class="menu-adv">
                        <a href="">
                            <span class="app-icon-1"></span>
                        </a>
                        <a href="">豆瓣阅读</a>
                    </div>
                </div>
                <div class="aside-right">
                    <div class="section-title">
                        <h3 class="title">热门标签</h3>
                        <span class="link">
                            <a href="">
                                更多
                            </a>
                        </span>
                    </div>
                    <div class="group" v-for="g in group">
                        <ul class="right-menu-list clearfix">
                            <li><span>[{{g.span}}]</span></li>
                            <li v-for="li in g.liList"><a href="">{{li}}</a></li>
                        </ul>
                    </div>
                </div>
                <div class="main">
                    <div class="section-title">
                        <h3 class="title">新书速递</h3>
                        <span class="link">
                            <a href="">
                                更多
                            </a>
                        </span>
                    </div>
                    <ul class="item-list clearfix">
                        <li v-for="a in newBook">
                            <div class="img">
                                <a href="">
                                    <img :src="a.src" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a href="">
                                    {{a.words}}
                                </a>
                                <span>
                                    {{a.span}}
                                </span>
                            </div>
                            <div class="func">
                                <a href="" class="block-link">免费试读</a>
                            </div>
                        </li>
                    </ul>
                    <div class="section-title">
                        <h3 class="title">原创数字作品</h3>
                        <span class="link">
                            <a href="">
                                更多
                            </a>
                        </span>
                    </div>
                    <ul class="item-list clearfix">
                        <li v-for="b in number">
                            <div class="img">
                                <a href="">
                                    <img :src="b.src" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a href="">
                                    {{b.words}}
                                </a>
                                <span>
                                    {{b.span}}
                                </span>
                            </div>
                            <div class="func">
                                <a href="" class="block-link">免费试读</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
		</div>
</template>

<script>
	export default{
		data() {
			return {
				bookTitle: "读书",
				leftMenu:['分类浏览','阅读','作者','书评','购书单'],
				group:[
					{span:"文学",liList:["小说","随笔","日本文学","散文","诗歌","童话","名著","港台","更多"]},
					{span:"流行",liList:["漫画","绘本","青春","科幻","言情","奇幻","武侠","更多"]},
					{span:"文化",liList:["历史","哲学","传记","设计","建筑","电影","回忆录","音乐","更多"]},
					{span:"生活",liList:["旅行","励志","教育","职场","美食","灵修","健康","家居","更多"]},
					{span:"经管",liList:["经济学","管理","商业","金融","营销","理财","股票","企业史","更多"]},
					{span:"科技",liList:["科普","互联网","编程","交互设计","算法","通信","神经网络","更多"]},
				],
				newBook:[
					{src:require('../assets/img/q1.jpg'),words:"六异录",span:"朱大可"},
					{src:require('../assets/img/q2.jpg'),words:"克里斯托弗和他...",span:"〔美〕克里斯托..."},
					{src:require('../assets/img/q3.jpg'),words:"人类善恶小史",span:"〔西〕策妄·阿..."},
					{src:require('../assets/img/q4.jpg'),words:"复杂生命的起源...",span:"〔英〕尼克·莱..."},
				],
				number:[
					{src:require('../assets/img/q5.jpg'),words:"人间真实粥小姐...",span:"免费"},
					{src:require('../assets/img/q6.jpg'),words:"偶然爱情",span:"免费"},
					{src:require('../assets/img/q7.jpg'),words:"跃马关东",span:"10.90元"},
					{src:require('../assets/img/q8.jpg'),words:"长安第四馆",span:"免费"},
				]
			}
		},
	}
</script>

<style>
	.book .clearfix::after{
	    content: "";
	    display: block;
	    clear: both;
	}
	.book .containe{
	    width: 950px;
	    margin: 0 auto;
	}
	.book .aside-left{
	    float: left;
	    margin-right: 20px;
	    width: 100px;
	}
	.book .aside-right{
	    float: right;
	    margin-left: 30px;
	    width: 265px;
	}
	.book .main{
	    overflow: hidden;
	}
	.book .aside-left .title{
		font-size: 24px;
		line-height: 1.8;
	}
	.book .aside-left .left-menu li{
		font-size: 14px;
		line-height: 1.8;
	}
	.book .book-area a{
	    color: #494949;
	}
	.book .book-area a:hover{
		color: #fff;
		background-color: #37a;
	}
	.book .book-area a:active{
		color: #fff;
		background-color: #f93;
	}
	.book .app-icon-1{
	    width: 50px;
	    height: 50px;
	    display: block;
	    background: url("../assets/img/app_icons.jpg") no-repeat;
	    box-shadow: 1px 1px 2px #999;
	    border-radius: 10px;
		margin: 25px 0 5px 0;
	}
	.book .section-title{
	    margin: 12px 0;
	}
	.book .section-title .title{
	    display: inline;
	    color: #072;
	    font-size: 15px;
	}
	.book .section-title .title::after{
	    content: " · · · · · · ";
	}
	.book .section-title .link{
	    font-size: 12px;
		color: #27a;
	}
	.book .section-title .link::before{
	    content: "(";
	}
	.book .section-title .link::after{
	    content: ")";
	}
	.book .section-title a:hover{
	    background: #37a;
	    color: #fff;
	}
	.book .book-area .right-menu-list li{
	    margin-right: 10px;
		float: left;
		font-size: 13px;
		color: #614e3c;
		line-height: 1.62;
	}
	.book .book-area .right-menu-list li span{
	    color: #999;
	}
	.book .book-area .group{
	    border-bottom: 1px solid #eaeaea;
	    padding: 10px 0;
	}
	.book .book-area .group:last-child{
	    border-bottom: none;
	}
	.book .book-area .item-list{
		margin: 25px 0;
	}
	.book .book-area .item-list li{
	    width: 100px;
	    margin-right: 30px;
	    font-size: 13px;
	    text-align: center;
		float: left;
	}
	.book .book-area .item-list li img{
		width: 100%;
		height: 100%;
	}
	.book .book-area .item-list li .img a:hover{
		background-color: #fff;
	}
	.book .book-area .item-list li .words{
	    margin-top: 15px;
		margin-bottom: 8px;
	}
	.book .book-area .item-list li .words span{
	    display: block;
	    color: #111;
	    font-size: 12px;
	    margin-top: 8px;
	    margin-bottom: 3px;
	}
	.book .book-area .item-list li .func .block-link{
	    background-color: #999a95;
	    color: #fff;
	}
	.book .book-area .item-list li .func .block-link:hover{
	    background-color: #878882;
	}
</style>