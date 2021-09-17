
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
      <script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>
        <script src="//cdn.bootcss.com/vue-router/3.0.1/vue-router.min.js"></script>
        <script src="//cdn.bootcss.com/vuex/3.0.1/vuex.min.js"></script>
        <script src="//cdn.bootcss.com/axios/0.17.1/axios.min.js"></script>
        <script src="https://unpkg.com/axios/dist/axios.min.js"></script>

</head>
<body>
        <div id="app">
            <form action="https://www.baidu.com" method="post" @Submit.prevent="onSubmit" id="myForm">
                账号: <input type="text" name="adminName" > <br>
                密码: <input type="text" name="adminPwd"  > <br>
                <input type="submit" value="登录">    <br>
            </form>

        </div>

        <script>
            var vm = new Vue({
                el:'#app',
                methods:{
                    onSubmit:function(e){
                        //只要是时间 就会有e
                        console.log(e)
                        console.log(e.target) // vue的事件 可以通过e.target 拿到标签中的 dmeo元素

                        // 发送 POST 请求
                        axios({
                            method: 'post',
                            url: '/https://www.baidu.com',
                            data: {
                                adminName: 'adminName',
                                adminPwd: 'adminPwd'
                            }

                        });

                        var form = document.getElementById('myForm')
                        console.log(form)
                        //拿取 form表单中的数据
                       // var formData = new FormData(form);
                        var formData = new FormData(e.target);
                        console.log(formData.get("adminName"))
                        return false;
                    }
                }
            });


        </script>
</body>
</html>
