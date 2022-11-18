<template>
	<view>
		<!-- 资讯页 点击跳转-->
		<view class="news_item" v-for="(item,index) in newDataList" :key="item.id" @click="navigator(item.id)">
			<image :src="item.imgUrl"></image>
			<view class="right">
				<view class="title">
					{{item.title}}
				</view>
				<view class="info">
					<!-- 时间格式，后台已处理 -->
					<text>发表时间：{{item.addTime}}</text>
					<text>浏览: x {{item.click}} x</text>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		//接收父组件传递的值
		props: ['newDataList'],
		// filters: {
		// 	//过滤器 用于格式化时间
		// 	formatData(data) {
		// 		const nDate = new Date(data);
		// 		const year = nDate.getFullYear();
		// 		const month = nDate.getMonth().toString().padStart(2, 0);
				
		// 		const day = nDate.getDate().toString().padStart(2, 0);
		// 		return year + '-' + month + '-' + day;
		// 	}
		// },
		data() {
			return {

			}
		},
		methods: {
			navigator(id){
				//调用父组件的方法 传递id
				this.$emit("goNewsDetailPage",id)
			}
		}
	}
</script>

<style lang="scss">
	.news_item {
		display: flex;
		padding: 10rpx 20rpx;
		border-bottom: 1px solid $shop-color;

		image {
			width: 200rpx;
			height: 150rpx;
			min-width: 200rpx;
			max-width: 200rpx;
		}

		.right {
			margin-left: 15rpx;
			display: flex;
			// 弹性布局 侧轴显示
			flex-direction: column;
			// 两边对齐
			justify-content: space-between;

			.title {
				font-size: 30rpx;
			}

			.info {
				font-size: 24rpx;

				text:nth-child(2) {
					margin-left: 40rpx;
				}
			}
		}

	}
</style>
