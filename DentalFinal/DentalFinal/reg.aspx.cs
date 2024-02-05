using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DentalFinal
{
    public partial class reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\giriz\source\repos\DentalFinal\DentalFinal\App_Data\Database1.mdf;Integrated Security=True";

            SqlConnection connection = new SqlConnection(connectionString);

            connection.Open();

            SqlCommand cmd = new SqlCommand("INSERT INTO register (fname,lname,contact,email,username,password,confirmPass) values (@value1, @value2, @value3,@value4,@value5,@value6,@value7)", connection);
            SqlCommand cmdo = new SqlCommand("INSERT INTO login (username,password) values (@value8,@value9)", connection);
            cmd.Parameters.AddWithValue("@value1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@value2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@value3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@value4", TextBox4.Text);
            cmd.Parameters.AddWithValue("@value5", TextBox5.Text);
            cmd.Parameters.AddWithValue("@value6", TextBox6.Text);
            cmd.Parameters.AddWithValue("@value7", TextBox7.Text);
            cmdo.Parameters.AddWithValue("@value8", TextBox5.Text);
            cmdo.Parameters.AddWithValue("@value9", TextBox6.Text);
            cmd.ExecuteNonQuery();
            cmdo.ExecuteNonQuery();

            connection.Close();
            lblMessage.Text = "Data inserted successfully";
        }
    }
}