using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DentalFinal.Admin
{
    public partial class new_admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void tvAdminMenu_SelectedNodeChanged(object sender, EventArgs e)
        {

        }

        protected void lbtLogout_Click(object sender, EventArgs e)
        {
            if (Session["Admin"] != null)
            {
                FormsAuthentication.SignOut();
                Session["Admin"] = null;
                Session.Abandon();
                Session.RemoveAll();
                Session.Clear();
            }
            Response.Redirect("~/Admin/adminlogin.aspx");
        }
    }
}