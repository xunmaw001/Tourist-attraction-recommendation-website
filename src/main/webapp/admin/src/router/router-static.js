import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import news from '@/views/modules/news/list'
    import jingdianxinxi from '@/views/modules/jingdianxinxi/list'
    import jingdiangoupiao from '@/views/modules/jingdiangoupiao/list'
    import discussjiudianxinxi from '@/views/modules/discussjiudianxinxi/list'
    import jiudianxinxi from '@/views/modules/jiudianxinxi/list'
    import storeup from '@/views/modules/storeup/list'
    import users from '@/views/modules/users/list'
    import forum from '@/views/modules/forum/list'
    import jingdianfenlei from '@/views/modules/jingdianfenlei/list'
    import yonghu from '@/views/modules/yonghu/list'
    import chat from '@/views/modules/chat/list'
    import discussjingdianxinxi from '@/views/modules/discussjingdianxinxi/list'
    import jiudianfenlei from '@/views/modules/jiudianfenlei/list'
    import jiudianyuding from '@/views/modules/jiudianyuding/list'
    import config from '@/views/modules/config/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
          ,{
	path: '/news',
        name: '旅游资讯',
        component: news
      }
          ,{
	path: '/jingdianxinxi',
        name: '景点信息',
        component: jingdianxinxi
      }
          ,{
	path: '/jingdiangoupiao',
        name: '景点购票',
        component: jingdiangoupiao
      }
          ,{
	path: '/discussjiudianxinxi',
        name: '酒店信息评论',
        component: discussjiudianxinxi
      }
          ,{
	path: '/jiudianxinxi',
        name: '酒店信息',
        component: jiudianxinxi
      }
          ,{
	path: '/storeup',
        name: '我的收藏管理',
        component: storeup
      }
          ,{
	path: '/users',
        name: '管理员',
        component: users
      }
          ,{
	path: '/forum',
        name: '论坛管理',
        component: forum
      }
          ,{
	path: '/jingdianfenlei',
        name: '景点分类',
        component: jingdianfenlei
      }
          ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
          ,{
	path: '/chat',
        name: '客服管理',
        component: chat
      }
          ,{
	path: '/discussjingdianxinxi',
        name: '景点信息评论',
        component: discussjingdianxinxi
      }
          ,{
	path: '/jiudianfenlei',
        name: '酒店分类',
        component: jiudianfenlei
      }
          ,{
	path: '/jiudianyuding',
        name: '酒店预订',
        component: jiudianyuding
      }
          ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
        ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
