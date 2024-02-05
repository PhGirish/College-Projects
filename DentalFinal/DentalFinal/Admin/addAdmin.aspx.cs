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
    public partial class addAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddAdmin_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\giriz\source\repos\DentalFinal\DentalFinal\App_Data\Database1.mdf;Integrated Security=True";

            SqlConnection connection = new SqlConnection(connectionString);

            connection.Open();

            SqlCommand cmd = new SqlCommand("INSERT INTO AdminUsers (UserName,Password) values (@value1, @value2)", connection);
            cmd.Parameters.AddWithValue("@value1", txtAuser.Text);
            cmd.Parameters.AddWithValue("@value2", txtApwd.Text);
            cmd.ExecuteNonQuery();

            connection.Close();
            lblMsg.Text = "Data inserted successfully";
        }
    }
}