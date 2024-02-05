using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DentalFinal
{
    public partial class login : System.Web.UI.Page
    {
        String username;
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\giriz\source\repos\DentalFinal\DentalFinal\App_Data\Database1.mdf;Integrated Security=True";
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();

                String q = "select * from login where username ='" + TextBox1.Text + "' and password='" + TextBox2.Text + "' ";
                SqlCommand cmd = new SqlCommand(q, conn);
                SqlDataReader dr = cmd.ExecuteReader();
                lblMessage.Visible = false;
                lblMessage0.Visible = false;
                int count = 0;
                while (dr.Read())
                {
                    ++count;
                }
                dr.Close();

                if (count == 0)
                {
                    lblMessage0.Visible = true;
                    lblMessage0.Text = "Either username or password is incorrect.Please try again.";
                }
                else
                {
                    lblMessage.Visible = true;
                    Session["username"] = TextBox1.Text;
                    lblMessage.Text = "Successfull";
                    Response.Redirect("homepage.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            
        }
    }
}