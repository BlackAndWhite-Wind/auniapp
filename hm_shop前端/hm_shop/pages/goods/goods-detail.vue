<template>
	<view>
		<!-- 轮播图 -->
		<view class="goods_detail">
			<!--轮播api https://uniapp.dcloud.io/component/swiper.html -->


			<view style="text-align: center;margin: 98px auto;color: red;" v-if="swipers=='null'">
				该商品暂未设置轮播图数据
			</view>
			<swiper indicator-dots v-if="swipers.index!='null'">
				<swiper-item v-for="(item,index) in swipers" :key="index">
					<image :src="item.src"></image>
				</swiper-item>
			</swiper>

			<!-- 商品详情 -->
			<view class="box1">
				<view class="price">
					<text>￥{{goodsData.sellPrice}}</text>
					<text>￥{{goodsData.marketPrice}}</text>
				</view>
				<view class="goods_name">{{goodsData.title}}</view>
			</view>
			<view class="line"></view>
			<view class="box2">
				<view>货号：{{goodsData.goodsNo}}</view>
				<view>库存：{{goodsData.stockQuantity}}</view>
			</view>
			<view class="line"></view>

			<view class="box3">
				<view class="tit">详情介绍</view>
				<view class="content" v-if="content!='undefined'">
					<!-- 支持富文本 -->
					<rich-text :nodes="content"></rich-text>
				</view>
				<!-- 只在H5页面生效 -->
				<!-- #ifdef H5 -->
						<view style="text-align: center;margin: 5px auto;color: red;" v-if="typeof content==='undefined'">
							该商品暂无详情介绍数据
						</view>
				<!-- #endif -->
				
				<!-- 只在小程序生效 -->
				<!-- #ifdef MP-WEIXIN -->
				<view style="text-align: center;color: red;" v-if="this.noContent!=1">
					该商品暂无详情介绍数据
				</view>
				<!-- #endif -->
			</view>


			
			<!-- 扩展组件 购物 -->
			<view class="goos_nav">
				<uni-goods-nav :fill="true" :options="options" :buttonGroup="buttonGroup" @click="onClick"
					@buttonClick="buttonClick" />

			</view>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				//接收的id
				id: 0,
				//轮播图数据
				swipers: [],
				//商品详细信息
				goodsData: [],
				//详情介绍
				content: [],
				// 控制是否提示无详情介绍数据
				noContent: 1,

				//购物车 官方文档数据参考
				options: [{
					icon: 'headphones',
					text: '客服'
				}, {
					icon: 'shop',
					text: '店铺',
					info: 2,
					infoBackgroundColor: '#007aff',
					infoColor: "red"
				}, {
					icon: 'cart',
					text: '购物车',
					info: 2
				}],
				buttonGroup: [{
						text: '加入购物车',
						backgroundColor: '#ff0000',
						color: '#fff'
					},
					{
						text: '立即购买',
						backgroundColor: '#ffa200',
						color: '#fff'
					}
				]

			}
		},
		onLoad(value) {
			this.id = value.id;
			console.log("onload拿到商品id", this.id);
			//轮播图数据回显
			this.getSwipers();
			//商品详细信息
			this.getDetailInfo();
			//详情介绍数据
			this.getContent();
		},
		methods: {
			//获取轮播图数据
			async getSwipers() {
				const res = await this.$myRequest({
					url: '/getthumimages/' + this.id
				})
				console.log("详情页轮播图数据", res);
				this.swipers = res.data.message;
			},
			//获取商品详细信息
			async getDetailInfo() {
				const res = await this.$myRequest({
					url: '/getinfo/' + this.id,
				})
				this.goodsData = res.data.message[0];
				console.log("商品数据信息", this.goodsData);
			},
			//获取详情介绍
			async getContent() {
				const res = await this.$myRequest({
					url: '/getdesc/' + this.id,
				})
				this.content = res.data.message[0].content;
				//判断接收的值是否为undefined 用来提示无数据
				if (typeof this.content == "undefined") {
					this.noContent = 0;
				}

				console.log("详情介绍数据", this.content);
			},

			//购物车的点击事件(官方)
			onClick(e) {
				uni.showToast({
					title: `点击${e.content.text}`,
					icon: 'none'
				})
			},
			buttonClick(e) {
				console.log(e)
				this.options[2].info++
			}
		}
	}
</script>

<style lang="scss">
	.goods_detail {
		swiper {
			height: 700rpx;

			image {
				width: 100%;
				height: 100%;
			}
		}

		.box1 {
			padding: 10px;

			.price {
				font-size: 35rpx;
				color: $shop-color;
				line-height: 80rpx;

				// 原价样式 
				text:nth-child(2) {
					color: #ccc;
					font-size: 28rpx;
					text-decoration: line-through;
					margin-left: 20rpx;
				}
			}

			.goods_name {
				font-size: 32rpx;
				line-height: 60rpx;
			}
		}

		.box2 {
			padding: 0 10px;
			font-size: 32rpx;
			line-height: 70rpx;
		}

		.box3 {
			padding-bottom: 50px;

			.tit {
				font-size: 32rpx;
				padding-left: 10px;
				border-bottom: 1px solid #eee;
				line-height: 70rpx;
			}

			.content {
				padding: 10px;
				font-size: 28rpx;
				color: #333;
				line-height: 50rpx;
			}
		}
	}

	.goods_nav {
		position: fixed;
		bottom: 0;
		width: 100%;
	}

	.line {
		height: 10rpx;
		width: 750rpx;
		background: #eee;
	}

	// 购物车定位到底部
	.goos_nav {
		position: fixed;
		bottom: 0;
		width: 100%;
	}
</style>
