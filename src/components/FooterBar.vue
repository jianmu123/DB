<template>
	<!-- 底部 -->
	<footer class="footer">
	    <div class="containe">
	        <div class="left">
	            <span>© 2005－2020 douban.com, all rights reserved 北京豆网科技有限公司</span>
	            <br>
	            <a href="">京ICP证090015号</a>
	            <span>京ICP备11027288号</span>
	            <a href="">网络视听许可证0110418号</a>
				<a href="">食品经营许可证</a>
				<br>
	            <span>京网文[2015]2026-368号</span>
				<a href="">新出发京批字第直160029号</a>
				<span>新出网证(京)字129号</span>
				<br>
	            <span>违法和不良信息投诉电话：4008353331-9 </span>
				<img src="../assets/img/email.jpg" alt="" class="email">
	            <br>
	            <img src="../assets/img/jubao.png" alt="">
	            <a href=""> 中国互联网举报中心</a>
	            <span>电话：12377</span>
	            <img src="../assets/img/biaoshi.gif" alt="">
	            <a href="">京公网安备11010502000728 </a>
	        </div>
	        <div class="right">
	            <nav class="menu">
					<a href=""  v-for="message in menuList">{{message}} ·</a>
	            </nav>
	            <div class="adv">
	                <a href="">
	                    <img src="../assets/img/adv3.jpg" alt="">
	                </a>
	            </div>
	        </div>
	    </div>
	</footer>
</template>

<script>
	export default{
		components:{},
		data(){
			return{
				menuList:['关于豆瓣','在豆瓣工作','联系我们','法律声明','帮助中心','移动应用','豆瓣广告']
			}
		},
	}
</script>

<style>
	.footer .containe{
	    border-top: 1px dashed #dcdcdc;
		width: 1080px;
		/* height: 350px; */
		margin: 0 auto;
	    padding-top: 15px;
	    padding-bottom: 45px;
	}
	.footer{
	    font-size: 12px;
	    line-height: 1.5;
	    color: #999;
		margin-top: 50px;
	}
	.left,.right{
	    width: 50%;
	}
	.footer .left{
		float: left;
		line-height: 25px;
	}
	.footer .left img{
	    width: 15px;
	    vertical-align: middle;
	}
	.footer .containe  .left a{
		color: #3377AA;
	}
	
	.footer .containe .left a:hover{
		color: white;
		background-color: #3377AA;
	}
	.footer .left .email{
		width: 115px;
		height: 25px;
	}
	
	.footer .right{
		float: right;
		/* margin-left: 10px; */
	}
	.footer .right .menu a{
	    display: inline-block;
	    margin: 0px 2px;
		color: #3377AA;
	}
	.footer .right .menu a:first-child{
	    margin-left: 0;
	}
	.footer .adv{
	    width: 150px;
	    margin-top: 20px;
	}
	.footer .right .menu a:hover{
		color: white;
		background-color: #3377AA;
	}
	/* 页脚 */
</style>
