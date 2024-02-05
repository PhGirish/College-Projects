using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DentalFinal
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_feedbake_submit_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Feedback send Successfully..')</script>");
        }
    }
}