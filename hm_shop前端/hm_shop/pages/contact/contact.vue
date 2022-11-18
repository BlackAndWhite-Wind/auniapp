<template>
	<view>
		<view class="concat">
			<image class="img" src="http://www.itcast.cn/2018czydz/images/gywmban.jpg"></image>
			<view class="info">
				<view>联系电话：<text @click="callPhone">1503603xxxx</text> 点击拨打</view>
				<view>地址：河南省郑州市xxxx</view>
			</view>
		</view>
		<!-- https://uniapp.dcloud.io/component/map.html -->
		<map class="map" :longitude="longitude" :enable-3D="true" :show-compass="true" :show-location="true"
			:latitude="latitude" :markers="markers" :scale="scale"></map>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				id: 0, // 使用 marker点击事件 需要填写id
				title: 'map', //点击时标注点名	
				longitude: 113.102268,
				latitude: 34.681268,
				// 缩放级别
				scale: 11,
				markers: [{
					longitude: 113.102268,
					latitude: 34.681268,
					iconPath: '../../static/icon/home-active.png',
					width: "30",
					hright: "30"
				}]

			}
		},
		methods: {
			// https://uniapp.dcloud.io/api/system/phone.html#makephonecall
			//点击电话拨打
			callPhone() {
				uni.makePhoneCall({
					phoneNumber: '1503603xxxx',
				})
			}
		}
	}
</script>

<style lang="scss">
	.concat {
		.img {
			width: 750rpx;
			height: 320rpx;
		}
	}

	.info {
		padding: 10rpx 20rpx;
		font-size: 30rpx;

		view {
			line-height: 60rpx;
			border-bottom: 1px solid #eee;
		}
	}

	.map {
		width: 750rpx;
		height: 750rpx;
	}
</style>
