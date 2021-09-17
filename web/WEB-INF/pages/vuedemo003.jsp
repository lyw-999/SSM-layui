
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
      <script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>
        <script src="//cdn.bootcss.com/vue-router/3.0.1/vue-router.min.js"></script>
        <script src="//cdn.bootcss.com/vuex/3.0.1/vuex.min.js"></script>
        <script src="//cdn.bootcss.com/axios/0.17.1/axios.min.js"></script>
    <title>第三个 vue demo</title>

</head>
<body>


    <div id="app">
            <%--v-on 后面接的是 html中的事件   而 v-bind 后面接的是 html中的属性--%>
            <input   type="button" value="点击显示葫芦娃列表"  v-on:click= "showhlw()">
                <ul>
                    <li v-for="(item,index) in hulus" :key="hulus.id">{{item.name}}</li>

                </ul>

                <select   v-model="selected"  >
                    <option  v-for="(item,index) in hulus"  v-bind:value="item.skill" >{{item.name}}</option>
                </select>
                <span>能力:{{selected}}</span>  <br>

                <select  v-model="hulusSkill" v-on:change="selectWaWa()"  >
                    <option  v-for="(item,index) in hulus"  :value="item.skill">{{item.name}}</option>
                </select>

                <span>能力:{{hulusSkill}}</span>  <br>
            <%--v-show 如果为false 那么前端界面是显示代码的   v-show 不支持 <template> 元素的--%>
                <span v-show="ok">你看的到我吗</span>  <br>

    </div>

    <script>
            var vm = new Vue({
                el:'#app',
                data:{
                    selected: '',//select选中的值
                    hulus:[],
                    hulusSkill:'',
                    ok:true
                },
                methods: {
                    showhlw:function(){
                    var arr = [{
                        id:1,
                        name:'大娃',
                        skill:'变大',
                    },
                        {
                            id:2,
                            name:'二娃',
                            skill:'千里眼顺风耳',
                        },
                        {
                            id:3,
                            name:'三娃',
                            skill:'铜头铁臂',
                        },
                        {
                            id:4,
                            name:'四娃',
                            skill:'喷水',
                        },
                        {
                            id:2,
                            name:'五娃',
                            skill:'喷火',
                        }]
                        this.hulus=arr
                },
                    selectWaWa:function (hulusSkill) {
                        console.log("选中了一只葫芦娃"+hulusSkill)
                    }
            }
            });


    </script>


</body>
</html>
