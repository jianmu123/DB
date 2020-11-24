<template>
	<TopBar></TopBar>
	<Movie></Movie>
	<FooterBar></FooterBar>
</template>

<script>
	import TopBar from "../components/TopBar.vue"
	import Movie from '../components/Movie.vue'
	import FooterBar from "../components/FooterBar.vue"
	
	export default{
		components:{TopBar,Movie,FooterBar}
	}
</script>

<style>
</style>
