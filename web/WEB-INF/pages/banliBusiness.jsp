
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <style type="text/css">
        label{
            color:red;
        }
        select{
            width: 150px;
            height: 25px;
        }
    </style>
<body>
<h2>业务详情</h2>

<form action="" method="post">
    <table>
            <tr>
                <td>业务序号：</td>
                <td><input type="text" name="bId" ></td>
            </tr>
            <tr>
                <td>排队号：</td>
                <td><input type="text" name="bNum" ></td>
            </tr>
            <tr>
                <td>业务类型：</td>
                <td><input type="text" name="bType"></td>
            </tr>
            <tr>
                <td>备注信息：</td>
                <td><textarea name="bMark" > </textarea> </td></td>
            </tr>

            <tr>
                <td>详情名称：</td>
                <td><input type="text" name="bName"></td>
            </tr>
            <tr>
                <td>办理人：</td>
                <td><input type="text" name="bdPerson"></td>
            </tr>
            <tr>
                <td><input type="submit" value="确认添加" ></td>
            </tr>

    </table>
</form>
            <script>


            </script>
</body>
</html>
