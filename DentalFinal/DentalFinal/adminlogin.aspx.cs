using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DentalFinal.Admin
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnAdlogin_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\giriz\source\repos\DentalFinal\DentalFinal\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();

            String q = "select * from login where username ='" + txtUnameAd.Text + "' and password='" + txtPassAd.Text + "' ";
            SqlCommand cmd = new SqlCommand(q, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            Label1.Visible = false;
            Label1.Visible = false;
            int count = 0;
            while (dr.Read())
            {
                ++count;
            }
            dr.Close();

            if (count == 0)
            {
                Label1.Visible = true;
                Label1.Text = "Either username or password is incorrect.Please try again.";
            }
            else
            {
                Session["username"] = txtUnameAd.Text;
                Response.Redirect("~/Admin/adminHome.aspx");
            }
            
        }

    }
}