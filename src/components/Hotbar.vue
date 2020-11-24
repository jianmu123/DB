<template>
	<div class="hot">
		<div class="section-title">
			<h3 class="title">热点内容</h3>
			<span class="link">
				<a href="">
					更多
				</a>
			</span>
		</div>
	</div>
</template>

<script>
</script>

<style>
	.hot .section-title{
	    margin: 12px 0;
	}
	.hot .section-title .title{
	    display: inline;
	    color: #072;
	    font-size: 15px;
	}
	.hot .section-title .title::after{
	    content: " · · · · · · ";
	}
	.hot .section-title .link{
	    font-size: 12px;
		
	}
	.hot .section-title .link::before{
	    content: "(";
	}
	.hot .section-title .link::after{
	    content: ")";
	}
	.hot .section-title a:hover{
	    background: #37a;
	    color: #fff;
	}
</style>
