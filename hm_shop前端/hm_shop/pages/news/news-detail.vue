<template>
	<view>
		<text v-if="detail=='n'">暂无相关数据</text>
		<view class="news_detail">
			<view  v-if="detail!='n'">
				<text>{{detail.title}}</text>
				<view class="info">
					<text>{{detail.addTime}}</text>
					<text>浏览：{{detail.click}}</text>
				</view>
				<view class="content">
					<!-- <text v-html="detail.content"></text> -->
					<!-- rich-text 支持富文本 -->
					<rich-text :nodes="detail.content"></rich-text>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				id: "",
				//详情数据回显
				detail:"",
			}
		},
		//页面加载拿到传递来的参数id值
		onLoad(value) {
			this.id= value.id;
			console.log("onload拿到id",value);
			//回显详情数据方法
			this.getNewsDetail();
		},
		methods: {
			//发送请求 传入id获取资讯详情
			async getNewsDetail() {
				const res = await this.$myRequest({
					url: "/getnew/"+this.id
				})
				this.detail = res.data.message[0];
				console.log("id:"+this.id+" 资讯数据",this.detail);
			}
		}
	}
</script>

<style lang="scss">
	.news_detail {
		font-size: 30rpx;
		padding: 0 20rpx;

		.title {
			text-align: center;
			width: 710rpx;
			display: block;
			margin: 20rpx 0;
		}

		.info {
			
			display: flex;
			justify-content: space-between;
		}
		.content{
			margin-top: 10px;
		}
	}
</style>
