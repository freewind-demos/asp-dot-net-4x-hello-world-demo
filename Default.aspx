<%-- 
    Default.aspx - 网站首页
    
    关键点说明：
    1. <%@ Page ... %> 是页面指令，告诉 ASP.NET 如何处理这个页面
       - Language="C#" 表示后端代码使用C#
       - AutoEventWireup="true" 表示自动绑定事件处理程序
       - CodeBehind 指定后端代码文件
       - Inherits 指定后端代码类
    
    2. runat="server" 是 WebForms 的核心特性
       - 带有这个属性的元素可以在服务器端访问和控制
       - form 标签必须带有 runat="server" 且 id="form1"，这是 WebForms 的要求
    
    3. asp: 开头的控件是 WebForms 服务器控件
       - 这些控件在服务器端可以被编程控制
       - 会自动转换为标准 HTML 发送给浏览器
--%>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HelloWorld.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hello World 示例</title>
    <%-- 引用外部样式表，使用相对路径 --%>
    <link href="Content/Site.css" rel="stylesheet" />
</head>
<body>
    <%-- form1 是必需的，且必须设置 runat="server" --%>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>请输入你的名字：</h2>
            <div>
                <%-- TextBox 是服务器端文本框控件 --%>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <%-- 
                    Button 是服务器端按钮控件
                    OnClick 指定点击事件处理程序，对应 Default.aspx.cs 中的方法
                --%>
                <asp:Button ID="btnSubmit" runat="server" Text="提交" OnClick="btnSubmit_Click" />
            </div>
        </div>
    </form>
</body>
</html> 