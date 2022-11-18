<template>
	<view>
		<view class="goods_list">
			<view class="goods_item" v-for="(item,index) in goods" :key="index" @click="navigator(item.id)">
				<image :src="item.imgUrl"></image>
				<view class="price">
					<text>￥{{item.sellPrice}}</text>
					<text>￥{{item.marketPrice}}</text>
				</view>
				<view class="name">
					{{item.title}}
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		//父组件传递来的数据
		props: ['goods'],
		data() {
			return {
				
			}
		},
		methods: {
			//点击商品 传入id 调用index和goods中跳转的事件方法。实现复用
			navigator(id){
				console.log("跳转商品详情页id",id);
				this.$emit('goodsItemClick',id)
			}
		}
	}
</script>

<style lang="scss">
	//商品详情css
	.goods_list {
		padding: 0 15rpx;
		//弹性布局 https://www.cnblogs.com/hellocd/p/10443237.html
		display: flex;
		//换行
		flex-wrap: wrap;
		justify-content: space-between;

		.goods_item {
			background: #fff;
			width: 355rpx;
			margin: 10rpx 0;
			padding: 15rpx;
			box-sizing: border-box;

			image {
				width: 80%;
				height: 150px;
				display: block;
				margin: auto;
			}

			.price {
				color: $shop-color;
				font-size: 36rpx;
				margin: 20rpx 0 5rpx 0;

				text:nth-child(2) {
					color: #ccc;
					font-size: 28rpx;
					margin-left: 17rpx;
					text-decoration: line-through;
				}
			}

			.name {
				font-size: 28rpx;
				line-height: 50rpx;
				padding-bottom: 15rpx;
				padding-top: 10rpx;
			}
		}
	}
</style>
