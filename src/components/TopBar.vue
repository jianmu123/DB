<template>
	<header>
		<!-- 容器 -->
		<div class="container">
			<!-- 头部 -->
			<div class="head">
				<div class="logo">
					<router-link to="/">
						<img :src="logo">
					</router-link>
				</div>
				<span class="in">
					<input placeholder="书籍 、电影 、音乐 、小组 、小站 、成员" />
				</span>
				<span class="fa fa-search"></span>
				<ul>
					<li v-for="obj in classList"> <router-link :to="obj.addr" :class="obj.clas" ></router-link></li>
				</ul>
			</div>
		</div>
	</header>
</template>

<script>
	export default{
		data(){
			return{
				logo:require('../assets/img/logo_db.png'),
				classList:[
				{
					addr:'/time',
					clas:'time'
				},
				{
					addr:'/movie',
					clas:'movie'
				},
				{
					addr:'/group',
					clas:'group'
				},
				{
					addr:'/book',
					clas:'book'
				},
				{
					addr:'/music',
					clas:'music'
				},
				{
					addr:'/market',
					clas:'market'
				},
				{
					addr:'/events',
					clas:'events'
				},
				]
			}
		},
	}
</script>

<style>
	header{
		margin-bottom: 29px;
	}
	/* 头部 */
	.container .head {
		width: 1100px;
		height: 34px;
		/* background-color: red; */
		margin: 0 auto;
		position: relative;
		/* margin-bottom: 10px; */
	}

	.head .logo {
		width: 160px;
		height: 34px;
		/* background-color: aliceblue; */
		margin-right: 20px;
	}

	.head .in input {
		width: 280px;
		height: 32px;
		position: relative;
		left: 184px;
		top: -33px;
		padding-left: 3px;
		border: 1px solid #ccc;
		outline: none;
	}

	/* 修改placeholder的默认颜色 */
	input::-webkit-input-placeholder {
		font-size: 13px;
		color: #CCCCCC;
	}

	.head .fa-search {
		position: absolute;
		top: 8px;
		left: 440px;
		color: #D5D5D5;
		cursor: pointer;
	}

	.head ul {
		position: absolute;
		top: 8px;
		left: 563px;
	}

	.head ul li {
		list-style: none;
		float: left;
		margin-left: 22px;
	}

	.head ul li:first-child {
		margin-left: 0px;
	}

	.head ul li a {
		display: inline-block;
		width: 40px;
		height: 20px;
		overflow: hidden;
		background: url(../assets/img/font-list.png) no-repeat 0 0;
	}

	.head ul li .movie {
		background-position: -60px 0;
	}

	.head ul li .music {
		background-position: -120px 0;
	}

	.head ul li .events {
		background-position: -299px 0;
	}

	.head ul li .group {
		background-position: -180px 0;
	}
	
	.head ul li .market {
		background-position: -422px 0;
	}
	.head ul li .book {
		background: url(../assets/img/read_nav.png);
	}

	.head ul li .time {
		background: url(../assets/img/time_nav.png);
	}

	.head ul li:hover {
		transform: scale(1.3);
	}
</style>
