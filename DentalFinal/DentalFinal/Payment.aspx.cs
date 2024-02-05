using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace DentalFinal
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

     

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\giriz\source\repos\DentalFinal\DentalFinal\App_Data\Database1.mdf;Integrated Security=True";

            SqlConnection connection = new SqlConnection(connectionString);

            connection.Open();
            
            SqlCommand cmd = new SqlCommand("INSERT INTO Payment (card_number,name) values (@value2, @value3)", connection);
            
            cmd.Parameters.AddWithValue("@value2", card_name.Text);
            cmd.Parameters.AddWithValue("@value3", name.Text);
            
            
            cmd.ExecuteNonQuery();
          

            connection.Close();
            Response.Redirect("succcess.aspx");
        }
    }
}