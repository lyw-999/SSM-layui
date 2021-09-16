
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>模拟一个单项目   模拟锚点</title>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
</head>
<body>
    <div style="width: 800px; height: 1024px; border: red solid 1px">
        添加业务 <a href="addBusiness"></a> <br>
        业务列表
    </div>
        <a href="#addBusiness" name="addBusiness">
    <div style="width: 800px; height: 1024px; border: dodgerblue solid 1px">
        <h1>新增业务</h1>
        <form>
            业务类型:<select  id="sele" name="" >
            <option value="1">信用卡</option>
            <option value="2">储蓄卡</option>
            <option value="3">VIP金卡</option>
        </select>   <br>

            排队号:<input type="text"  name=""  > <br>
            备注信息 <textarea name="" cols="30"  rows="10" ></textarea><br>
            <input type="button" value="确认添加">
        </form>
    </div>
        </a>
            

</body>
</html>
