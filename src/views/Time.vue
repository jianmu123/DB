<template>
	<TopBar></TopBar>
	<TimeBar></TimeBar>
	<FooterBar></FooterBar>
</template>

<script>
	import TopBar from "../components/TopBar.vue"
	import FooterBar from "../components/FooterBar.vue"
	import TimeBar	from '../components/TimeBar.vue'
	export default {
		components:{
			TopBar,FooterBar,TimeBar
		},
	}
</script>

<style>
</style>
