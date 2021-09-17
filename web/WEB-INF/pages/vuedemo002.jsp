
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
      <script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>
        <script src="//cdn.bootcss.com/vue-router/3.0.1/vue-router.min.js"></script>
        <script src="//cdn.bootcss.com/vuex/3.0.1/vuex.min.js"></script>
        <script src="//cdn.bootcss.com/axios/0.17.1/axios.min.js"></script>
    <title>第二个 vue demo</title>
</head>
<body>

    <div id="app">
            <%-- vue 需要一个 根目录标签 %-->
            <%--讲解一个概念 双向绑定 数据和页面的展示的数据效果 是一起的 保持一致的--%>
            <%--当vue中data的数据发生了改变 那么展示的效果也改变--%>
                姓名 以前写的  <input type="text" value="李小狼">  <br>
                <%-- ue的核心是 把数据渲染到 html中 分为 标签和 文本  那么文本就是 插值表达式--%>
                姓名  {{name}}<br>
                <%--下面就是渲染到标签中--%>
                <%--v-bind 是绑定标签的属性  一经过绑定 数据就是动态的了 就要写 data的key--%>
                vue 姓名     <input type="text" v-bind:value="name"><br>
                vue 姓名   v-bind的缩写  <input type="text"  :value="name"><br>
                <%--以上是数据的单项绑定  v-model是v-bind的升级版 其本质是一个语法糖 --%>
                <%--java 中的for循环就是一个语法糖 for循环的本质就是while循环 语法糖 就是简化了代码的书写 --%>
                vue 姓名   双向绑定 <input type="text"  v-model:value="name"><br>
                <%--vue -model 绑定作用在四个范围上  input 标签 select 标签 textarea标签  components 组件--%>

                <%-- 只渲染一次的指令 v-ince--%>
                姓名 :   <span v-once>{{name}}</span >
    </div>
    <script>
            var vm = new Vue({
                el:'#app',
                data:{
                    name:'李小狼11'
                }


            });


    </script>
</body>
</html>
