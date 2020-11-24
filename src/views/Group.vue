<template>
	<TopBar></TopBar>
	<Group></Group>
	<FooterBar></FooterBar>
</template>

<script>
	import TopBar from "../components/TopBar.vue"
	import Group from '../components/Group.vue'
	import FooterBar from '../components/FooterBar.vue'
	
	export default{
		components:{TopBar,Group,FooterBar}
	}
</script>

<style>
</style>
