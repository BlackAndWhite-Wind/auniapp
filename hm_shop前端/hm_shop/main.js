import App from './App'

// #ifndef VUE3
import Vue from 'vue'

// 导入封装远程调取的api请求
import { myRequest } from './util/api.js'

// vue全局挂载封装的api请求
Vue.prototype.$myRequest = myRequest


Vue.config.productionTip = false
App.mpType = 'app'
const app = new Vue({
    ...App
})
app.$mount()
// #endif

// #ifdef VUE3
import { createSSRApp } from 'vue'
export function createApp() {
  const app = createSSRApp(App)
  return {
    app
  }
}
// #endif