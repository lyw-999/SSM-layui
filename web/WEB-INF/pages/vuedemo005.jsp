
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>第五个vue</title>

    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>
    <script src="//cdn.bootcss.com/vue-router/3.0.1/vue-router.min.js"></script>
    <script src="//cdn.bootcss.com/vuex/3.0.1/vuex.min.js"></script>
    <script src="//cdn.bootcss.com/axios/0.17.1/axios.min.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>

</head>
<body>
        <div id="app"  >
              请添加水果名称:<input type="text" placeholder="名称不能超过7个字符" v-bind:value="fruit.name">  字符长度是:
            <br>
            请添加水果价格:<input type="text"  >分<br>
            请添加水果数量:<input type="text" value="0" >个    <button value="-">-</button><input type="text" value="0" /><button value="+">+</button><br>
            自动计算水果价格: <span style="color: red" size="10"  v-model:value="total"> </span> 元 <br>
            请添加水果有无包装盒:<input type="radio">有   <input type="radio">没有 <br>
            请添加水果状态:
            <select v-model="selected" >
                <option v-for="stat in stats" v-bind:value="stat.id">{{stat.status}}</option>
            </select>
            <span>选中水果的状态是:{{selected}} </span>  <br>
            请添加水果口味(多选):<br>
            <input type="checkbox" value="" >酸甜<br>
            <input type="checkbox" value="" >酸<br>
            <input type="checkbox" value="" >甜<br>
            <input type="checkbox" value="" >非常甜<br>
            <input type="checkbox" value="" >究极甜<br>
            选中的口味代码
        </div>


        <script>

            var vm = new Vue({
                el:'#app',
                data:{
                    fruit:{
                        name:"小苹果",
                        price:2500, // vue是数据驱动的 什么是数据驱动 就是data的数据一改变 前端也进行改变
                        count:0 , //单价分 -- 显示给前端后 显示成元
                        total:fprice*fcount,
                    },
                    selected:'',
                    stats:[
                        {id:1, status:'新鲜',},
                        {id:2, status:'还好',},
                        {id:3, status:'有点坏了',}
                        ]
                },
            });

        </script>
</body>
</html>
