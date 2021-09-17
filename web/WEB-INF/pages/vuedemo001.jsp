
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
      <script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>
        <script src="//cdn.bootcss.com/vue-router/3.0.1/vue-router.min.js"></script>
        <script src="//cdn.bootcss.com/vuex/3.0.1/vuex.min.js"></script>
        <script src="//cdn.bootcss.com/axios/0.17.1/axios.min.js"></script>
    <title>第一个 vue demo</title>
</head>
    <body>
    <div>
        学习 插值表达式 {{}}
        vue 常用在页面项目中 什么叫做单个项目 常用于手机移动端
        指的是整个项目只有一个界面 通过锚点来跳转 没有 a标签
        这个锚点的跳转叫做  路由.
        优点: 都是 html 运行代码流畅  可以有很多的组件可以重复使用
        缺点: 不利于seo 百度的收录

    </div>
                    <h2>讲解 jquery 和我们 vue的不同 </h2>
                    <div>
                        jquery: 他是dom的驱动 所有看到页面都要 一行一行的把代码写出来 不是自动的 是手动的.
                        <h3 id="jq-hw">
                        //<%--  对比一下 在div中插入数据 你好世界--%>
                        </h3>
                    </div>
     <%--  jq的思想 找到的名称是idxxx的DOM  给他添加数据--%>
     <%--  如果我想改变显示效果 改成你好地球 需要改变jq的代码--%>
     <%--  那么比较繁琐 因为你好世界 没有存入统一的变量--%>
                <div id="app">
                    vue 因为是单页面的 所以必须只有一个根标签 以上的好   和div 都不归vue 负责 <br>
                    插值表达式 1.可以直接调用 js中的方法的
                             2. 它也可以进行计算
                             3. 可以用+号 拼接 就是和加法计算不同
                             4. 插值表达式 显示 对象的格式是 xxx.yy
                             5. 插值表达式 可以做三木(三元) 运算 非常非常重要
                    <h2>
                        {{sayHello}}<br>
                        {{sayHello}}的长度是  {{sayHello.length}}<br>
                        {{sayEatting}}<br>
                        {{lightLine}}<br>
                        {{apple.pname}}的价格是 {{apple.price / 1000}} 元/斤<br>
                        {{apple.pname}}的价格是 {{apple.price +'' + 1000}} 元/斤<br>
                        当前{{apple.pname}}的价格我 {{apple.price >2.5 ? '太贵了买不起算你狠' : '好便宜给我买真不错'}}  <br>
                        <div v-if="apple.price/1000 > 2.5">
                            <span style='color: red' >太贵了买不起算你狠</span>
                        </div>

                        <div v-else-if="apple.price/1000 > 2 && apple.price/1000 <= 2.5">
                            <span style='color: yellow' >还可以我考虑一下</span>
                        </div>

                        <div v-else>
                            <span style='color: dodgerblue' >好便宜给我买真不错</span>
                        </div>

                    <%--通过vue的插值表达式 那么知道 vue的核心就是 把数据显示到前端--%>
                    <%--如果只是用 插值表达式 显示数据 那么他的格式就只有上面四种--%>
                        <%--如果想要达到效果更加强的效果那么插值表达式是不能够满足的 所以就有新的方式 叫做指令--%>
                        <%--因为前端界面是html的 插值表达式他只能对文本信息做出渲染 没有对标签做出数据的增强--%>
                        <%--上面的 改变颜色 不太好做改变 于是用到了指令 指令是作用在html标签上的--%>
                        <%--指令 是带有v-前缀的特殊 attribute 指令 attribute 的值预期是单个JavaScript表达式--%>
                        <%-- 学习下面的 指令  v-text v-html--%>
                        <%-- v-text 其实就是插值表达式  优点  可以显示出 data数据中的所有数据--%>
                        <span v-text="apple.pname"> </span>的价格是 {{apple.price / 100}}<br>
                        <span v-text="vtext"></span><br>   <%--    v-text 不编译文本中的html信息--%>
                        <span v-html="vhtml"></span><br>   <%--    v-html 编译文本中的html信息  一般这个额用的多 一般用来 年龄多少岁改变颜色--%>
                     <span >{{vtext}}</span><br>   <%--  插值表达式也不编译文本中的html信息--%>
                        <span v-pre>{{vtext}}</span><br><%--  正常显示 v-pre不需要编译--%>
                    </h2>
                </div>

    <script>
        // 使用 jquery
        $(function () {
            $("#jq-hw").text("你好世界")  // jquery有一个难题 数据没有统一的地方存储
        })

        //学习 vue vue和java很像
        var vm = new Vue({
            // bew vue()括弧中 一般放的都是{} 而大括号就是 json对象 k-v结构
            // 这个大括弧中 放的就是 vue的选项 选项在 vue官网可以看 有多少种
            el:'#app' // 把html中的 div id为app的 dom元素 作为了挂载点
                    // 什么叫做挂载点: vue 是以数据驱动的  new vue中都是诞生数据
                    // 有了数据 就需要一个dom元素显示数据
            ,data:{
                sayHello:'你好世界',
                sayEatting:'加油干饭人',
                lightLine:'发射动感光波',
                apple:{
                    pid:15,
                    pname:"红富士", // vue是数据驱动的 什么是数据驱动 就是data的数据一改变 前端也进行改变
                    price:2500  //单价分 -- 显示给前端后 显示成元
                },
                vtext:'<h1>你看看我是标题吗</h1>',
                vhtml:'<h1>你看看我是标题吗</h1>',
            }

        });

    </script>
</body>
</html>
