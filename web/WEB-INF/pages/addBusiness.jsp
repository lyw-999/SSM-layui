<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>新增界面</title>
    <script src="/layui-v2.5.6/layui/layui.js"></script>
    <link rel="stylesheet" href="/layui-v2.5.6/layui/css/layui.css">

    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>

  <body>
    <form> 
    <h1>新增业务</h1>
  业务类型:<select  id="sele" >
      <option value="">请选择</option>
    </select><br>
    排队号:<input type="text"  name=""  > <br>
    备注信息 <textarea name="" cols="30"  rows="10" ></textarea><br>
    <input type="button" value="确认添加">
    </form>

    <div>
      <select  id="heroselect" name="" >
        <option value="">请选择你的英雄</option>
        <option value="">疾风剑豪</option>
        <option value="">无双剑姬</option>
        <option value="">无极剑圣</option>
        <option value="">暗裔剑魔</option>
      </select><br>
    </div>
 
    <div>
     <h1> 葫芦兄弟</h1>
      <ul id="huluwa" >
        <li>葫芦爷爷</li>
        <li>葫芦大爹</li>
      </ul>

    </div>

  <script type="text/javascript">
    layui.use(['form' ,'jquery' ],function(args){

      var form = layui.form;
      var $ = layui.jquery;
       
  $(document).ready(function () {
    // 使用高级版的ajax axios 异步请求
    // 为给定 ID 的 user 创建请求
    axios.get('/type/selectAll')
          .then(function (response) { // ajax 中的success
               console.log(response.data.data);  // vue !!
                $("#sele").empty(); // 清空一下
               $.each(response.data.data, function(index, value) {
                $("#sele").append("<option value="+value.typeId+">"+value.typeName+"</option>")
     })

             })
             .catch(function (error) { // ajax 中的 error
               console.log(error);
           });


    // $.ajax({
    //   elem:'#test',
    //   url:'/type/selectAll',
    //   type:'POST',
    //   dataType:'JSON',
    //   success: function(res) {
    //     console.log(res);
    //     $.each(res.data, function(index, value) {
    //       $("#sele").append("<option value="+value.typeId+">"+value.typeName+"</option>")
    // })
    //
    // }
    // })

    //  jquery 的 数据遍历！！ $.each(数组, 方法(数组索引 ,具体的数组中的值){ 方法执行的体 })
    // 大括号 都是对象 对象都可以称为JSON
    // 中括号 都是数组(集合)
    // 中括号可以包含很多大括号 这个叫对象集合
    var  names = new Array();
    names.push("唐僧");
    names.push("悟空");
    names.push("八戒");
    names.push("沙僧");
    names.push("小白龙");
    console.log(names);
    $("#heroselect").empty(); // 清空一下
    //遍历  $.each(数组, 方法(数组索引 ,具体的数组中的值){ 方法执行的体 })
    $.each( names ,function (index , value){
      console.log(index)
      console.log(value)
      console.log("-----------")

      $("#heroselect").append("<option value="+">"+value+"</option>");
    })


      var  hulus = new Array();
      hulus.push("大娃");
      hulus.push("二娃");
      hulus.push("三娃");
      hulus.push("四娃");
      hulus.push("五娃");
      console.log(hulus);
      //$("#huluwa").empty(); // 清空一下
      $.each( hulus, function (index ,value) {
          console.log(index)
          console.log(value)
          $("#huluwa").append("<li>"+value+"</li>");
      })
  });
    })
  </script>
    </body> 
</html>
