using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabWork8
{
    public partial class ParamCache : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelCurrentTime.Text = DateTime.Now.ToLongTimeString();
        }

        private static string GetActualCurrentTime(HttpContext context)
        {
            return DateTime.Now.ToLongTimeString();
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            Response.Redirect($"~/ParamCache?testParam={TextBox.Text}");
        }
    }
}