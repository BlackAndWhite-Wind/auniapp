// 定义请求后台接口地址前缀  注意此处设置为当前局域网ip前缀，否则小程序请求接口会失败
const BASE_URL = "http://192.168.1.7:8090"

//get  post封装
export const myRequest = (options) => {
	return new Promise((resolve, reject) => {
		uni.request({
			url: BASE_URL + options.url,
			method: options.method || 'GET', //没有参数则为get请求
			data: options.data || {}, //如data不传递参数为空对象
			success: (res) => {
				if (res.statusCode != 200) {
					//显示消息提示框 https://uniapp.dcloud.io/api/ui/prompt.html
					return uni.showToast({
						icon: "error",
						title: "获取数据失败"
					})
				}
				resolve(res);
			},
			
			fail: (err) => {
				uni.showToast({
					icon: "error",
					title: "请求接口失败"
				})
				reject(err);
			}
		})
	})
}

// 请求示例
// myRequest({
// 	url: '/api/getlunbo',
// 	method: 'POST',
// 	data: {

// 	}
// })
