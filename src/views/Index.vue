<template>
	<TopBar></TopBar>
	<Login></Login>

	<FooterBar></FooterBar>
</template>

<script>
	import TopBar from "../components/TopBar.vue"
	import Login from "../components/Login.vue"

	import FooterBar from "../components/FooterBar.vue"
	export default {
		components:{
			TopBar,Login,FooterBar
		},
	}
</script>

<style>
</style>
