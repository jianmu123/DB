<template>
	<!-- 小组 -->
	<div class="gop">
	<div class="section">
		<div class="containe group-area clearfix">
			<div class="aside-left">
				<div class="title">
					<h2>
						<a href="">{{leftTitle}}</a>
					</h2>
				</div>
				<nav class="left-menu">
					<ul>
						<li v-for="left in leftMenu">
							<a href="">{{left}}</a>
						</li>
					</ul>
				</nav>
			</div>
			<div class="aside-right">
				<div class="section-title">
					<h3 class="title">{{rightTitle}}</h3>
				</div>
				<div class="group" v-for="g in group">
					<div class="group-name">
						<a href="">{{g.groupName}}</a>
					</div>
					<ul class="right-menu-list clearfix">
						<li v-for="l in g.groupMenu"><a href="">{{l}}</a></li>
					</ul>
				</div>
			</div>
			<div class="main">
				<div class="section-title">
					<h3 class="title">{{mainTitle}}</h3>
					<span class="link">
						<a href="">
							{{mainLink}}
						</a>
					</span>
				</div>
				<ul class="item-list clearfix">
					<li v-for="mainList in mainList">
						<div class="img">
							<a href="">
								<img :src="mainList.img" alt="">
							</a>
						</div>
						<div class="words">
							<a href="">{{mainList.words}}</a>
							<span>
								{{mainList.num}}
							</span>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	</div>
</template>
<script>
	export default {
		data(){
			return{
				leftTitle:"小组",
				leftMenu:["精选","文化","行摄","娱乐","时尚","生活","科技"],
				rightTitle:"小组分类······",
				group:[
					{groupName: "兴趣",groupMenu: ["旅行","摄影","影视","音乐","文学","游戏","动漫","运动","戏曲","桌游","怪癖"]},
					{groupName: "生活",groupMenu: ["健康","美食","宠物","美容","化妆","护肤","服饰","公益","家庭","育儿","汽车"]},
					{groupName: "购物",groupMenu: ["淘宝","二手","团购","数码","品牌","文具"]},
					{groupName: "社会",groupMenu: ["求职","租房","励志","留学","出国","理财","传媒","创业","考试"]},
					{groupName: "艺术",groupMenu: ["设计","手工","展览","曲艺","舞蹈","雕塑","雕塑","纹身"]},
					{groupName: "学术",groupMenu: ["人文","社科","影视","音乐","宗教","语言"]},
					{groupName: "情感",groupMenu: ["恋爱","心情","影视","音乐","文学","LES","GAY","塔罗"]},
					{groupName: "闲聊",groupMenu: ["吐槽","笑话","影视","音乐","文学","游戏","发泄"]},
					],
				mainTitle:"热门小组",
				mainLink:"更多",
				mainList:[
					{img:require('../assets/img/cover1.jpg'),words:"我爱三毛",num:"47392 个成员"},
					{img:require('../assets/img/cover2.jpg'),words:"沙发客",num:"23047 个成员"},
					{img:require('../assets/img/cover3.jpg'),words:"西双版纳",num:"12457 个成员"},
					{img:require('../assets/img/cover4.webp'),words:"刘慈欣",num:"30407 个成员"},
					{img:require('../assets/img/cover5.webp'),words:"记事本圆梦小姐",num:"1130407 个成员"},
					{img:require('../assets/img/cover6.webp'),words:"这辈子一定要做几件疯狂的事",num:"93407 个成员"},
					{img:require('../assets/img/cover7.jpg'),words:"自己给自己剪头发",num:"35407 个成员"},
					{img:require('../assets/img/cover8.jpg'),words:"我们就是要做衣服给自己穿",num:"3685 个成员"},
					{img:require('../assets/img/cover9.jpg'),words:"美丽心灵",num:"32407 个成员"},
				]
			}
		}

	}
</script>

<style>
	.gop .section .clearfix::after{
	    content: "";
	    display: block;
	    clear: both;
	}
	.gop .section {
		line-height: 2;
		padding: 35px 0;
		background-color: #f7f7f7;
	}
	.gop .section .containe {
		width: 950px;
		margin: 0 auto;
	}
	.gop .section .aside-left {
		float: left;
		margin-right: 20px;
		width: 100px;
	}
	.gop .section .aside-right {
		float: right;
		margin-left: 30px;
		width: 265px;
	}
	.gop .section .main {
		overflow: hidden;
	}
	.gop .section .group-area a{
	    color: #017a85;
	}
	.gop .section .group-area a:hover{
	    color: #fff !important;
		background-color: #37a;
	}
	.gop .section .group-area a:active{
	    color: #fff !important;
		background-color: #f93;
	}
	.gop .section .aside-left .title{
		font-size: 24px;
	}
	.gop .section .aside-left .left-menu{
		font-size: 14px;
	}
	.gop .section .aside-right .section-title{
		font: 15px Arial, Helvetica, sans-serif;
		color: #072;
		margin: 0 0 12px 0;
		line-height: 150%;
	}
	.gop .section .aside-right .group {
		margin-bottom: 5px;
	}
	.gop .section .aside-right .group .group-name a{
		color: #333;
		font-size: 14px;
	}
	.gop .section .aside-right .group .group-name a::after{
		content: "»";
	}
	.gop .section .aside-right .group .right-menu-list li{
		float: left;
		margin-right: 10px;
		font-size: 12px;
	}
	.gop .section .main .section-title{
	    margin: 8px 0 12px;
	}
	.gop .section .main .section-title .title{
	    display: inline;
	    color: #072;
	    font-size: 15px;
	}
	.gop .section .main .section-title .title::after{
	    content: " · · · · · · ";
	}
	.gop .section .main .section-title .link{
	    font-size: 12px;
	}
	.gop .section .main .section-title .link::before{
	    content: "(";
	}
	.gop .section .main .section-title .link::after{
	    content: ")";
	}
	.gop .section .main .item-list li{
		float: left;
		width: 248px;
		height: 58px;
		margin-top: 30px;
		overflow: hidden;
		text-align: left;
		font-size: 13px;
		color: #999;
	}
	.gop .section .main .item-list li .img{
		width: 48px;
		height: 48px;
		float: left;
		margin-right: 15px;
		margin-bottom: 10px;
	}
	.gop .section .main .item-list li img{
		width: 100%;
	}
	.gop .section .main .item-list .img a:hover{
		background-color: #FFFFFF;
	}
	.gop .section .main .item-list li .words{
	    overflow: hidden;
	}
	.gop .section .main .item-list li .words span{
	    display: block;
	    font-size: 12px;
	    color: #999;
	}
</style>