<template>
	<view>
		<!-- 资讯 -->
		<view class="news">
			<!-- 子组件  并传递值 -->
			<news-item :newDataList="newsList" @goNewsDetailPage="goNewsDetailPage"></news-item>
		</view>
	</view>
</template>

<script>
	import newsPageDataList from '../../components/news-item/news-item.vue'
	export default {
		components:{
			"news-item":newsPageDataList
		},
		data() {
			return {
				//资讯数据
				newsList:[],
			}
		},
		onLoad() {
			this.getNews();
		},
		methods: {
			async getNews(){
				const res=await this.$myRequest({
					url:'/getnewslist',
				})
				this.newsList = res.data.message;
				console.log("资讯数据",this.newsList);
			},
			//跳转到资讯详情页，拿到子组件传递的id
			goNewsDetailPage(id){
				console.log("跳转资讯详情页id",id);
				uni.navigateTo({
					url: './news-detail?id='+id
				})

			}
		}
	}
</script>

<style lang="scss">
	.news{
		
	}
</style>
