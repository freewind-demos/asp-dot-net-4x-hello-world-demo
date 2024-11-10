using System;

namespace HelloWorld.Pages
{
    public partial class Greeting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // 只在页面首次加载时执行，避免回发时重复处理
            if (!IsPostBack)
            {
                // 从URL查询字符串中获取名字参数
                string name = Request.QueryString["name"];
                
                // 检查名字是否为空
                if (!string.IsNullOrEmpty(name))
                {
                    // 设置问候语
                    // Server.HtmlEncode 确保输出安全，防止XSS攻击
                    lblGreeting.Text = $"Hello, {Server.HtmlEncode(name)}！";
                }
                else
                {
                    // 如果没有名字参数，返回首页
                    Response.Redirect("Default.aspx");
                }
            }
        }
    }
} 