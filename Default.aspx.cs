/*
    Default.aspx.cs - 首页的后端代码文件
    
    关键点说明：
    1. 这是一个分部类（partial class），与 Default.aspx 自动生成的代码共同组成完整的类
    2. 继承自 System.Web.UI.Page，这是所有 WebForms 页面的基类
    3. 包含页面事件处理程序和业务逻辑
    
    主要事件：
    - Page_Load：页面加载时触发
    - btnSubmit_Click：提交按钮点击时触发
*/

using System;

namespace HelloWorld
{
    public partial class Default : System.Web.UI.Page
    {
        // 页面加载事件处理程序
        // sender: 触发事件的控件
        // e: 事件参数
        protected void Page_Load(object sender, EventArgs e)
        {
            // 这里是空的，因为页面加载时不需要特殊处理
        }

        // 提交按钮点击事件处理程序
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // 获取文本框中的名字
            string name = txtName.Text;
            
            // 重定向到问候页面
            // 1. Server.UrlEncode 对名字进行 URL 编码，防止特殊字符导致问题
            // 2. 使用字符串内插($)构建URL，将名字作为查询参数传递
            Response.Redirect($"Pages/Greeting.aspx?name={Server.UrlEncode(name)}");
        }
    }
} 