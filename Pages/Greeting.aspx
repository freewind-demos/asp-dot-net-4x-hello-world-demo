<%-- 
    Greeting.aspx - 问候页面
    
    关键点说明：
    1. 与 Default.aspx 类似的页面结构
    2. 使用 Label 控件显示动态内容
    3. 使用 HyperLink 控件创建返回链接
    
    特殊语法：
    - "~/" 表示网站根目录，这是 ASP.NET 的特殊路径语法
--%>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Greeting.aspx.cs" Inherits="HelloWorld.Pages.Greeting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>问候语</title>
    <%-- 因为在子文件夹中，所以使用 ../ 回到上级目录 --%>
    <link href="../Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="greeting">
            <%-- Label 控件用于显示服务器端设置的文本 --%>
            <h1><asp:Label ID="lblGreeting" runat="server"></asp:Label></h1>
            <%-- 
                HyperLink 是服务器端链接控件
                NavigateUrl="~/" 使用网站根路径语法
            --%>
            <asp:HyperLink ID="lnkBack" runat="server" NavigateUrl="~/Default.aspx">返回首页</asp:HyperLink>
        </div>
    </form>
</body>
</html> 