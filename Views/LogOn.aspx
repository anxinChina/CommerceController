<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogOn.aspx.cs" Inherits="Views_LogOn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        div.content{
            max-width:400px;
            min-width:200px;
            width:80%;
            border:1px solid #eee;
            padding:20px;
            border-radius:16px;
            box-shadow:2px 2px 10px #808080;
            display:none;
        }
        div.content>table{
            width:100%;
        }
        div.content>table a.forgetpwd:link,div.content>table a.forgetpwd{
            font-size:8px;
            font-weight:200;
            color:#808080;
            margin-top:5px;
        }

        button.logon{
            width:80%;
            text-align:center;
        }

        td.text{
            word-wrap:break-word;
            word-break:normal;
            text-align:right;
        }
    </style>
</head>
<body>
    <form id="ContentForm" runat="server">
        <div class="content">
            <table>
                <tr>
                    <td colspan="2">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="text">
                        <b>账户：</b>
                    </td>
                    <td>
                        <input type="text" class="form-control" placeholder="用户名/手机号" id="user"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="text">
                        <b>密码：</b>
                    </td>
                    <td>
                        <input type="password" class="form-control" placeholder="用户名/手机号" id="pwd"/>
                        <a href="" class="forgetpwd">忘记密码？</a>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;">
                        <button type="button" class="btn btn-primary logon">登录</button>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;font-size:12px;">
                        <span>没有帐号？去<a href="">注册</a></span>
                    </td>
                </tr>
            </table>
        </div>
    </form>
    <script src="../JavaScripts/bootstrapbasic.js"></script>
    <script type="text/javascript">
        window.onload = function () {
            $("div.content").css({
                "margin-top": (document.documentElement.clientHeight - $("div.content").height()) / 2 + "px",
                "margin-left": (document.documentElement.clientWidth - $("div.content").width()) / 2 + "px"
            }).show();
        };
    </script>
</body>
</html>
