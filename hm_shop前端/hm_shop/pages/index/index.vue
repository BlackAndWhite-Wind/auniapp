<template>
	<view class="home">
		<!-- 轮播图 -->
		<swiper :indicator-dots="true" :autoplay="true" :interval="3000" :duration="1000">
			<swiper-item v-for="(item,index) in swipers" :key="index">
				<image :src="item.img"></image>
			</swiper-item>
		</swiper>

		<!-- 导航区域 -->
		<view class="nav">
			<view class="nav_item" v-for="(item,index) in navs" :key="index" @click="navItemClick(item.path)">
				<view :class="item.icon"></view>
				<text>{{item.title}}</text>
			</view>
		</view>

		<!-- 推荐商品区域 -->
		<view class="hot_goods">
			<view class="tit">推荐商品</view>
			<!-- 自定义组件 -->
			<goods-list :goods="goods" @goodsItemClick="goGoodsDetail"></goods-list>
		</view>

	</view>
</template>

<script>
	import goodsList from '../../components/goods-list/goods-list.vue'
	export default {
		data() {
			return {
				//轮播图数据
				swipers: [],
				//推荐商品数据
				goods: [],
				//当前页码
				number:[],
				//导航栏数据
				navs: [{
						icon: 'iconfont icon-ziyuan',
						title: '黑马超市',
						path: '/pages/goods/goods'
					},
					{
						icon: 'iconfont icon-guanyuwomen',
						title: '联系我们',
						path: '/pages/contact/contact'
					},
					{
						icon: 'iconfont icon-tupian',
						title: '社区图片',
						path: '/pages/pics/pics'
					},
					{
						icon: 'iconfont icon-shipin',
						title: '学习视频',
						path: '/pages/videos/videos'
					}
				]
			}
		},
		onLoad() {
			//监听页面加载,调取获得轮播图数据
			this.getSwipers();
			//获取到商品列表值
			this.getGoodsList();
		},
		// 注册组件
		components: {
			"goods-list": goodsList
		},
		methods: {
			// 获取轮播图数据
			async getSwipers() {
				//this指向问题解决
				const _this = this;
				// uni.request({
				// 	url: 'http://api-hmugo-web.itheima.net/api/public/v1/home/swiperdata',
				// 	success: (res) => {
				// 		if (res.statusCode != 200) {
				// 			return uni.showToast({
				// 				icon: "error",
				// 				title: '获取数据失败'
				// 			});
				// 		}
				// 		this.swipers = res.data.message;
				// 	}
				// })


				const res = await _this.$myRequest({
					url: "/getlunbo",
				})
				this.swipers = res.data.message;
				console.log("轮播图数据：", this.swipers);
			},
			
			// 获取商品列表的数据  写法1
			getGoodsList() {
				uni.request({
					url: "http://192.168.1.7:8090/getgoods?pageindex="+this.number,
					success: (res) => {
						if (res.statusCode != 200) {
							return uni.showToast({
								icon: "error",
								title: '获取数据失败'
							});
						}
						this.goods = res.data.message;
						console.log("index页商品列表的数据：", this.goods);
					}
				})
			},



			//导航点击的处理函数,接收到path
			navItemClick(path) {
				console.log("导航跳转路径", path);
				uni.navigateTo({
					url: path,
				})
			},
			//跳转到商品详情页
			goGoodsDetail (id) {
				uni.navigateTo({
					url: '../goods/goods-detail?id='+id
				})
			}
		}

	}
</script>

<style lang="scss">
	// 轮播图css
	.home {
		swiper {
			width: 750rpx;
			height: 380rpx;

			image {
				height: 100%;
				width: 100%;
			}
		}

		// 导航css
		.nav {
			display: flex;

			.nav_item {
				width: 25%;
				text-align: center;

				view {
					width: 120rpx;
					height: 120rpx;
					background: $shop-color;
					border-radius: 60rpx;
					margin: 10px auto;
					line-height: 120rpx;
					color: #FFFFFF;
					font-size: 52rpx;
				}

				.icon-tupian {
					font-size: 47rpx;
				}

				text {
					font-size: 30rpx;
				}
			}
		}

		// 推荐商品css
		.hot_goods {
			background: #eee;
			// 避免字体颜色冲突没有边框色
			overflow: hidden;
			margin-top: 10px;

			.tit {
				height: 50px;
				line-height: 50px;
				color: $shop-color;
				text-align: center;
				// 字体间距
				letter-spacing: 20px;
				background: #fff;
				margin: 6rpx 0;
			}
		}
	}
</style>
