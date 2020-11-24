<template>
	<!-- 豆瓣时间 -->
	<div class="wrapper">
		<div class="box">
			<h2><a href="" class="">豆瓣时间</a></h2>
			<!-- 				<span class="hot">热门专栏······</span>
				<p class="more">(更多)</p> -->
			<div class="section-title">
				<h3 class="title">热门专栏</h3>
				<span class="link">
					<a href="">
						更多
					</a>
				</span>
			</div>

			<div class="pic">
				<ul>
					<li v-for="pic in picList">
						<a href="" class="cover">
							<img :src="pic.url" alt="">
						</a>
						<a href="" class="title">{{pic.message}}</a>
						<span class="type">{{pic.type}}</span>
					</li>
				</ul>
			</div>
		</div>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				picList: [{
						url: require('../assets/img/time1.jpg'),
						message: '可复制的语言学习密码———— 一套方法搞定所有外语',
						type: '音频专栏'
					},
					{
						url: require('../assets/img/time2.jpg'),
						message: '复旦沈奕斐的社会爱情思维课',
						type: '音频专栏'
					},
					{
						url: require('../assets/img/time3.jpg'),
						message: '苗炜·文学体验30讲——陪你度过这时代的晚上',
						type: '音频专栏'
					},
					{
						url: require('../assets/img/time4.jpg'),
						message: '我们为什么爱宋朝——宋朝美学十讲',
						type: '音频专栏'
					},
					{
						url: require('../assets/img/time5.jpg'),
						message: '了不起的文明现场——一线考古队长带你探秘历史',
						type: '音频专栏'
					},
					{
						url: require('../assets/img/time6.jpg'),
						message: '美国故事的背面——黑帮电影中的社会、文化与历史',
						type: '音频专栏'
					},
					{
						url: require('../assets/img/time7.png'),
						message: '用金钱丈量人生可能——32堂简七极简理财课',
						type: '音频专栏'
					},
					{
						url: require('../assets/img/time8.jpg'),
						message: '程何的极简音乐剧必修课',
						type: '视频专栏'
					},
					{
						url: require('../assets/img/time9.jpg'),
						message: '一步到位的收纳法——20堂课打造不凌乱的家',
						type: '音频专栏'
					},
					{
						url: require('../assets/img/time10.jpg'),
						message: '如何读透一本书——12堂阅读写作训练课',
						type: '音频专栏'
					},
				]
			}
		}
	}
</script>

<style>
	.wrapper {
		background-color: #F7F7F7;
		height: 680px;
		/* margin-top: 30px; */
	}

	.box {
		width: 750px;
		height: 594px;
		/* background-color: red; */
		margin: 0 auto;
		position: relative;
	}

	.wrapper .box h2 {
		position: absolute;
		color: #4B4B4B;
		top: 38px;
		left: -150px;
		font: 28px Arial, Helvetica, sans-serif;
	}

	.wrapper .box .section-title {
		margin: 12px 0;
		padding-top: 50px;
	}

	.wrapper .box .section-title .title {
		display: inline;
		color: #072;
		font-size: 15px;
	}

	.wrapper .box .section-title .title::after {
		content: " · · · · · · ";
	}

	.wrapper .box .section-title .link {
		font-size: 12px;
		
	}
	.wrapper .box .section-title .link a{
		color: #2277AA;
	}

	.wrapper .box .section-title .link::before {
		content: "(";
	}

	.wrapper .box .section-title .link::after {
		content: ")";
	}

	.wrapper .box .section-title a:hover {
		background: #37a;
		color: #fff;
	}

	h2 a {
		color: #333;
	}
	.wrapper .pic {
		width: 950px;
		height: 594px;
		/* background-color: red;	 */
		margin: 0 auto;
		/* display: flex; */
	}

	.pic li {
		display: inline-block;
		width: 100px;
		vertical-align: top;
		margin-right: 60px;
		text-align: center;
		/* margin-bottom: 30px; */
		margin-top: 20px;
	}

	.pic li .cover {
		display: block;
		margin-bottom: 10px;
		position: relative;
		overflow: hidden;

	}

	.pic li .title {
		color: #333333;
		font-size: 13px;
		line-height: 1.38;
	}

	.pic li .cover img {
		/* flex: 1; */
		width: 100px;
		height: 141px;
		transition: all 0.6s;
	}

	.pic li .cover img:hover {
		width: 100%;

		transform: scale(1.3);
	}

	li .cover:after {
		background: url(../assets/img/audio.png) center/14px no-repeat;
	}

	li .cover:after {
		content: '';
		position: absolute;
		width: 12px;
		height: 12px;
		bottom: 10px;
		right: 10px;
	}

	li:nth-child(8) .cover:after {
		background: url(../assets/img/video.png) center/14px no-repeat;
	}

	li:nth-child(8) .cover:after {
		content: '';
		position: absolute;
		width: 15px;
		height: 12px;
		bottom: 10px;
		right: 8px;
	}

	.pic li .type {
		color: #999999;
		line-height: 1;
		margin-top: 10px;
		display: block;
	}

	h2 a:hover {
		color: white;
		background-color: #3377AA;
	}

	.pic li .title:hover {
		color: white;
		background-color: #3377AA;
	}
</style>
