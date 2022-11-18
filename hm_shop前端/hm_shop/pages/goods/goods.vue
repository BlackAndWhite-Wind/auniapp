<template>
	<view>
		<!-- 商品列表页 -->
		<view class="goods_list">
			<!-- 自定义组件 -->
			<goods-list :goods="goods" @goodsItemClick="goGoodsDetail"></goods-list>

		</view>
		<!-- 当没有数据的时候 控制显示 -->
		<view class="isOver" v-if="flag">
			------ 我是有底线的 ------
		</view>
	</view>
</template>

<script>
	import goodsList from '../../components/goods-list/goods-list.vue'
	export default {
		//注册组件
		components: {
			"goods-list": goodsList
		},
		data() {
			return {
				pageindex: 1,
				goods: [],
				flag: false
			}
		},
		methods: {
			//获取商品列表的数据
			//关闭下拉刷新写法2，调取时写箭头函数，此处定义

			// 获取商品列表的数据  写法2
			async getGoodsList(stopRefresh) {
				const _this = this;
				const res = await _this.$myRequest({
					url: "/getgoods?pageindex=" + this.pageindex,
				})
				// ...拷贝合并对象，方便滑到底部数据叠加展示
				this.goods = [...this.goods, ...res.data.message];
				console.log("goods页商品列表的数据：", this.goods);
				stopRefresh && stopRefresh();
			},
			//跳转到商品详情页 和index页一样
			goGoodsDetail(id) {
				uni.navigateTo({
					url: '../goods/goods-detail?id=' + id
				})
			}
		},
		onLoad() {
			console.log("onload");
			this.getGoodsList();
		},
		// 监听到页面到底部触发的事件，滑到底部加载新的数据
		// https://uniapp.dcloud.io/tutorial/page.html#lifecycle
		onReachBottom() {
			console.log("数据总条数：", this.goods.length);
			//下拉延时加载
			setTimeout(() => {
				// 总条数小于页码*10 代表没有数据，提示有底线、
				// if(this.goods.length<this.pageindex*10) return this.flag = true;

				//总条数余10不等于0 返回，提示有底线、 后台每页控制为10条数据
				if (this.goods.length % 10 != 0) return this.flag = true;

				this.pageindex++
				this.getGoodsList();
			}, 500)

		},
		//监听下拉刷新
		onPullDownRefresh() {
			//页面设置为1
			this.pageindex = 1;
			this.goods = [];
			//延时调取数据展示
			setTimeout(() => {
				//数据刷新完之后，关闭下拉刷新 方法2
				this.getGoodsList(() => {
					uni.stopPullDownRefresh();
				});
				uni.showToast({
					title: "刷新页面成功",
					icon: "success"
				});
				//数据刷新完之后，关闭下拉刷新 方法1. 不需要调取时写箭头函数
				// uni.stopPullDownRefresh();
			}, 1000)

			// 底线提示不展示
			this.flag = false;
		}
	}
</script>

<style lang="scss">
	.goods_list {
		background: #eee;
	}

	.isOver {
		width: 100%;
		height: 50px;
		line-height: 50px;
		text-align: center;
		// background: #fff;
		font-size: 28rpx;
	}
</style>
