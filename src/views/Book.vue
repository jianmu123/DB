<template>
	<TopBar></TopBar>
	<Book></Book>
	<FooterBar></FooterBar>
</template>

<script>
	import TopBar from "../components/TopBar.vue"
	import Book from '../components/Book.vue'
	import FooterBar from '../components/FooterBar.vue'
	
	export default{
		components:{TopBar,Book,FooterBar}
	}
</script>

<style>
</style>
