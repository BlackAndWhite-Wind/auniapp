<template>
	<view>
		<view class="pics">
			<!-- 左侧分类 -->
			<scroll-view class="left" style="width: 200rpx;height: 100vh;border-right: 1px solid #eee;" scroll-y="true">
				<view :class="active==index?'active':''" @click="leftCliclActive(index,item.id)"
					v-for="(item,index) in picCates" :key="item.id">
					{{item.title}}
				</view>
				
			</scroll-view>
			
			<!-- 右侧分类对应的数据 -->
			<scroll-view class="right" scroll-y>
				<text v-if="secondData=='null'">暂无数据</text>
				<view class="item" v-for="(item,index) in secondData" :key="index">
					<image :src="item.imgUrl" @click="previewImg(item.imgUrl)"></image>
					<text>{{item.title}}</text>
				</view>			
			</scroll-view>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				//分类数据
				picCates: [],
				//选中高亮 默认0，判断+1
				active: 0,
				//二级分类的数据
				secondData:[],
				//二级分类是否有数据
				secondLength:[]
			}
		},
		onLoad() {
			//页面加载执行的方法，直接获得到图片分类数据
			this.getPicsList();
		},
		methods: {
			//获取图片分类
			async getPicsList() {
				const _this = this;
				const res = await _this.$myRequest({
					url: "/getimgcategory"
				});
				console.log("分类列表数据", res.data);
				// 分类数据回显
				this.picCates = res.data.message;
				
				//刷新的时候 默认选中的一项每页数据展示，此操作避免
				//页面进来 一级分类的id直接获取到二级分类的数据.  参数1 高亮数据 参数2 分类详情
				this.leftCliclActive(0,this.picCates[0].id);
			},
			//点击分类设置为active，并获取当前分类数据
			async leftCliclActive(index,id) {
				console.log("点击的分类下标：", index,"id：",id);
				this.active = index;
				
				//携带当前分类的id参数 获取当前分类的数据，
				const res = await this.$myRequest({
					url:'/getimages?id='+id
				});
				this.secondData = res.data.message;
				console.log("当前分类包含的数据",this.secondData);
				
			},
			// 点击预览图片
			previewImg(current){
				//遍历出所有图片
				const urlAll = this.secondData.map(item=>{
					return item.imgUrl;
				})
				console.log("urls",urlAll);
				uni.previewImage({
					//点击的图片 如不配置。每次都会从第一张图开始预览
					current,
					//预览图片 遍历出的图片地址
					urls:urlAll
				})
			}
		}
	}
</script>

<style lang="scss">
	.pics {
		height: 100%;
		display: flex;
		.left {
			view {
				height: 60px;
				line-height: 60px;
				color: #333;
				text-align: center;
				font-size: 30rpx;
				border-top: 1px solid #eee;
			}

			.active {
				background: $shop-color;
				color: #fff;
			}
		}
		.right{
			height: 100%;
			width: 520rpx;
			margin: 10rpx auto;
			.item{
				image{
					width: 520rpx;
					height: 520rpx;
					border-radius: 7px;
				}
				text{
					font-size: 30rpx;
					line-height: 60rpx;
				}
			}
		}
	}
</style>
